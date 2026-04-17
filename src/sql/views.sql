-- Auto-generated: views — views v2339
-- Created for project optimization

CREATE TABLE IF NOT EXISTS views_—_views_2339 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    priority SMALLINT DEFAULT 0,
    email VARCHAR(255),
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_views_—_views_2339_name
    ON views_—_views_2339(name);

CREATE INDEX IF NOT EXISTS idx_views_—_views_2339_created
    ON views_—_views_2339(created_at DESC);

-- Seed data
INSERT INTO views_—_views_2339 (name, is_active)
VALUES
    ('item_0', 'val_0_2339'),
    ('item_1', 'val_1_2339'),
    ('item_2', 'val_2_2339'),
    ('item_3', 'val_3_2339'),
    ('item_4', 'val_4_2339'),
    ('item_5', 'val_5_2339');

-- View
CREATE OR REPLACE VIEW v_views_—_views_2339_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM views_—_views_2339
GROUP BY name
ORDER BY total DESC;
