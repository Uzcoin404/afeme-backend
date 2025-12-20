<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Site\PageController;
use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\Admin\RoleController;
use App\Http\Controllers\Admin\RegionController;
use App\Http\Controllers\Admin\CitieController;
use App\Http\Controllers\Admin\SaleController;
use App\Http\Controllers\Admin\RepairController;
use App\Http\Controllers\Admin\MaterialController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\ClientController;
use App\Http\Controllers\Admin\SliderController;
use App\Http\Controllers\Admin\AddressController;
use App\Http\Controllers\Admin\NetworkController;
use App\Http\Controllers\Admin\PartnerController;
use App\Http\Controllers\Admin\PartnericonController;
use App\Http\Controllers\Admin\LogoController;
use App\Http\Controllers\Admin\AdvertisementController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Api\MessageController;
use App\Http\Controllers\SitemapController;
use Illuminate\Support\Facades\Response;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/admin', [AdminController::class, 'dashboard'])->middleware(['auth'])->name('dashboard');

Route::get('/', [PageController::class, 'index'])->name('/');

Route::prefix('admin')->middleware('auth')->name('admin.')->group(function () {

    Route::resource('users', UserController::class);

    Route::resource('roles', RoleController::class);

    Route::resource('regions', RegionController::class);

    Route::resource('cities', CitieController::class);

    Route::resource('sales', SaleController::class);

    Route::resource('repairs', RepairController::class);

    Route::resource('materials', MaterialController::class);

    Route::resource('categories', CategoryController::class);

    Route::resource('clients', ClientController::class);

    Route::resource('sliders', SliderController::class);

    Route::resource('addresses', AddressController::class);

    Route::resource('networks', NetworkController::class);

    Route::resource('partners', PartnerController::class);

    Route::resource('partnericons', PartnericonController::class);

    Route::resource('logos', LogoController::class);

    Route::resource('advertisements', AdvertisementController::class);

    Route::resource('products', ProductController::class);
});

Route::resource('chat', MessageController::class);

Route::get('sitemap.xml', [SitemapController::class, 'index']);

Route::get('robots.txt', function () {
    $sitemapUrl = url('sitemap.xml');

    $content = "User-agent: *\n";
    $content .= "Allow: /\n\n";
    $content .= "Sitemap: $sitemapUrl";

    return Response::make($content, 200, [
        'Content-Type' => 'text/plain',
        'X-Robots-Tag' => 'noindex', // no search engine indexing
    ]);
});

require __DIR__ . '/auth.php';
