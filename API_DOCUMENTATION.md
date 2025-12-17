# AFEME API Documentation

## Base URL
```
https://yourdomain.com/api
```

## Authentication

### Token-Based Authentication
All protected endpoints require an `Authorization` header with a Bearer token:

```
Authorization: Bearer {access_token}
```

### Obtaining a Token
**POST** `/auth/login`
```json
{
  "email": "user@example.com",
  "password": "password"
}
```

**Response:**
```json
{
  "success": true,
  "data": {
    "user": {
      "id": 1,
      "name": "John Doe",
      "email": "user@example.com"
    },
    "access_token": "eyJ0eXAiOiJKV1QiLCJhbGc...",
    "token_type": "Bearer",
    "expires_in": 3600
  }
}
```

### Refreshing Token
**POST** `/auth/refresh`

**Headers:**
```
Authorization: Bearer {access_token}
```

## Rate Limiting

API requests are rate limited to prevent abuse:
- **Standard endpoints**: 60 requests per minute per IP
- **Authenticated requests**: 120 requests per minute per user
- **Auth endpoints**: 5 attempts per minute

Rate limit information is included in response headers:
```
X-RateLimit-Limit: 60
X-RateLimit-Remaining: 59
X-RateLimit-Reset: 1702555200
```

## Response Format

### Success Response
```json
{
  "success": true,
  "data": { /* Resource data */ },
  "message": "Operation successful"
}
```

### List Response with Pagination
```json
{
  "success": true,
  "data": [ /* Array of resources */ ],
  "meta": {
    "pagination": {
      "total": 100,
      "per_page": 20,
      "current_page": 1,
      "last_page": 5,
      "from": 1,
      "to": 20
    }
  }
}
```

### Error Response
```json
{
  "success": false,
  "message": "Error description",
  "errors": {
    "field_name": ["Error message"]
  }
}
```

### HTTP Status Codes
- `200 OK` - Successful request
- `201 Created` - Resource created successfully
- `400 Bad Request` - Invalid request format
- `401 Unauthorized` - Missing or invalid authentication
- `403 Forbidden` - Access denied
- `404 Not Found` - Resource not found
- `422 Unprocessable Entity` - Validation error
- `429 Too Many Requests` - Rate limit exceeded
- `500 Internal Server Error` - Server error

## Endpoints

### Authentication

#### Login
**POST** `/auth/login`

**Request:**
```json
{
  "email": "user@example.com",
  "password": "password"
}
```

**Response:** See "Obtaining a Token" above

#### Register
**POST** `/auth/register`

**Request:**
```json
{
  "name": "John Doe",
  "email": "user@example.com",
  "password": "password",
  "password_confirmation": "password"
}
```

#### Logout
**POST** `/auth/logout`

**Headers:** `Authorization: Bearer {token}`

#### Get Current User
**GET** `/client`

**Response:**
```json
{
  "success": true,
  "data": {
    "id": 1,
    "name": "John Doe",
    "email": "user@example.com",
    "ip_address": "192.168.1.1",
    "user_agent": "Mozilla/5.0..."
  }
}
```

---

### Products

#### Get All Products
**GET** `/products`

**Query Parameters:**
- `page` (int) - Page number (default: 1)
- `per_page` (int) - Items per page (default: 20, max: 100)
- `search` (string) - Search products by name
- `category` (int) - Filter by category ID
- `min_price` (decimal) - Minimum price
- `max_price` (decimal) - Maximum price
- `sort` (string) - Sort by: `latest`, `oldest`, `popular`, `price_asc`, `price_desc`

**Example:**
```
GET /api/products?page=1&per_page=20&category=5&sort=latest
```

**Response:**
```json
{
  "success": true,
  "data": [
    {
      "id": 1,
      "name": "Product Name",
      "slug": "product-name",
      "description": "Product description",
      "price": 99.99,
      "discount_price": 79.99,
      "images": [...],
      "category": {...},
      "created_at": "2024-01-15T10:30:00Z"
    }
  ],
  "meta": { /* pagination */ }
}
```

#### Get Single Product
**GET** `/products/{id}`

**Response:**
```json
{
  "success": true,
  "data": {
    "id": 1,
    "name": "Product Name",
    "description": "Detailed description",
    "price": 99.99,
    "discount_price": 79.99,
    "stock": 50,
    "images": [
      {
        "id": 1,
        "url": "https://yourdomain.com/storage/...",
        "alt_text": "Product image"
      }
    ],
    "reviews": [
      {
        "id": 1,
        "user": { "id": 1, "name": "John" },
        "rating": 5,
        "comment": "Great product!",
        "created_at": "2024-01-15T10:30:00Z"
      }
    ],
    "category": {
      "id": 1,
      "name": "Category Name"
    }
  }
}
```

#### Create Product
**POST** `/post`

**Headers:** `Authorization: Bearer {token}`

**Request:**
```json
{
  "name": "New Product",
  "description": "Product description",
  "price": 99.99,
  "category_id": 1,
  "images": [
    {
      "url": "image_url",
      "alt_text": "Alt text"
    }
  ]
}
```

#### Update Product
**PUT** `/post/{id}`

**Headers:** `Authorization: Bearer {token}`

**Request:** Same as Create

#### Delete Product
**DELETE** `/post/{id}`

**Headers:** `Authorization: Bearer {token}`

---

### User Profile

#### Get User Profile
**GET** `/getuser`

**Headers:** `Authorization: Bearer {token}`

#### Update User Profile
**PUT** `/user/{id}`

**Headers:** `Authorization: Bearer {token}`

**Request:**
```json
{
  "name": "New Name",
  "email": "newemail@example.com",
  "phone": "+1234567890",
  "bio": "User bio"
}
```

#### Delete User Account
**DELETE** `/user/{id}`

**Headers:** `Authorization: Bearer {token}`

---

### Favorites/Wishlist

#### Add to Favorites
**GET** `/save/{product_id}`

**Headers:** `Authorization: Bearer {token}`

**Response:**
```json
{
  "success": true,
  "message": "Added to favorites",
  "is_saved": true
}
```

#### Remove from Favorites
**GET** `/save/{product_id}`

**Headers:** `Authorization: Bearer {token}`

(Toggle action - call same endpoint to remove)

---

### Reviews & Ratings

#### Post Comment/Review
**POST** `/comment`

**Headers:** `Authorization: Bearer {token}`

**Request:**
```json
{
  "product_id": 1,
  "comment": "Great product!",
  "rating": 5
}
```

#### Submit Rating
**POST** `/reting`

**Headers:** `Authorization: Bearer {token}`

**Request:**
```json
{
  "product_id": 1,
  "rating": 5
}
```

---

### Filters

#### Get Available Filters
**GET** `/position`

**Headers:** `Authorization: Bearer {token}`

**Response:**
```json
{
  "success": true,
  "data": {
    "categories": [...],
    "prices": { "min": 0, "max": 1000 },
    "brands": [...]
  }
}
```

---

### Error Handling

All error responses follow this format:

```json
{
  "success": false,
  "message": "Human-readable error message",
  "errors": {
    "field": [
      "Field-specific error message"
    ]
  }
}
```

**Common Error Codes:**
- `401` - Unauthenticated
- `403` - Unauthorized
- `404` - Not found
- `422` - Validation error
- `429` - Rate limit exceeded
- `500` - Server error

---

## Webhooks (Optional)

For real-time updates, consider implementing webhooks:

**Webhook Events:**
- `product.created`
- `product.updated`
- `product.deleted`
- `order.placed`
- `order.completed`
- `user.registered`

---

## SDK Usage Examples

### JavaScript/TypeScript
```javascript
const API_URL = 'https://yourdomain.com/api';

// Login
const response = await fetch(`${API_URL}/auth/login`, {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  body: JSON.stringify({
    email: 'user@example.com',
    password: 'password'
  })
});

const { data } = await response.json();
const token = data.access_token;

// Get Products
const productsResponse = await fetch(`${API_URL}/products?page=1`, {
  headers: {
    'Authorization': `Bearer ${token}`
  }
});

const products = await productsResponse.json();
```

### PHP
```php
$client = new GuzzleHttp\Client();

$response = $client->post('https://yourdomain.com/api/auth/login', [
    'json' => [
        'email' => 'user@example.com',
        'password' => 'password'
    ]
]);

$data = json_decode($response->getBody());
$token = $data->data->access_token;

// Get Products
$products = $client->get('https://yourdomain.com/api/products', [
    'headers' => [
        'Authorization' => "Bearer {$token}"
    ]
]);
```

---

## Testing the API

### Using cURL
```bash
# Login
curl -X POST https://yourdomain.com/api/auth/login \
  -H "Content-Type: application/json" \
  -d '{"email":"user@example.com","password":"password"}'

# Get Products
curl -X GET https://yourdomain.com/api/products \
  -H "Authorization: Bearer YOUR_TOKEN"
```

### Using Postman
1. Import the API collection (if available)
2. Set environment variables for base URL and token
3. Test endpoints in sequence

---

## API Versioning

Current API Version: `v1`

Future versions will maintain backward compatibility.

---

## Support

For API issues or questions:
- Email: support@yourdomain.com
- Documentation: https://yourdomain.com/api/docs
- Status Page: https://status.yourdomain.com
