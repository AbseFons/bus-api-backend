INSERT INTO brands (name) VALUES ('Volvo');
INSERT INTO brands (name) VALUES ('Scania');
INSERT INTO brands (name) VALUES ('Fiat');

INSERT INTO buses (bus_number, plate, created_at, features, active, brand_id)
VALUES ('BUS-001', 'ABC-123', NOW(), 'Aire acondicionado, 2 pisos', true, 1);

INSERT INTO buses (bus_number, plate, created_at, features, active, brand_id)
VALUES ('BUS-002', 'BCD-234', NOW(), 'Asientos reclinables', true, 2);

INSERT INTO buses (bus_number, plate, created_at, features, active, brand_id)
VALUES ('BUS-003', 'CDE-345', NOW(), 'WiFi y puerto USB', false, 3);