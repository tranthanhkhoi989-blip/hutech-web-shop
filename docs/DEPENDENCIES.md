# Dependencies

This project is mostly self-contained (libraries are committed in source), but runtime dependencies are listed below for clear grading.

## Runtime stack
- Web server: Apache 2.4+ (XAMPP is recommended for local run)
- PHP: 7.4-8.5
- MySQL: 5.7+
- Browser: Chrome/Edge/Firefox (latest stable)

## Required PHP extensions
- `mysqli`
- `mbstring`
- `json`
- `openssl`
- `curl`
- `gd`
- `zip`
- `fileinfo`

## Bundled libraries in repository
- CodeIgniter `3.1.13` (modified for modern PHP compatibility)
- Bootstrap `3.3.7`
- PHPMailer (bundled in `application/libraries/PHPMailer`)
- elFinder `2.1.38` (bundled in `assets/elFinder-2.1.38`)
- CKEditor (bundled in `assets/ckeditor`)
- Highcharts (bundled in assets)

## External services (optional)
- SMTP provider for outgoing email (configured in `application/config/mailer.php`)
- Google/Facebook OAuth (disabled by default in `application/config/social_auth.php`)

## Database artifacts
- Base schema: `database.sql`
- Submission-ready dump: `sql/shop.sql`
- Optional seed: `sql/likfood_products_blogs_seed.sql`
