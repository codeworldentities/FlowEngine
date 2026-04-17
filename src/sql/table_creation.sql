-- Auto-generated: table creation v456
-- Created for project optimization

CREATE TABLE IF NOT EXISTS table_creation_456 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    score DECIMAL(10,2),
    email VARCHAR(255),
    description TEXT,
    status VARCHAR(50) DEFAULT 'active',
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_table_creation_456_name
    ON table_creation_456(name);

CREATE INDEX IF NOT EXISTS idx_table_creation_456_created
    ON table_creation_456(created_at DESC);

-- Seed data
INSERT INTO table_creation_456 (name, score)
VALUES
    ('item_0', 'val_0_456'),
    ('item_1', 'val_1_456'),
    ('item_2', 'val_2_456'),
    ('item_3', 'val_3_456'),
    ('item_4', 'val_4_456'),
    ('item_5', 'val_5_456'),
    ('item_6', 'val_6_456'),
    ('item_7', 'val_7_456'),

-- View
CREATE OR REPLACE VIEW v_table_creation_456_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM table_creation_456
GROUP BY name
ORDER BY total DESC;
