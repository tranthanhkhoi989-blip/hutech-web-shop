# Huong dan cai dat va su dung

Tai lieu nay de giang khao (hoac nguoi dung moi) co the tai source va chay ngay.

## 1. Yeu cau moi truong
- Apache + PHP (khuyen nghi XAMPP)
- PHP 7.4 den 8.5
- MySQL 5.7 tro len
- Git (de clone source)

## 2. Lay source code
```bash
git clone https://github.com/khoikid789-lang/web-app-.git
cd web-app-
```

Neu ban copy source thu cong, dam bao project nam trong thu muc web server, vi du:
- `C:\xampfile\htdocs\Ecommerce-CodeIgniter-Bootstrap`

## 3. Tao database va import du lieu
1. Tao database moi, ten khuyen nghi: `shop`
2. Import file:
   - Uu tien: `sql/shop.sql` (du lieu day du cho bai nop)
   - Tuy chon bo sung: `sql/likfood_products_blogs_seed.sql`

### Cach import bang phpMyAdmin
1. Mo phpMyAdmin
2. Tao database `shop` (utf8mb4)
3. Chon tab `Import`
4. Chon file `sql/shop.sql`
5. Bam `Go`

### Cach import bang command line (Windows/XAMPP)
```bash
"C:\xampfile\mysql\bin\mysql.exe" -u root -D shop < "C:\xampfile\htdocs\Ecommerce-CodeIgniter-Bootstrap\sql\shop.sql"
```

## 4. Cau hinh ung dung

### `application/config/database.php`
Cap nhat dung thong tin may cua ban:
- `hostname` (thuong la `localhost`)
- `username` (thuong la `root`)
- `password` (neu co)
- `database` = `shop`

### `application/config/config.php`
Cap nhat:
- `base_url` dung voi duong dan local cua ban  
Vi du:
```php
$config['base_url'] = 'http://localhost:8080/Ecommerce-CodeIgniter-Bootstrap/';
```

### `application/config/mailer.php`
- File da de o dang placeholder, khong chua mat khau that.
- Neu can gui mail that, thay:
  - `username`
  - `password` (App Password)
  - `from_email`

### `application/config/social_auth.php`
- Mac dinh dang tat (`enabled => false`).
- Neu khong dung OAuth thi giu nguyen.

## 5. Chay du an
1. Bat Apache + MySQL trong XAMPP
2. Mo trinh duyet:
   - Frontend: `http://localhost:8080/Ecommerce-CodeIgniter-Bootstrap/`
   - Admin: `http://localhost:8080/Ecommerce-CodeIgniter-Bootstrap/admin`

Neu ban dung port khac (khong phai 8080), doi theo may cua ban.

## 6. Tai khoan mac dinh
- Admin URL: `/admin`
- Username: `admin`
- Password: `admin`

Khuyen nghi doi mat khau ngay sau khi dang nhap.

## 7. Cac buoc test nhanh de cham diem
1. Dang nhap admin
2. Kiem tra danh sach san pham
3. Kiem tra trang chi tiet san pham ngoai frontend
4. Them san pham vao gio hang va checkout
5. Kiem tra order trong admin
6. Kiem tra da ngon ngu (neu can)

## 8. Xu ly loi thuong gap
- Loi ket noi DB: kiem tra `application/config/database.php`
- Trang khong load dung URL: kiem tra `base_url` trong `application/config/config.php`
- Chay installer lai:
  - Xoa file `application/config/installed.lock`
  - Mo `installation.php`
