-- Auto-generated: procedures — procedures v3537
-- Created for project optimization

CREATE TABLE IF NOT EXISTS procedures_—_procedures_3537 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    counter INTEGER DEFAULT 0,
    description TEXT,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_3537_name
    ON procedures_—_procedures_3537(name);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_3537_created
    ON procedures_—_procedures_3537(created_at DESC);

-- Seed data
INSERT INTO procedures_—_procedures_3537 (name, email)
VALUES
    ('item_0', 'val_0_3537'),
    ('item_1', 'val_1_3537'),
    ('item_2', 'val_2_3537'),
    ('item_3', 'val_3_3537'),
    ('item_4', 'val_4_3537'),
    ('item_5', 'val_5_3537'),
    ('item_6', 'val_6_3537'),
    ('item_7', 'val_7_3537');

-- View
CREATE OR REPLACE VIEW v_procedures_—_procedures_3537_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM procedures_—_procedures_3537
GROUP BY name
ORDER BY total DESC;
