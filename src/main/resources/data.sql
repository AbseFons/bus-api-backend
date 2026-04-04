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