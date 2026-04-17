-- Auto-generated: schema — database schema definition v2906
-- Created for project optimization

CREATE TABLE IF NOT EXISTS schema_—_database_schema_definition_2906 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    metadata JSONB,
    is_active BOOLEAN DEFAULT TRUE,
    priority SMALLINT DEFAULT 0,
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_2906_name
    ON schema_—_database_schema_definition_2906(name);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_2906_created
    ON schema_—_database_schema_definition_2906(created_at DESC);

-- Seed data
INSERT INTO schema_—_database_schema_definition_2906 (name, email)
VALUES
    ('item_0', 'val_0_2906'),
    ('item_1', 'val_1_2906'),
    ('item_2', 'val_2_2906'),
    ('item_3', 'val_3_2906'),
    ('item_4', 'val_4_2906'),
    ('item_5', 'val_5_2906'),
    ('item_6', 'val_6_2906'),
    ('item_7', 'val_7_2906'),

-- View
CREATE OR REPLACE VIEW v_schema_—_database_schema_definition_2906_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM schema_—_database_schema_definition_2906
GROUP BY name
ORDER BY total DESC;
