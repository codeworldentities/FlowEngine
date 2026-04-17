-- Auto-generated: table creation v3130
-- Created for project optimization

CREATE TABLE IF NOT EXISTS table_creation_3130 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    counter INTEGER DEFAULT 0,
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_table_creation_3130_name
    ON table_creation_3130(name);

CREATE INDEX IF NOT EXISTS idx_table_creation_3130_created
    ON table_creation_3130(created_at DESC);

-- Seed data
INSERT INTO table_creation_3130 (name, email)
VALUES
    ('item_0', 'val_0_3130'),
    ('item_1', 'val_1_3130'),
    ('item_2', 'val_2_3130'),
    ('item_3', 'val_3_3130'),
    ('item_4', 'val_4_3130'),
    ('item_5', 'val_5_3130'),
    ('item_6', 'val_6_3130'),
    ('item_7', 'val_7_3130'),

-- View
CREATE OR REPLACE VIEW v_table_creation_3130_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM table_creation_3130
GROUP BY name
ORDER BY total DESC;
