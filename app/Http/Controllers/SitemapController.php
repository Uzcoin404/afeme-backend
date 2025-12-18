<?php

namespace App\Http\Controllers;

use Illuminate\Routing\Controller as BaseController;
use App\Models\Product;

class SitemapController extends BaseController
{
  public function index()
  {
    $products = Product::select('id', 'updated_at')->cursor();

    return response()
      ->view('sitemap', compact('products'))
      ->header('Content-Type', 'application/xml');
  }
}
