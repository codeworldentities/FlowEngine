-- Auto-generated: stored procedure v8202
-- Created for project optimization

CREATE TABLE IF NOT EXISTS stored_procedure_8202 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    score DECIMAL(10,2),
    metadata JSONB,
    email VARCHAR(255),
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_8202_name
    ON stored_procedure_8202(name);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_8202_created
    ON stored_procedure_8202(created_at DESC);

-- Seed data
INSERT INTO stored_procedure_8202 (name, is_active)
VALUES
    ('item_0', 'val_0_8202'),
    ('item_1', 'val_1_8202'),
    ('item_2', 'val_2_8202'),
    ('item_3', 'val_3_8202'),
    ('item_4', 'val_4_8202'),
    ('item_5', 'val_5_8202'),
    ('item_6', 'val_6_8202'),
    ('item_7', 'val_7_8202'),

-- View
CREATE OR REPLACE VIEW v_stored_procedure_8202_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM stored_procedure_8202
GROUP BY name
ORDER BY total DESC;
