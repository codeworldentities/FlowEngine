-- Auto-generated: complex query v1319
-- Created for project optimization

CREATE TABLE IF NOT EXISTS complex_query_1319 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    counter INTEGER DEFAULT 0,
    priority SMALLINT DEFAULT 0,
    metadata JSONB,
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_complex_query_1319_name
    ON complex_query_1319(name);

CREATE INDEX IF NOT EXISTS idx_complex_query_1319_created
    ON complex_query_1319(created_at DESC);

-- Seed data
INSERT INTO complex_query_1319 (name, counter)
VALUES
    ('item_0', 'val_0_1319'),
    ('item_1', 'val_1_1319'),
    ('item_2', 'val_2_1319'),
    ('item_3', 'val_3_1319'),
    ('item_4', 'val_4_1319'),
    ('item_5', 'val_5_1319'),
    ('item_6', 'val_6_1319'),
    ('item_7', 'val_7_1319'),

-- View
CREATE OR REPLACE VIEW v_complex_query_1319_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM complex_query_1319
GROUP BY name
ORDER BY total DESC;
