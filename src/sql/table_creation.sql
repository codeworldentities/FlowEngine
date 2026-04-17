-- Auto-generated: table creation v3074
-- Created for project optimization

CREATE TABLE IF NOT EXISTS table_creation_3074 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    description TEXT,
    metadata JSONB,
    score DECIMAL(10,2),
    priority SMALLINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_table_creation_3074_name
    ON table_creation_3074(name);

CREATE INDEX IF NOT EXISTS idx_table_creation_3074_created
    ON table_creation_3074(created_at DESC);

-- Seed data
INSERT INTO table_creation_3074 (name, email)
VALUES
    ('item_0', 'val_0_3074'),
    ('item_1', 'val_1_3074'),
    ('item_2', 'val_2_3074'),
    ('item_3', 'val_3_3074'),
    ('item_4', 'val_4_3074'),
    ('item_5', 'val_5_3074');

-- View
CREATE OR REPLACE VIEW v_table_creation_3074_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM table_creation_3074
GROUP BY name
ORDER BY total DESC;
