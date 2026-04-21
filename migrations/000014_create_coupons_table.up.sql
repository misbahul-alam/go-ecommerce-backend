CREATE TABLE
    coupons (
        id UUID PRIMARY KEY DEFAULT gen_random_uuid (),
        code TEXT NOT NULL,
        discount_type discount_type NOT NULL,
        discount_value NUMERIC(10, 2) NOT NULL CHECK (discount_value >= 0),
        min_order_amount NUMERIC(10, 2) CHECK (
            min_order_amount IS NULL
            OR min_order_amount >= 0
        ),
        expires_at TIMESTAMPTZ,
        is_active BOOLEAN NOT NULL DEFAULT TRUE,
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        CHECK (
            (
                discount_type = 'percentage'
                AND discount_value <= 100
            )
            OR discount_type = 'fixed'
        )
    );