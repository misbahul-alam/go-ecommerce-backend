CREATE TYPE user_role AS ENUM ('admin', 'customer', 'seller');

CREATE TYPE order_status AS ENUM (
    'pending',
    'paid',
    'processing',
    'shipped',
    'delivered',
    'cancelled',
    'refunded'
);

CREATE TYPE payment_status AS ENUM ('pending', 'completed', 'failed', 'refunded');

CREATE TYPE payment_provider AS ENUM (
    'stripe',
    'paypal',
    'sslcommerz',
    'cash_on_delivery'
);

CREATE TYPE discount_type AS ENUM ('percentage', 'fixed');

CREATE TYPE product_status AS ENUM ('draft', 'active', 'inactive');