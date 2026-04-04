INSERT INTO brands (name) VALUES ('Volvo') ON CONFLICT (name) DO NOTHING;
INSERT INTO brands (name) VALUES ('Scania') ON CONFLICT (name) DO NOTHING;
INSERT INTO brands (name) VALUES ('Fiat') ON CONFLICT (name) DO NOTHING;

INSERT INTO buses (bus_number, plate, created_at, features, active, brand_id)
SELECT 'BUS-001', 'ABC-123', NOW(), 'Aire acondicionado, 2 pisos', true, id
FROM brands
WHERE name = 'Volvo'
ON CONFLICT (plate) DO NOTHING;

INSERT INTO buses (bus_number, plate, created_at, features, active, brand_id)
SELECT 'BUS-002', 'BCD-234', NOW(), 'Asientos reclinables', true, id
FROM brands
WHERE name = 'Scania'
ON CONFLICT (plate) DO NOTHING;

INSERT INTO buses (bus_number, plate, created_at, features, active, brand_id)
SELECT 'BUS-003', 'CDE-345', NOW(), 'WiFi y puerto USB', false, id
FROM brands
WHERE name = 'Fiat'
ON CONFLICT (plate) DO NOTHING;

INSERT INTO buses (bus_number, plate, created_at, features, active, brand_id)
SELECT 'BUS-004', 'DEF-456', NOW(), 'TV a bordo y aire acondicionado', true, id
FROM brands
WHERE name = 'Volvo'
ON CONFLICT (plate) DO NOTHING;

INSERT INTO buses (bus_number, plate, created_at, features, active, brand_id)
SELECT 'BUS-005', 'EFG-567', NOW(), 'Asientos VIP y puerto USB', true, id
FROM brands
WHERE name = 'Scania'
ON CONFLICT (plate) DO NOTHING;

INSERT INTO buses (bus_number, plate, created_at, features, active, brand_id)
SELECT 'BUS-006', 'FGH-678', NOW(), 'Servicio económico', true, id
FROM brands
WHERE name = 'Fiat'
ON CONFLICT (plate) DO NOTHING;

INSERT INTO buses (bus_number, plate, created_at, features, active, brand_id)
SELECT 'BUS-007', 'GHI-789', NOW(), '2 pisos y WiFi', false, id
FROM brands
WHERE name = 'Volvo'
ON CONFLICT (plate) DO NOTHING;

INSERT INTO buses (bus_number, plate, created_at, features, active, brand_id)
SELECT 'BUS-008', 'HIJ-890', NOW(), 'Aire acondicionado y GPS', true, id
FROM brands
WHERE name = 'Scania'
ON CONFLICT (plate) DO NOTHING;

INSERT INTO buses (bus_number, plate, created_at, features, active, brand_id)
SELECT 'BUS-009', 'IJK-901', NOW(), 'Asientos reclinables y TV', true, id
FROM brands
WHERE name = 'Fiat'
ON CONFLICT (plate) DO NOTHING;

INSERT INTO buses (bus_number, plate, created_at, features, active, brand_id)
SELECT 'BUS-010', 'JKL-012', NOW(), 'Servicio interprovincial', true, id
FROM brands
WHERE name = 'Volvo'
ON CONFLICT (plate) DO NOTHING;

INSERT INTO buses (bus_number, plate, created_at, features, active, brand_id)
SELECT 'BUS-011', 'KLM-123', NOW(), 'WiFi, USB y aire acondicionado', false, id
FROM brands
WHERE name = 'Scania'
ON CONFLICT (plate) DO NOTHING;

INSERT INTO buses (bus_number, plate, created_at, features, active, brand_id)
SELECT 'BUS-012', 'LMN-234', NOW(), 'Asientos semi cama', true, id
FROM brands
WHERE name = 'Fiat'
ON CONFLICT (plate) DO NOTHING;

INSERT INTO buses (bus_number, plate, created_at, features, active, brand_id)
SELECT 'BUS-013', 'MNO-345', NOW(), 'Bus turístico con panorámico', true, id
FROM brands
WHERE name = 'Volvo'
ON CONFLICT (plate) DO NOTHING;

INSERT INTO buses (bus_number, plate, created_at, features, active, brand_id)
SELECT 'BUS-014', 'NOP-456', NOW(), 'Aire acondicionado y entretenimiento', true, id
FROM brands
WHERE name = 'Scania'
ON CONFLICT (plate) DO NOTHING;

INSERT INTO buses (bus_number, plate, created_at, features, active, brand_id)
SELECT 'BUS-015', 'OPQ-567', NOW(), 'Unidad de respaldo', false, id
FROM brands
WHERE name = 'Fiat'
ON CONFLICT (plate) DO NOTHING;