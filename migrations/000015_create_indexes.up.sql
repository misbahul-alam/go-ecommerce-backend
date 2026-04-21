CREATE INDEX idx_products_category ON products (category_id);

CREATE INDEX idx_products_status ON products (status);

CREATE INDEX idx_orders_user_id ON orders (user_id);

CREATE INDEX idx_reviews_product_id ON reviews (product_id);

CREATE INDEX idx_cart_items_user_id ON cart_items (user_id);

CREATE INDEX idx_cart_items_product_id ON cart_items (product_id);

CREATE INDEX idx_order_items_order_id ON order_items (order_id);

CREATE INDEX idx_order_items_product_id ON order_items (product_id);

CREATE INDEX idx_categories_parent_id ON categories (parent_id);

CREATE INDEX idx_addresses_user_id ON addresses (user_id);

CREATE INDEX idx_product_images_product_id ON product_images (product_id);

CREATE INDEX idx_payments_order_id ON payments (order_id);

CREATE INDEX idx_wishlist_items_product_id ON wishlist_items (product_id);

CREATE UNIQUE INDEX idx_coupons_code_lower ON coupons (LOWER(code));

CREATE UNIQUE INDEX idx_addresses_one_default_per_user ON addresses (user_id)
WHERE
    is_default;

CREATE UNIQUE INDEX idx_product_images_one_primary_per_product ON product_images (product_id)
WHERE
    is_primary;