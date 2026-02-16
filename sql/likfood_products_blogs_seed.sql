SET NAMES utf8mb4;

-- Products from provided images (category 9 = Snacks)
INSERT INTO products (id, folder, image, time, time_update, visibility, shop_categorie, quantity, procurement, in_slider, url, virtual_products, brand_id, position, vendor_id)
SELECT 14, NULL, 'banh-quay-ret-mam-ot.jpg', UNIX_TIMESTAMP(), UNIX_TIMESTAMP(), 1, 9, 60, 10, 1, 'Banh_quay_ret_mam_ot_350g_14', NULL, NULL, COALESCE(MAX(position), 0) + 1, 0
FROM products
WHERE NOT EXISTS (SELECT 1 FROM products WHERE id = 14);

INSERT INTO products (id, folder, image, time, time_update, visibility, shop_categorie, quantity, procurement, in_slider, url, virtual_products, brand_id, position, vendor_id)
SELECT 15, NULL, 'keo-dua-sap-me-den.jpg', UNIX_TIMESTAMP(), UNIX_TIMESTAMP(), 1, 9, 45, 11, 0, 'Keo_dua_sap_me_den_500g_15', NULL, NULL, COALESCE(MAX(position), 0) + 1, 0
FROM products
WHERE NOT EXISTS (SELECT 1 FROM products WHERE id = 15);

INSERT INTO products (id, folder, image, time, time_update, visibility, shop_categorie, quantity, procurement, in_slider, url, virtual_products, brand_id, position, vendor_id)
SELECT 16, NULL, 'tao-do-kep-sua-hat-dieu.jpg', UNIX_TIMESTAMP(), UNIX_TIMESTAMP(), 1, 9, 55, 8, 0, 'Tao_do_kep_sua_hat_dieu_350g_16', NULL, NULL, COALESCE(MAX(position), 0) + 1, 0
FROM products
WHERE NOT EXISTS (SELECT 1 FROM products WHERE id = 16);

INSERT INTO products (id, folder, image, time, time_update, visibility, shop_categorie, quantity, procurement, in_slider, url, virtual_products, brand_id, position, vendor_id)
SELECT 17, NULL, 'mochi-strawberry-cheesecake.jpg', UNIX_TIMESTAMP(), UNIX_TIMESTAMP(), 1, 9, 70, 6, 0, 'Royal_Family_Mochi_Strawberry_Cheesecake_120g_17', NULL, NULL, COALESCE(MAX(position), 0) + 1, 0
FROM products
WHERE NOT EXISTS (SELECT 1 FROM products WHERE id = 17);

INSERT INTO products (id, folder, image, time, time_update, visibility, shop_categorie, quantity, procurement, in_slider, url, virtual_products, brand_id, position, vendor_id)
SELECT 18, NULL, 'hat-dieu-rang-cui.jpg', UNIX_TIMESTAMP(), UNIX_TIMESTAMP(), 1, 9, 50, 14, 0, 'Hat_dieu_rang_cui_350g_18', NULL, NULL, COALESCE(MAX(position), 0) + 1, 0
FROM products
WHERE NOT EXISTS (SELECT 1 FROM products WHERE id = 18);

INSERT INTO products (id, folder, image, time, time_update, visibility, shop_categorie, quantity, procurement, in_slider, url, virtual_products, brand_id, position, vendor_id)
SELECT 19, NULL, 'me-lao-muoi-tom.jpg', UNIX_TIMESTAMP(), UNIX_TIMESTAMP(), 1, 9, 40, 12, 0, 'Me_lao_muoi_tom_500g_19', NULL, NULL, COALESCE(MAX(position), 0) + 1, 0
FROM products
WHERE NOT EXISTS (SELECT 1 FROM products WHERE id = 19);

INSERT INTO products (id, folder, image, time, time_update, visibility, shop_categorie, quantity, procurement, in_slider, url, virtual_products, brand_id, position, vendor_id)
SELECT 20, NULL, 'oi-ruot-do-say-deo-muoi-ot.jpg', UNIX_TIMESTAMP(), UNIX_TIMESTAMP(), 1, 9, 48, 9, 0, 'Oi_ruot_do_say_deo_muoi_ot_350g_20', NULL, NULL, COALESCE(MAX(position), 0) + 1, 0
FROM products
WHERE NOT EXISTS (SELECT 1 FROM products WHERE id = 20);

-- Product translations (en + zh)
INSERT INTO products_translations (title, description, basic_description, price, old_price, abbr, for_id)
SELECT 'Banh Quay Ret Mam Ot (350g)', '<p>Crispy twisted snack with chili fish-sauce style seasoning. Best served as a quick savory snack.</p>', 'Crispy chili savory snack', '18', '20', 'en', p.id
FROM products p
WHERE p.url = 'Banh_quay_ret_mam_ot_350g_14'
AND NOT EXISTS (SELECT 1 FROM products_translations t WHERE t.for_id = p.id AND t.abbr = 'en');

INSERT INTO products_translations (title, description, basic_description, price, old_price, abbr, for_id)
SELECT 'Coconut Candy with Black Sesame (500g)', '<p>Soft coconut candy with roasted black sesame aroma. Individually wrapped for daily snacking.</p>', 'Coconut sesame candy', '20', '22', 'en', p.id
FROM products p
WHERE p.url = 'Keo_dua_sap_me_den_500g_15'
AND NOT EXISTS (SELECT 1 FROM products_translations t WHERE t.for_id = p.id AND t.abbr = 'en');

INSERT INTO products_translations (title, description, basic_description, price, old_price, abbr, for_id)
SELECT 'Red Date with Cashew Milk Filling (350g)', '<p>Dried red dates paired with creamy cashew milk filling for a sweet and nutty bite.</p>', 'Red date with creamy filling', '13', '15', 'en', p.id
FROM products p
WHERE p.url = 'Tao_do_kep_sua_hat_dieu_350g_16'
AND NOT EXISTS (SELECT 1 FROM products_translations t WHERE t.for_id = p.id AND t.abbr = 'en');

INSERT INTO products_translations (title, description, basic_description, price, old_price, abbr, for_id)
SELECT 'Royal Family Mochi Strawberry Cheesecake (120g)', '<p>Chewy mochi with strawberry cheesecake-style filling. Imported style snack, 8 pieces pack.</p>', 'Strawberry cheesecake mochi', '10', '12', 'en', p.id
FROM products p
WHERE p.url = 'Royal_Family_Mochi_Strawberry_Cheesecake_120g_17'
AND NOT EXISTS (SELECT 1 FROM products_translations t WHERE t.for_id = p.id AND t.abbr = 'en');

INSERT INTO products_translations (title, description, basic_description, price, old_price, abbr, for_id)
SELECT 'Wood-Roasted Cashew Nuts (350g)', '<p>Roasted cashew nuts with rich aroma and crunchy texture. Suitable for healthy snacking.</p>', 'Roasted cashew nuts', '22', '24', 'en', p.id
FROM products p
WHERE p.url = 'Hat_dieu_rang_cui_350g_18'
AND NOT EXISTS (SELECT 1 FROM products_translations t WHERE t.for_id = p.id AND t.abbr = 'en');

INSERT INTO products_translations (title, description, basic_description, price, old_price, abbr, for_id)
SELECT 'Spicy Tamarind Snack (500g)', '<p>Tamarind snack with shrimp-salt seasoning profile. Sweet, sour, and spicy balance.</p>', 'Spicy tamarind snack', '20', '22', 'en', p.id
FROM products p
WHERE p.url = 'Me_lao_muoi_tom_500g_19'
AND NOT EXISTS (SELECT 1 FROM products_translations t WHERE t.for_id = p.id AND t.abbr = 'en');

INSERT INTO products_translations (title, description, basic_description, price, old_price, abbr, for_id)
SELECT 'Dried Red Guava with Chili Salt (350g)', '<p>Chewy red guava slices seasoned with chili salt for a sweet-spicy tropical snack.</p>', 'Dried guava chili snack', '14', '16', 'en', p.id
FROM products p
WHERE p.url = 'Oi_ruot_do_say_deo_muoi_ot_350g_20'
AND NOT EXISTS (SELECT 1 FROM products_translations t WHERE t.for_id = p.id AND t.abbr = 'en');

INSERT INTO products_translations (title, description, basic_description, price, old_price, abbr, for_id)
SELECT t.title, t.description, t.basic_description, t.price, t.old_price, 'zh', t.for_id
FROM products_translations t
WHERE t.abbr = 'en'
AND t.for_id IN (
    SELECT id FROM products WHERE url IN (
        'Banh_quay_ret_mam_ot_350g_14',
        'Keo_dua_sap_me_den_500g_15',
        'Tao_do_kep_sua_hat_dieu_350g_16',
        'Royal_Family_Mochi_Strawberry_Cheesecake_120g_17',
        'Hat_dieu_rang_cui_350g_18',
        'Me_lao_muoi_tom_500g_19',
        'Oi_ruot_do_say_deo_muoi_ot_350g_20'
    )
)
AND NOT EXISTS (
    SELECT 1 FROM products_translations z
    WHERE z.for_id = t.for_id AND z.abbr = 'zh'
);

-- Blog posts (product-focused)
INSERT INTO blog_posts (image, url, time)
SELECT 'banh-quay-ret-mam-ot.jpg', 'Crispy_chili_snacks_highlight_4', UNIX_TIMESTAMP()
FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM blog_posts WHERE id = 4);

INSERT INTO blog_posts (image, url, time)
SELECT 'tao-do-kep-sua-hat-dieu.jpg', 'Healthy_sweet_snacks_red_date_and_guava_5', UNIX_TIMESTAMP()
FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM blog_posts WHERE id = 5);

INSERT INTO blog_posts (image, url, time)
SELECT 'mochi-strawberry-cheesecake.jpg', 'Mochi_guide_texture_flavor_and_serving_6', UNIX_TIMESTAMP()
FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM blog_posts WHERE id = 6);

INSERT INTO blog_posts (image, url, time)
SELECT 'hat-dieu-rang-cui.jpg', 'Cashew_nut_snacks_how_to_choose_and_store_7', UNIX_TIMESTAMP()
FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM blog_posts WHERE id = 7);

-- Blog translations (en + zh)
INSERT INTO blog_translations (title, description, abbr, for_id)
SELECT
    'Crispy Chili Snacks: Product Highlight',
    '<p>This collection introduces spicy savory snacks, including Banh Quay Ret Mam Ot and spicy tamarind styles. These products are suitable for sharing, quick office snacks, and tea-time pairing.</p><p>Serving tip: keep in airtight containers after opening to maintain crunch.</p>',
    'en',
    b.id
FROM blog_posts b
WHERE b.url = 'Crispy_chili_snacks_highlight_4'
AND NOT EXISTS (SELECT 1 FROM blog_translations t WHERE t.for_id = b.id AND t.abbr = 'en');

INSERT INTO blog_translations (title, description, abbr, for_id)
SELECT
    'Healthy Sweet Snacks: Red Date and Guava',
    '<p>Red date and dried guava snacks combine fruit sweetness with mild savory profiles. They are convenient in portion control and easy to carry.</p><p>Suggested pairings: warm tea, black coffee, or unsweetened sparkling water.</p>',
    'en',
    b.id
FROM blog_posts b
WHERE b.url = 'Healthy_sweet_snacks_red_date_and_guava_5'
AND NOT EXISTS (SELECT 1 FROM blog_translations t WHERE t.for_id = b.id AND t.abbr = 'en');

INSERT INTO blog_translations (title, description, abbr, for_id)
SELECT
    'Mochi Guide: Texture, Flavor, and Serving',
    '<p>Royal Family Strawberry Cheesecake Mochi offers a chewy shell and creamy center. Chill slightly before serving for firmer texture.</p><p>Allergen note from retail listings: this style may contain milk and soy ingredients. Always check package labels.</p>',
    'en',
    b.id
FROM blog_posts b
WHERE b.url = 'Mochi_guide_texture_flavor_and_serving_6'
AND NOT EXISTS (SELECT 1 FROM blog_translations t WHERE t.for_id = b.id AND t.abbr = 'en');

INSERT INTO blog_translations (title, description, abbr, for_id)
SELECT
    'Cashew Nut Snacks: How to Choose and Store',
    '<p>Roasted cashew snacks are popular for rich taste and crunchy bite. Select products with clean aroma and dry texture.</p><p>Storage tip: avoid humidity and direct sun; seal tightly after each use.</p>',
    'en',
    b.id
FROM blog_posts b
WHERE b.url = 'Cashew_nut_snacks_how_to_choose_and_store_7'
AND NOT EXISTS (SELECT 1 FROM blog_translations t WHERE t.for_id = b.id AND t.abbr = 'en');

INSERT INTO blog_translations (title, description, abbr, for_id)
SELECT t.title, t.description, 'zh', t.for_id
FROM blog_translations t
WHERE t.abbr = 'en'
AND t.for_id IN (
    SELECT id FROM blog_posts WHERE url IN (
        'Crispy_chili_snacks_highlight_4',
        'Healthy_sweet_snacks_red_date_and_guava_5',
        'Mochi_guide_texture_flavor_and_serving_6',
        'Cashew_nut_snacks_how_to_choose_and_store_7'
    )
)
AND NOT EXISTS (
    SELECT 1 FROM blog_translations z
    WHERE z.for_id = t.for_id AND z.abbr = 'zh'
);
