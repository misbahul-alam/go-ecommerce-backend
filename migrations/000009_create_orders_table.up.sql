CREATE TABLE
    orders (
        id UUID PRIMARY KEY DEFAULT gen_random_uuid (),
        user_id UUID NOT NULL REFERENCES users (id),
        status order_status NOT NULL DEFAULT 'pending',
        total_amount NUMERIC(12, 2) NOT NULL CHECK (total_amount >= 0),
        shipping_address TEXT NOT NULL,
        billing_address TEXT,
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW ()
    );