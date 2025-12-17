# SEO & Production Optimization Guide

## SEO Configuration

### 1. Robots.txt
Create `public/robots.txt` with proper crawling rules:
```
User-agent: *
Allow: /
Disallow: /admin
Disallow: /api/
Allow: /api/client

Sitemap: https://yourdomain.com/sitemap.xml
```

### 2. Sitemap.xml Route
Add this to `routes/web.php`:
```php
Route::get('/sitemap.xml', function () {
    $xml = '<?xml version="1.0" encoding="UTF-8"?>';
    $xml .= '<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">';
    
    // Add static pages
    $urls = [
        ['loc' => url('/'), 'lastmod' => now()->toAtomString(), 'changefreq' => 'daily', 'priority' => '1.0'],
    ];
    
    // Add products
    \App\Models\Product::published()->get()->each(function($product) use (&$urls) {
        $urls[] = [
            'loc' => url("/product/{$product->slug}"),
            'lastmod' => $product->updated_at->toAtomString(),
            'changefreq' => 'weekly',
            'priority' => '0.8'
        ];
    });
    
    foreach ($urls as $url) {
        $xml .= '<url>';
        $xml .= '<loc>' . htmlspecialchars($url['loc']) . '</loc>';
        $xml .= '<lastmod>' . $url['lastmod'] . '</lastmod>';
        $xml .= '<changefreq>' . $url['changefreq'] . '</changefreq>';
        $xml .= '<priority>' . $url['priority'] . '</priority>';
        $xml .= '</url>';
    }
    
    $xml .= '</urlset>';
    
    return response($xml, 200)->header('Content-Type', 'application/xml');
})->name('sitemap');
```

### 3. Meta Tags in Frontend
Ensure your frontend includes:
```html
<!-- Essential Meta Tags -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="AFEME - Your platform description">
<meta name="keywords" content="relevant, keywords, here">
<meta name="author" content="AFEME">

<!-- Open Graph (Social Media) -->
<meta property="og:type" content="website">
<meta property="og:title" content="AFEME">
<meta property="og:description" content="Platform description">
<meta property="og:image" content="https://yourdomain.com/og-image.jpg">
<meta property="og:url" content="https://yourdomain.com">

<!-- Twitter Card -->
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="AFEME">
<meta name="twitter:description" content="Platform description">
<meta name="twitter:image" content="https://yourdomain.com/og-image.jpg">

<!-- Canonical URL -->
<link rel="canonical" href="https://yourdomain.com">

<!-- Favicon -->
<link rel="shortcut icon" href="/favicon.ico">
<link rel="icon" type="image/png" href="/favicon-16x16.png" sizes="16x16">
<link rel="icon" type="image/png" href="/favicon-32x32.png" sizes="32x32">

<!-- Search Engine Verification -->
<meta name="google-site-verification" content="YOUR_GOOGLE_VERIFICATION_CODE">

<!-- Preload Critical Resources -->
<link rel="preload" href="/fonts/main.woff2" as="font" type="font/woff2" crossorigin>
```

### 4. Structured Data (JSON-LD)
Add to your main page or product pages:
```html
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Organization",
  "name": "AFEME",
  "url": "https://yourdomain.com",
  "logo": "https://yourdomain.com/logo.png",
  "description": "AFEME Platform Description",
  "sameAs": [
    "https://facebook.com/afeme",
    "https://twitter.com/afeme",
    "https://instagram.com/afeme"
  ]
}
</script>
```

## Performance Optimization

### 1. Server-Side Caching
```php
// In your controllers
return Cache::remember('products-list', now()->addHours(24), function () {
    return Product::with('images', 'reviews')->paginate(20);
});
```

### 2. API Response Caching
```php
// In config/cache.php, use Redis for faster access
'default' => env('CACHE_DRIVER', 'redis'),
'ttl' => 3600, // 1 hour
```

### 3. Database Query Optimization
- Always use `with()` for eager loading
- Use `select()` to fetch only needed columns
- Add database indexes for frequently queried fields
- Monitor slow queries in logs

### 4. Asset Optimization
```php
// In webpack.mix.js or vite.config.js
.minify()
.version()
.sourceMaps(false, 'source-map') // Production
```

## Security Headers (Already Configured)

All security headers are added via `SecurityHeaders` middleware:
- ✅ X-Content-Type-Options: nosniff
- ✅ X-XSS-Protection: 1; mode=block
- ✅ X-Frame-Options: SAMEORIGIN
- ✅ Content-Security-Policy (configured)
- ✅ Strict-Transport-Security (HSTS)
- ✅ Referrer-Policy: strict-origin-when-cross-origin
- ✅ Permissions-Policy (geolocation, microphone, camera disabled)

## API Documentation

### Authentication
All API requests (except login/register) require Bearer token:
```
Authorization: Bearer {token}
```

### Rate Limiting
API endpoints are rate limited to prevent abuse:
- Standard endpoints: 60 requests per minute per IP
- Auth endpoints: 5 attempts per minute

### Response Format
```json
{
  "success": true,
  "data": { ... },
  "message": "Optional message",
  "meta": {
    "pagination": { "total": 100, "per_page": 20, "current_page": 1 }
  }
}
```

### Error Handling
```json
{
  "success": false,
  "message": "Error description",
  "errors": {
    "field_name": ["Error message"]
  }
}
```

## Monitoring & Analytics

### 1. Setup Google Analytics 4
Add to frontend `index.html`:
```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_MEASUREMENT_ID');
</script>
```

### 2. Error Tracking (Sentry)
```php
// In bootstrap/app.php
if (app()->environment('production')) {
    \Sentry\init(['dsn' => env('SENTRY_LARAVEL_DSN')]);
}
```

### 3. Performance Monitoring
- Monitor API response times
- Track database query times
- Monitor server resources (CPU, memory, disk)
- Setup alerts for critical errors

## Mobile Optimization

- ✅ Responsive design (handled by frontend)
- ✅ Mobile-friendly API
- ✅ Fast loading times (< 3 seconds)
- ✅ Viewport meta tag configured
- ✅ Touch-friendly interface

## GDPR & Privacy Compliance

### Privacy Policy Requirements
- [ ] Data collection disclosure
- [ ] Cookie consent banner
- [ ] Data storage location
- [ ] User rights (access, delete, export)

### Implementation
```php
// Example: GDPR-compliant user deletion
Route::delete('/api/user/{id}', function(User $user) {
    \Log::info("User deletion request: {$user->id}");
    
    // Archive user data before deletion
    UserArchive::create($user->toArray());
    
    $user->delete();
    
    return response()->json(['message' => 'Account deleted']);
});
```

## Performance Targets

- Page Load Time: < 2 seconds
- API Response Time: < 500ms
- TTFB: < 300ms
- Lighthouse Score: > 90
- Core Web Vitals: All green

## Testing Checklist

- [ ] Test sitemap.xml is accessible
- [ ] Test robots.txt is configured
- [ ] Test SSL certificate is valid
- [ ] Test API rate limiting
- [ ] Test CORS headers
- [ ] Test security headers presence
- [ ] Test 404 handling
- [ ] Test error pages
- [ ] Test caching behavior
- [ ] Test database connections

## Useful Tools

- Google PageSpeed Insights: https://pagespeed.web.dev
- GTmetrix: https://gtmetrix.com
- SSL Labs: https://www.ssllabs.com/ssltest
- Google Search Console: https://search.google.com/search-console
- Lighthouse: Chrome DevTools built-in
