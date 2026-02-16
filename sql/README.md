# SQL files guide

## File list
- `shop.sql`: Main database dump for this project submission. Use this file first.
- `likfood_products_blogs_seed.sql`: Optional extra seed data for products/blogs.

## Recommended import order
1. Create database `shop`
2. Import `shop.sql`
3. (Optional) Import `likfood_products_blogs_seed.sql`

## Import with phpMyAdmin
1. Open phpMyAdmin
2. Create/select database `shop`
3. Go to `Import`
4. Choose `shop.sql`
5. Click `Go`

## Import with MySQL CLI (Windows/XAMPP)
```bash
"C:\xampfile\mysql\bin\mysql.exe" -u root -D shop < "C:\xampfile\htdocs\Ecommerce-CodeIgniter-Bootstrap\sql\shop.sql"
```

## Verify import
Run:
```sql
SHOW TABLES;
```

If tables exist and frontend/admin pages load, DB import is successful.
