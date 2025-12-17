# Production Deployment Checklist & Guide

## Pre-Deployment Tasks

### 1. Environment & Secrets
- [ ] Generate new `APP_KEY`: `php artisan key:generate`
- [ ] Update `.env.production` with:
  - [ ] Production database credentials
  - [ ] Production mail service credentials
  - [ ] Redis/cache credentials
  - [ ] Pusher real-time credentials
  - [ ] Frontend URL
  - [ ] SSL certificate path (if needed)

### 2. Security Hardening
- [ ] **HTTPS Only**: Set `APP_FORCE_HTTPS=true`
- [ ] **Debug Mode Off**: Set `APP_DEBUG=false`
- [ ] **Database**: Use strong, unique passwords
- [ ] **API Keys**: Rotate all sensitive keys
- [ ] **CORS**: Update allowed origins (not wildcards)
- [ ] **Session Security**: Enable secure cookies and HTTP-only flags
- [ ] **Mail**: Use dedicated email service (not local)
- [ ] **File Permissions**: Set proper ownership and permissions:
  ```bash
  chown -R www-data:www-data /path/to/app
  chmod -R 755 /path/to/app
  chmod -R 775 /path/to/app/storage
  chmod -R 775 /path/to/app/bootstrap/cache
  ```

### 3. Database Preparation
- [ ] Run migrations: `php artisan migrate --force`
- [ ] Seed data if needed: `php artisan db:seed --class=ProductionSeeder`
- [ ] Verify database backups are enabled
- [ ] Test database connectivity

### 4. Caching & Performance
- [ ] Configure Redis connection
- [ ] Set `CACHE_DRIVER=redis`
- [ ] Set `QUEUE_CONNECTION=redis`
- [ ] Run: `php artisan config:cache`
- [ ] Run: `php artisan route:cache`
- [ ] Run: `php artisan view:cache`
- [ ] Disable query logging in production

### 5. Assets & Static Files
- [ ] Run: `npm run production` (if using Mix)
- [ ] Verify `public/mix-manifest.json` exists
- [ ] Enable gzip compression in web server
- [ ] Set cache headers for static assets (1 year for versioned files)

### 6. Storage & Files
- [ ] Ensure `storage/logs` is writable
- [ ] Ensure `storage/app` is writable
- [ ] Ensure `bootstrap/cache` is writable
- [ ] Configure backup strategy for user uploads

### 7. Monitoring & Logging
- [ ] Set `LOG_LEVEL=warning` for production
- [ ] Configure log rotation (daily logs)
- [ ] Setup error tracking (Sentry recommended)
- [ ] Setup uptime monitoring
- [ ] Setup performance monitoring

### 8. API & Rate Limiting
- [ ] Configure rate limiting in `config/throttle`
- [ ] Test API endpoints with rate limiting
- [ ] Enable request throttling: `throttle:api`
- [ ] Implement DDoS protection

### 9. SEO & Sitemap
- [ ] Add sitemap.xml: `route('sitemap')`
- [ ] Add robots.txt
- [ ] Configure meta tags
- [ ] Setup Google Search Console
- [ ] Setup Google Analytics

### 10. Testing
- [ ] Run full test suite: `php artisan test`
- [ ] Test API endpoints
- [ ] Test authentication flows
- [ ] Test payment processing (if applicable)
- [ ] Test email sending
- [ ] Load test with expected traffic

### 11. Backup & Recovery
- [ ] Setup automated daily backups
- [ ] Test backup restoration
- [ ] Document disaster recovery plan
- [ ] Monitor disk space

### 12. SSL/TLS Certificate
- [ ] Install valid SSL certificate
- [ ] Configure HSTS headers (done in middleware)
- [ ] Force HTTPS redirects
- [ ] Test SSL configuration at ssllabs.com

## Deployment Commands

```bash
# Pull latest code
git pull origin main

# Install dependencies
composer install --no-dev --optimize-autoloader

# Install/update packages
npm ci && npm run production

# Generate application key (if needed)
php artisan key:generate

# Run migrations
php artisan migrate --force

# Cache configurations for faster load
php artisan config:cache
php artisan route:cache
php artisan view:cache

# Clear any old cache
php artisan cache:clear
php artisan view:clear

# Verify health
php artisan tinker
> DB::connection()->getPdo()
```

## Web Server Configuration

### Apache (.htaccess - already configured)
```apache
# Ensure mod_rewrite is enabled
# Ensure public directory is document root
# Force HTTPS
RewriteEngine On
RewriteCond %{HTTPS} off
RewriteRule ^(.*)$ https://%{HTTP_HOST}%{REQUEST_URI} [L,R=301]
```

### Nginx
```nginx
server {
    listen 443 ssl http2;
    server_name yourdomain.com www.yourdomain.com;
    
    root /path/to/afeme/backend/public;
    
    # SSL configuration
    ssl_certificate /path/to/certificate.crt;
    ssl_certificate_key /path/to/private.key;
    ssl_protocols TLSv1.2 TLSv1.3;
    ssl_ciphers HIGH:!aNULL:!MD5;
    
    # Gzip compression
    gzip on;
    gzip_types text/plain text/css text/javascript application/json;
    
    index index.php index.html index.htm;
    
    location / {
        try_files $uri $uri/ /index.php?$query_string;
    }
    
    location ~ \.php$ {
        fastcgi_pass unix:/var/run/php-fpm.sock;
        fastcgi_index index.php;
        fastcgi_param SCRIPT_FILENAME $realpath_root$fastcgi_script_name;
        include fastcgi_params;
    }
    
    # Deny access to sensitive files
    location ~ /\.env { deny all; }
    location ~ /\.git { deny all; }
    location ~ /\.htaccess { deny all; }
    
    # Cache static assets
    location ~* \.(js|css|png|jpg|jpeg|gif|ico|svg|woff|woff2)$ {
        expires 1y;
        add_header Cache-Control "public, immutable";
    }
    
    # HTTP to HTTPS redirect
    if ($scheme != "https") {
        return 301 https://$server_name$request_uri;
    }
}

# Redirect HTTP to HTTPS
server {
    listen 80;
    server_name yourdomain.com www.yourdomain.com;
    return 301 https://$server_name$request_uri;
}
```

## Post-Deployment Verification

```bash
# Check API is working
curl https://yourdomain.com/api/client

# Test database connection
php artisan db:seed --dry-run

# Check logs
tail -f storage/logs/laravel.log

# Verify caching
php artisan tinker
> Cache::put('test', 'value', 3600); echo 'Cache OK';

# Test email
php artisan tinker
> Mail::raw('Test', function($msg) { $msg->to('test@example.com'); });
```

## Ongoing Maintenance

- [ ] Monitor error logs daily
- [ ] Check server resources (CPU, memory, disk)
- [ ] Update dependencies monthly
- [ ] Review and optimize slow queries
- [ ] Rotate logs weekly
- [ ] Backup database daily
- [ ] Monitor uptime
- [ ] Review security updates

## Rollback Plan

If deployment fails:
```bash
git revert HEAD
composer install
php artisan migrate:rollback
php artisan cache:clear
php artisan view:clear
```

## Support & Troubleshooting

- Check `storage/logs/laravel.log`
- Verify database credentials in `.env`
- Check file permissions on `storage/` and `bootstrap/cache`
- Verify Redis is running
- Check PHP version compatibility
- Review application logs for errors
