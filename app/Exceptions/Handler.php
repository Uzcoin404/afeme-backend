<?php

namespace App\Exceptions;

use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Throwable;

class Handler extends ExceptionHandler
{
    /**
     * A list of the exception types that are not reported.
     *
     * @var array<int, class-string<Throwable>>
     */
    protected $dontReport = [
        //
    ];

    /**
     * A list of the inputs that are never flashed for validation exceptions.
     *
     * @var array<int, string>
     */
    protected $dontFlash = [
        'current_password',
        'password',
        'password_confirmation',
    ];

    /**
     * Register the exception handling callbacks for the application.
     *
     * @return void
     */
    public function register()
    {
        $this->reportable(function (Throwable $e) {
            // Log all exceptions
            if (app()->bound('sentry')) {
                app('sentry')->captureException($e);
            }
        });

        // Custom handling for specific exceptions
        $this->renderable(function (Throwable $e, $request) {
            // Handle API requests with JSON response
            if ($request->expectsJson()) {
                return response()->json([
                    'success' => false,
                    'message' => $this->exceptionMessage($e),
                    'error' => app()->environment('production') ? 'An error occurred' : get_class($e),
                ], $this->exceptionStatus($e));
            }
        });
    }

    /**
     * Get the appropriate HTTP status code for the exception.
     */
    private function exceptionStatus(Throwable $e)
    {
        if (method_exists($e, 'getStatusCode')) {
            return $e->getStatusCode();
        }
        
        if ($e instanceof \Illuminate\Validation\ValidationException) {
            return 422;
        }
        
        if ($e instanceof \Symfony\Component\HttpKernel\Exception\NotFoundHttpException) {
            return 404;
        }

        return 500;
    }

    /**
     * Get user-friendly error message.
     */
    private function exceptionMessage(Throwable $e)
    {
        if ($e instanceof \Illuminate\Validation\ValidationException) {
            return 'Validation failed';
        }

        if (app()->environment('production')) {
            return 'An error occurred. Please try again later.';
        }

        return $e->getMessage();
    }
}
