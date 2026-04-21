CREATE TABLE
    payments (
        id UUID PRIMARY KEY DEFAULT gen_random_uuid (),
        order_id UUID NOT NULL REFERENCES orders (id) ON DELETE CASCADE,
        provider payment_provider NOT NULL,
        transaction_id TEXT,
        amount NUMERIC(12, 2) NOT NULL CHECK (amount >= 0),
        status payment_status NOT NULL DEFAULT 'pending',
        paid_at TIMESTAMPTZ,
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        UNIQUE (transaction_id)
    );