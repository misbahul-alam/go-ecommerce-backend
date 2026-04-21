CREATE TABLE
    order_items (
        id UUID PRIMARY KEY DEFAULT gen_random_uuid (),
        order_id UUID NOT NULL REFERENCES orders (id) ON DELETE CASCADE,
        product_id UUID NOT NULL REFERENCES products (id),
        quantity INT NOT NULL CHECK (quantity > 0),
        price NUMERIC(12, 2) NOT NULL CHECK (price >= 0),
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW ()
    );