-- Auto-generated: complex query v4493
-- Created for project optimization

CREATE TABLE IF NOT EXISTS complex_query_4493 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    score DECIMAL(10,2),
    email VARCHAR(255),
    priority SMALLINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_complex_query_4493_name
    ON complex_query_4493(name);

CREATE INDEX IF NOT EXISTS idx_complex_query_4493_created
    ON complex_query_4493(created_at DESC);

-- Seed data
INSERT INTO complex_query_4493 (name, description)
VALUES
    ('item_0', 'val_0_4493'),
    ('item_1', 'val_1_4493'),
    ('item_2', 'val_2_4493'),
    ('item_3', 'val_3_4493'),
    ('item_4', 'val_4_4493'),
    ('item_5', 'val_5_4493'),
    ('item_6', 'val_6_4493'),
    ('item_7', 'val_7_4493'),

-- View
CREATE OR REPLACE VIEW v_complex_query_4493_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM complex_query_4493
GROUP BY name
ORDER BY total DESC;
