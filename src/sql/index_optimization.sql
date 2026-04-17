-- Auto-generated: index optimization v885
-- Created for project optimization

CREATE TABLE IF NOT EXISTS index_optimization_885 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    counter INTEGER DEFAULT 0,
    status VARCHAR(50) DEFAULT 'active',
    description TEXT,
    score DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_index_optimization_885_name
    ON index_optimization_885(name);

CREATE INDEX IF NOT EXISTS idx_index_optimization_885_created
    ON index_optimization_885(created_at DESC);

-- Seed data
INSERT INTO index_optimization_885 (name, counter)
VALUES
    ('item_0', 'val_0_885'),
    ('item_1', 'val_1_885'),
    ('item_2', 'val_2_885'),
    ('item_3', 'val_3_885'),
    ('item_4', 'val_4_885'),
    ('item_5', 'val_5_885'),
    ('item_6', 'val_6_885'),
    ('item_7', 'val_7_885'),

-- View
CREATE OR REPLACE VIEW v_index_optimization_885_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM index_optimization_885
GROUP BY name
ORDER BY total DESC;
