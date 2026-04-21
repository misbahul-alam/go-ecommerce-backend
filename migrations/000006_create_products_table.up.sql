CREATE TABLE
    products (
        id UUID PRIMARY KEY DEFAULT gen_random_uuid (),
        sku TEXT NOT NULL UNIQUE,
        name TEXT NOT NULL,
        slug TEXT NOT NULL UNIQUE,
        description TEXT,
        price NUMERIC(12, 2) NOT NULL CHECK (price >= 0),
        category_id UUID REFERENCES categories (id) ON DELETE SET NULL,
        is_stock BOOLEAN NOT NULL DEFAULT TRUE,
        is_featured BOOLEAN NOT NULL DEFAULT FALSE,
        status product_status NOT NULL DEFAULT 'active',
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW ()
    );