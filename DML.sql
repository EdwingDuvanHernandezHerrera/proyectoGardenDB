-- -----------------------------------------------------
-- Table `garden_db`.`proveedor`
-- -----------------------------------------------------
INSERT INTO proveedor (codigo_proveedor, nombre, email) VALUES
(1, 'HiperGarden Tools', 'contacto@hipergardentools.com'),
(2, 'Murcia Seasons', 'info@murciaseasons.com'),
(3, 'Frutales Talavera S.A', 'info@frutalestalavera.com'),
(4, 'Naranjas Valencianas', 'info@naranjasvalencianas.com'),
(5, 'Melocotones de Cieza S.A.', 'contacto@melocotonesdecieza.com'),
(6, 'Jerte Distribuciones S.L.', 'info@jertedistribuciones.com'),
(7, 'Valencia Garden Service', 'contacto@valenciagardenservice.com'),
(8, 'Viveros EL OASIS', 'info@viveroseloasis.com');


-- -----------------------------------------------------
-- Table `garden_db`.`gama_producto`
-- -----------------------------------------------------
INSERT INTO gama_producto (codigo_gama, gama, descripcion_texto, descripcion_html, imagen)
VALUES
(1, 'Herbaceas', 'Plantas para jardin decorativas', NULL, NULL),
(2, 'Herramientas', 'Herramientas para todo tipo de acción', NULL, NULL),
(3, 'Aromáticas', 'Plantas aromáticas', NULL, NULL),
(4, 'Frutales', 'Árboles pequeños de producción frutal', NULL, NULL),
(5, 'Ornamentales', 'Plantas vistosas para la decoración del jardín', NULL, NULL);


-- -----------------------------------------------------
-- Table `garden_db`.`dimensiones`
-- -----------------------------------------------------
INSERT INTO dimensiones (codigo_dimensiones, largo, alto, ancho, peso)
VALUES
('DIM0001', 10, 5, 3, 0.5),
('DIM0002', 15, 8, 6, 1),
('DIM0003', 20, 10, 12, 1.5),
('DIM0004', 25, 12, 8, 2),
('DIM0005', 30, 15, 10, 2.5),
('DIM0006', 35, 18, 14, 3),
('DIM0007', 40, 20, 16, 3.5),
('DIM0008', 45, 22, 18, 4),
('DIM0009', 50, 25, 20, 4.5),
('DIM0010', 55, 28, 22, 5);


-- -----------------------------------------------------
-- Table `garden_db`.`producto`
-- -----------------------------------------------------
INSERT INTO producto (codigo_producto, nombre, codigo_gama, cantidad_stock, precio_venta, descripcion, codigo_dimensiones)
VALUES
('AR-001', 'Sierra de Poda 400MM', 2, 15, 14, 'Sierra de poda de 400 mm', 'DIM0001'),
('AR-002', 'Pala', 2, 140, 12, 'Pala para jardín', 'DIM0002'),
('AR-003', 'Rastrillo de Jardín', 2, 50, 1, 'Rastrillo para jardín', 'DIM0003'),
('AR-004', 'Azadón', 2, 350, 7, 'Azadón de trabajo pesado', 'DIM0004'),
('AR-005', 'Ajedrea', 3, 400, 11, 'Planta aromática - Ajedrea', 'DIM0005'),
('AR-006', 'Lavándula Dentata', 3, 200, 13, 'Planta aromática - Lavándula Dentata', 'DIM0006'),
('AR-007', 'Mejorana', 3, 300, 18, 'Planta aromática - Mejorana', 'DIM0007'),
('AR-008', 'Melissa', 3, 25, 25, 'Planta aromática - Melissa', 'DIM0008'),
('AR-009', 'Mentha Sativa', 3, 100, 49, 'Planta aromática - Mentha Sativa', 'DIM0009'),
('AR-010', 'Petrosilium Hortense Peregil', 3, 120, 70, 'Planta aromática - Petrosilium Hortense Peregil', 'DIM0010'),
('FR-1', 'Salvia Mix', 4, 80, 22, 'Planta de Salvia Mix', 'DIM0001'),
('FR-2', 'Thymus Citriodra Tomillo limón', 4, 2, 32, 'Planta de Thymus Citriodra Tomillo limón', 'DIM0002'),
('FR-3', 'Thymus Vulgaris', 4, 5, 100, 'Planta de Thymus Vulgaris', 'DIM0003'),
('FR-4', 'Santolina Chamaecyparys', 4, 4, 21, 'Planta de Santolina Chamaecyparys', 'DIM0004'),
('FR-5', 'Expositor Cítricos Mix', 4, 0, 57, 'Expositor de cítricos variados', 'DIM0005'),
('FR-6', 'Limonero 2 años injerto', 4, 1, 10, 'Limonero injertado de 2 años', 'DIM0006'),
('FR-7', 'Nectarina', 4, 3, 45, 'Árbol de nectarina', 'DIM0007'),
('FR-8', 'Nogal', 4, 36, 2, 'Árbol de nogal', 'DIM0008'),
('FR-9', 'Olea-Olivos', 4, 37, 4, 'Olivos en maceta', 'DIM0009'),
('FR-10', 'Peral', 4, 38, 6, 'Árbol de peral', 'DIM0010'),
('FR-11', 'Kunquat', 4, 39, 8, 'Árbol de Kunquat', 'DIM0001'),
('FR-12', 'Kunquat  EXTRA con FRUTA', 4, 40, 9, 'Árbol de Kunquat con fruta extra', 'DIM0002'),
('FR-13', 'Calamondin Mini', 4, 41, 29, 'Árbol de Calamondin Mini', 'DIM0003'),
('FR-14', 'Calamondin Copa', 4, 42, 80, 'Árbol de Calamondin Copa', 'DIM0004'),
('FR-15', 'Calamondin Copa EXTRA Con FRUTA', 4, 43, 91, 'Árbol de Calamondin Copa con fruta extra', 'DIM0005'),
('FR-16', 'Rosal bajo 1ª -En maceta-inicio brotación', 4, 44, 15, 'Rosal en maceta', 'DIM0006'),
('FR-17', 'ROSAL TREPADOR', 4, 45, 5, 'Rosal trepador', 'DIM0007'),
('FR-18', 'Camelia Blanco', 4, 46, 98, 'Camelia blanco', 'DIM0008'),
('FR-19', 'Naranjo -Plantón joven 1 año injerto', 4, 47, 110, 'Naranjo injertado de 1 año', 'DIM0009'),
('FR-20', 'Landora Amarillo', 4, 48, 38, 'Árbol de Landora Amarillo', 'DIM0010'),
('FR-21', 'Kordes Perfect bicolor rojo-amarillo', 4, 49, 17, 'Árbol de Kordes Perfect bicolor rojo-amarillo', 'DIM0001'),
('FR-22', 'Pitimini rojo', 4, 50, 24, 'Árbol de Pitimini rojo', 'DIM0002'),
('FR-23', 'Rosal copa', 4, 51, 20, 'Rosal de copa', 'DIM0003'),
('FR-24', 'Albaricoquero Corbato', 4, 52, 39, 'Árbol de Albaricoquero Corbato', 'DIM0004'),
('FR-25', 'Albaricoquero Moniqui', 4, 53, 59, 'Árbol de Albaricoquero Moniqui', 'DIM0005'),
('FR-26', 'Albaricoquero Kurrot', 4, 54, 217, 'Árbol de Albaricoquero Kurrot', 'DIM0006');


-- -----------------------------------------------------
-- Table `garden_db`.`producto_proveedor`
-- -----------------------------------------------------
INSERT INTO producto_proveedor (codigo_producto, codigo_proveedor, precio_proveedor)
VALUES
('AR-001', 1, 11),
('AR-001', 2, 11),
('AR-002', 3, 0),
('AR-002', 4, 5),
('AR-003', 5, 8),
('AR-003', 6, 10),
('AR-004', 7, 14),
('AR-004', 8, 20),
('AR-005', 1, 30),
('AR-005', 2, 36),
('AR-006', 3, 15),
('AR-006', 4, 20),
('AR-007', 5, 36),
('AR-007', 6, 16),
('AR-008', 7, 36),
('AR-008', 8, 1),
('AR-009', 1, 3),
('AR-009', 2, 4),
('AR-010', 3, 6),
('AR-010', 4, 7),
('FR-1', 5, 8),
('FR-1', 6, 18),
('FR-2', 7, 20),
('FR-2', 8, 28),
('FR-3', 1, 62),
('FR-3', 2, 72),
('FR-4', 3, 11),
('FR-4', 4, 18),
('FR-5', 5, 15),
('FR-5', 6, 25),
('FR-6', 7, 35),
('FR-6', 8, 41),
('FR-7', 1, 4),
('FR-7', 2, 10),
('FR-8', 3, 27),
('FR-8', 4, 15),
('FR-9', 5, 51),
('FR-9', 6, 28),
('FR-10', 7, 69),
('FR-10', 8, 27),
('FR-11', 1, 39),
('FR-11', 2, 8),
('FR-12', 3, 40),
('FR-12', 4, 9),
('FR-13', 5, 41),
('FR-13', 6, 29),
('FR-14', 7, 42),
('FR-14', 8, 80),
('FR-15', 1, 43),
('FR-15', 2, 91),
('FR-16', 3, 44),
('FR-16', 4, 15),
('FR-17', 5, 45),
('FR-17', 6, 5),
('FR-18', 7, 46),
('FR-18', 8, 98),
('FR-19', 1, 47),
('FR-19', 2, 110),
('FR-20', 3, 48),
('FR-20', 4, 38),
('FR-21', 5, 49),
('FR-21', 6, 17),
('FR-22', 7, 50),
('FR-22', 8, 24),
('FR-23', 1, 51),
('FR-23', 2, 20),
('FR-24', 3, 52),
('FR-24', 4, 39),
('FR-25', 5, 53),
('FR-25', 6, 59),
('FR-26', 7, 54),
('FR-26', 8, 217);


-- -----------------------------------------------------
-- Table `garden_db`.`pais`
-- -----------------------------------------------------
INSERT INTO pais (codigo_pais, nombre_pais)
VALUES
('USA', 'USA'),
('ESP', 'Spain'),
('FRA', 'France'),
('AUS', 'Australia'),
('UK', 'United Kingdom'),
('ESP', 'España'),
('USA', 'EEUU'),
('UK', 'Inglaterra'),
('FRA', 'Francia'),
('JPN', 'Japón'),
('MEX', 'México'),
('ARG', 'Argentina'),
('COL', 'Colombia'),
('PER', 'Perú'),
('CHI', 'Chile');


-- -----------------------------------------------------
-- Table `garden_db`.`region`
-- -----------------------------------------------------
INSERT INTO region (codigo_region, nombre_region, codigo_pais) VALUES ('US-FL', 'Miami', 'USA'), ('ES-MD', 'Madrid', 'ESP'), ('ES-BCN', 'Barcelona', 'ESP'), ('ES-CAN', 'Islas Canarias', 'ESP'), ('ES-CT', 'Cataluña', 'ESP'), ('ES-CA', 'Cadiz', 'ESP'), ('AU-NSW', 'Nueva Gales del Sur', 'AUS'), ('ES-FU', 'Fuenlabrada', 'ESP'), ('UK-LDN', 'London', 'UK')
INSERT INTO region (codigo_region, nombre_region, codigo_pais) VALUES ('US-CA', 'San Francisco', 'USA'), ('US-NY', 'New York', 'USA'), ('ES-SL', 'San Lorenzo del Escorial', 'ESP'), ('ES-MV', 'Montornes del valles', 'ESP'), ('ES-SCT', 'Santa cruz de Tenerife', 'ESP'), ('ES-ST', 'Sotogrande', 'ESP'), ('ES-HU', 'Humanes', 'ESP'), ('ES-GE', 'Getafe', 'ESP'), ('FR-PAR', 'Paris', 'FRA'), ('US-MA', 'Boston', 'USA'), ('ES-CM', 'Talavera de la Reina', 'ESP'), ('JP-TK', 'Tokyo', 'JPN')


-- -----------------------------------------------------
-- Table `garden_db`.`ciudad`
-- -----------------------------------------------------
INSERT INTO ciudad (codigo_ciudad, nombre_ciudad, codigo_region)
VALUES
(1, 'San Francisco', 'US-CA'),
(2, 'Miami', 'US-FL'),
(3, 'New York', 'US-NY'),
(4, 'Fuenlabrada', 'ES-MD'),
(5, 'Madrid', 'ES-MD'),
(6, 'San Lorenzo del Escorial', 'ES-MD'),
(7, 'Montornes del valles', 'ES-CT'),
(8, 'Santa cruz de Tenerife', 'ES-CAN'),
(9, 'Barcelona', 'ES-BCN'),
(10, 'Canarias', 'ES-CAN'),
(11, 'Sotogrande', 'ES-CA'),
(12, 'Humanes', 'ES-MD'),
(13, 'Getafe', 'ES-MD'),
(14, 'Paris', 'FR-PAR'),
(15, 'Sydney', 'AU-NSW'),
(16, 'London', 'UK-LDN'),
(17, 'Boston', 'US-MA'),
(18, 'Londres', 'UK-LDN'),
(19, 'Talavera de la Reina', 'ES-CM'),
(20, 'Tokyo', 'JP-TK');


-- -----------------------------------------------------
-- Table `garden_db`.`puesto_empleado`
-- -----------------------------------------------------
INSERT INTO puesto_empleado (codigo_puesto_empleado, nombre_puesto, extension)
VALUES
(1, 'Director General', '100'),
(2, 'Subdirector Marketing', '101'),
(3, 'Subdirector Ventas', '102'),
(4, 'Secretaria', '103'),
(5, 'Representante Ventas', '104'),
(6, 'Director Oficina', '105');


-- -----------------------------------------------------
-- Table `garden_db`.`oficina`
-- -----------------------------------------------------
INSERT INTO oficina (codigo_oficina, codigo_ciudad, codigo_postal)
VALUES
(1, 1, '94105'),
(2, 2, '33101'),
(3, 3, '10001'),
(4, 4, '28942'),
(5, 5, '28001'),
(6, 6, '28200'),
(7, 7, '08170'),
(8, 8, '38001'),
(9, 9, '08001'),
(10, 10, '38001'),
(11, 11, '11310'),
(12, 12, '28970'),
(13, 13, '28901'),
(14, 14, '75001'),
(15, 15, '2000'),
(16, 16, 'SW1A 1AA'),
(17, 17, '02201'),
(18, 18, 'NW1 2DN'),
(19, 19, '45600'),
(20, 20, '163-8001'),
(21, 1, '94110'),
(22, 2, '33102'),
(23, 3, '10002'),
(24, 4, '28943'),
(25, 5, '28002'),
(26, 6, '28201'),
(27, 7, '08171'),
(28, 8, '38002'),
(29, 9, '08002'),
(30, 10, '38002'),
(31, 11, '11311'),
(32, 12, '28971'),
(33, 13, '28902'),
(34, 14, '75002'),
(35, 15, '2001'),
(36, 16, 'SW1A 1AB'),
(37, 17, '02202'),
(38, 18, 'NW1 2DP'),
(39, 19, '45601'),
(40, 20, '163-8002');


-- -----------------------------------------------------
-- Table `garden_db`.`empleado`
-- -----------------------------------------------------
INSERT INTO empleado (codigo_empleado, nombre_empleado, apellido1_empleado, apellido2_empleado, email_empleado, codigo_oficina, codigo_jefe, codigo_puesto_empleado)
VALUES
(12345678, 'Juan', 'García', 'López', 'juan.garcia@example.com', 1, NULL, 1),
(23456789, 'María', 'Martínez', 'González', 'maria.martinez@example.com', 1, 12345678, 2),
(34567890, 'Antonio', 'Fernández', 'Pérez', 'antonio.fernandez@example.com', 2, NULL, 3),
(45678901, 'Ana', 'López', 'Sánchez', 'ana.lopez@example.com', 2, 34567890, 3),
(56789012, 'Francisco', 'González', 'Martínez', 'francisco.gonzalez@example.com', 3, NULL, 4),
(67890123, 'Isabel', 'Martínez', 'Fernández', 'isabel.martinez@example.com', 3, 56789012, 4),
(78901234, 'David', 'Pérez', 'López', 'david.perez@example.com', 4, NULL, 5),
(89012345, 'Carmen', 'Sánchez', 'García', 'carmen.sanchez@example.com', 4, 78901234, 5),
(90123456, 'Manuel', 'García', 'Martínez', 'manuel.garcia@example.com', 5, NULL, 5),
(12345677, 'Laura', 'Martínez', 'Sánchez', 'laura.martinez@example.com', 5, 90123456, 5),
(23456788, 'Pedro', 'González', 'López', 'pedro.gonzalez@example.com', 6, NULL, 5),
(34567899, 'Sara', 'López', 'Martínez', 'sara.lopez@example.com', 6, 23456788, 5),
(45678910, 'Javier', 'Fernández', 'González', 'javier.fernandez@example.com', 7, NULL, 5),
(56789021, 'Elena', 'Pérez', 'Sánchez', 'elena.perez@example.com', 7, 45678910, 5),
(67890132, 'Carlos', 'Sánchez', 'Martínez', 'carlos.sanchez@example.com', 8, NULL, 5),
(78901243, 'Marta', 'Martínez', 'Fernández', 'marta.martinez@example.com', 8, 67890132, 5),
(89012354, 'José', 'González', 'López', 'jose.gonzalez@example.com', 9, NULL, 5),
(90123465, 'Lucía', 'López', 'Martínez', 'lucia.lopez@example.com', 9, 89012354, 5),
(12345676, 'Alejandro', 'Fernández', 'González', 'alejandro.fernandez@example.com', 10, NULL, 5),
(23456787, 'Paula', 'Pérez', 'López', 'paula.perez@example.com', 10, 12345676, 5),
(34567898, 'Andrés', 'Sánchez', 'Martínez', 'andres.sanchez@example.com', 11, NULL, 5),
(45678909, 'Sofía', 'Martínez', 'Fernández', 'sofia.martinez@example.com', 11, 34567898, 5),
(56789020, 'Diego', 'González', 'López', 'diego.gonzalez@example.com', 12, NULL, 5),
(67890131, 'Eva', 'López', 'Martínez', 'eva.lopez@example.com', 12, 56789020, 5),
(78901242, 'Marcos', 'Fernández', 'González', 'marcos.fernandez@example.com', 13, NULL, 5),
(89012353, 'Marina', 'Pérez', 'López', 'marina.perez@example.com', 13, 78901242, 5),
(90123464, 'Lucas', 'Sánchez', 'Martínez', 'lucas.sanchez@example.com', 14, NULL, 5),
(12345675, 'Natalia', 'Martínez', 'Fernández', 'natalia.martinez@example.com', 14, 90123464, 5),
(23456786, 'Hugo', 'González', 'López', 'hugo.gonzalez@example.com', 15, NULL, 5),
(34567897, 'Cristina', 'López', 'Martínez', 'cristina.lopez@example.com', 15, 23456786, 5),
(45678908, 'Iker', 'Fernández', 'González', 'iker.fernandez@example.com', 16, NULL, 5),
(56789019, 'Lorena', 'Pérez', 'López', 'lorena.perez@example.com', 16, 45678908, 5),
(67890130, 'Jorge', 'Sánchez', 'Martínez', 'jorge.sanchez@example.com', 17, NULL, 5),
(78901241, 'Raquel', 'Martínez', 'Fernández', 'raquel.martinez@example.com', 17, 67890130, 5),
(89012352, 'Mateo', 'González', 'López', 'mateo.gonzalez@example.com', 18, NULL, 5),
(90123463, 'Claudia', 'López', 'Martínez', 'claudia.lopez@example.com', 18, 89012352, 5),
(12345674, 'Oscar', 'Fernández', 'González', 'oscar.fernandez@example.com', 19, NULL, 5),
(23456785, 'Inés', 'Pérez', 'López', 'ines.perez@example.com', 19, 12345674, 5),
(34567896, 'Aitor', 'Sánchez', 'Martínez', 'aitor.sanchez@example.com', 20, NULL, 5),
(45678907, 'Ainhoa', 'Martínez', 'Fernández', 'ainhoa.martinez@example.com', 20, 34567896, 5),
(56789018, 'Guillermo', 'González', 'López', 'guillermo.gonzalez@example.com', 21, NULL, 5),
(67890129, 'Celia', 'López', 'Martínez', 'celia.lopez@example.com', 21, 56789018, 5),
(78901240, 'Alberto', 'Fernández', 'González', 'alberto.fernandez@example.com', 22, NULL, 5),
(89012351, 'Eva', 'Pérez', 'López', 'eva.perez@example.com', 22, 78901240, 5),
(90123462, 'Ivan', 'Sánchez', 'Martínez', 'ivan.sanchez@example.com', 23, NULL, 5),
(12345673, 'Marina', 'Martínez', 'Fernández', 'marina.martinez@example.com', 23, 90123462, 5),
(23456784, 'Roberto', 'González', 'López', 'roberto.gonzalez@example.com', 24, NULL, 5),
(34567895, 'Lara', 'López', 'Martínez', 'lara.lopez@example.com', 24, 23456784, 5);


-- -----------------------------------------------------
-- Table `garden_db`.`cliente`
-- -----------------------------------------------------
INSERT INTO cliente (codigo_cliente, nombre_cliente, codigo_ciudad, codigo_postal, limite_credito, codigo_rep_ventas)
VALUES
(10001, 'GoldFish Garden', 1, 28001, 3000, 78901234),
(10002, 'Gardening Associates', 2, 28002, 6000, 89012345),
(10003, 'Gerudo Valley', 3, 28003, 12000, 90123456),
(10004, 'Tendo Garden', 4, 28004, 600000, 12345677),
(10005, 'Lasas S.A.', 5, 28005, 154310, 23456788),
(10006, 'Beragua', 6, 28006, 20000, 34567899),
(10007, 'Club Golf Puerta del hierro', 7, 28007, 40000, 45678910),
(10008, 'Naturagua', 8, 28008, 32000, 56789021),
(10009, 'DaraDistribuciones', 9, 28009, 50000, 67890132),
(10010, 'Madrileña de riegos', 10, 28010, 16481, 78901243),
(10011, 'Camunas Jardines S.L.', 11, 28011, 321000, 89012354),
(10012, 'Dardena S.A.', 12, 28012, 1500, 90123465),
(10013, 'Jardin de Flores', 13, 28013, 3500, 12345676),
(10014, 'Flores Marivi', 14, 28014, 5050, 23456787),
(10015, 'Flowers', 15, 28015, 30000, 34567898),
(10016, 'Naturajardin', 16, 28016, 60000, 45678909),
(10017, 'Golf S.A.', 17, 28017, 7430, 56789020),
(10018, 'Americh Golf Management SL', 18, 28018, 4500, 67890131),
(10019, 'Aloha', 19, 28019, 76000, 78901242),
(10020, 'El Prat', 20, 28020, 100500, 89012353),
(10021, 'Sotogrande', 1, 28021, 8040, 90123464),
(10022, 'Vivero Humanes', 2, 28022, 5500, 12345675),
(10023, 'Fuenla City', 3, 28023, 7500, 23456786),
(10024, 'Jardines y Mansiones Cactus SL', 4, 28024, 3250, 34567897),
(10025, 'Jardinerías Matías SL', 5, 28025, 10000, 45678908),
(10026, 'Agrojardin', 6, 28026, 8000, 56789019),
(10027, 'Top Campo', 7, 28027, 10500, 67890130),
(10028, 'Jardineria Sara', 8, 28028, 4000, 78901241),
(10029, 'Campohermoso', 9, 28029, 7000, 89012352),
(10030, 'France Telecom', 10, 28030, 60000, 90123463),
(10031, 'Musée du Louvre', 11, 28031, 100000, 12345674),
(10032, 'Tutifruti S.A', 12, 28032, 5430, 23456785),
(10033, 'Flores S.L.', 13, 28033, 8000, 34567896),
(10034, 'The Magic Garden', 14, 28034, 12000, 45678907),
(10035, 'El Jardin Viviente S.L', 15, 28035, 7000, 56789018),
(10036, 'Los Girasoles', 16, 28036, 9500, 67890129),
(10037, 'Jardinería y más', 17, 28037, 5600, 78901240),
(10038, 'Jardinería Feliz', 18, 28038, 7500, 89012351),
(10039, 'Campo Verde', 19, 28039, 6300, 90123462),
(10040, 'Plantas y más', 20, 28040, 9000, 12345673),
(10041, 'Jardines del Edén', 1, 28041, 4000, 23456784),
(10042, 'Flores Frescas', 2, 28042, 20000, 34567895);

-- -----------------------------------------------------
-- Table `garden_db`.`estado`
-- -----------------------------------------------------
INSERT INTO estado (nombre)
VALUES
('Entregado'),
('Rechazado'),
('Pendiente');

-- -----------------------------------------------------
-- Table `garden_db`.`pedido`
-- -----------------------------------------------------
INSERT INTO pedido (codigo_pedido, fecha_pedido, fecha_esperada, fecha_entrega, comentarios, codigo_cliente, codigo_estado)
VALUES
(1, '2008-01-10', '2008-01-15', '2008-01-13', 'Pedido de productos de jardinería.', 10001, 1),
(2, '2008-02-05', '2008-02-10', '2008-02-09', 'Entrega urgente.', 10002, 1),
(3, '2008-03-20', '2008-03-25', '2008-03-23', 'Pedido para el nuevo proyecto de paisajismo.', 10003, 1),
(4, '2008-04-15', '2008-04-20', '2008-04-19', 'Reorden de productos agotados.', 10004, 1),
(5, '2008-05-03', '2008-05-08', '2008-05-07', 'Pedido regular de suministros.', 10005, 1),
(6, '2008-06-12', '2008-06-17', '2008-06-16', 'Entrega parcial debido a problemas de inventario.', 10006, 2),
(7, '2008-07-01', '2008-07-06', NULL, 'Pedido retrasado por mal tiempo.', 10007, 3),
(8, '2008-08-18', '2008-08-23', '2008-08-22', 'Pedido de plantas exóticas.', 10008, 1),
(9, '2008-09-14', '2008-09-19', '2008-09-18', 'Pedido mensual.', 10009, 1),
(10, '2008-10-30', '2008-11-04', '2008-11-02', 'Entrega de muestras para nuevos clientes.', 10010, 1),
(11, '2008-11-25', '2008-11-30', '2008-11-28', 'Pedido de herramientas de jardín.', 10011, 1),
(12, '2008-12-10', '2008-12-15', '2008-12-13', 'Pedido de arbustos.', 10012, 1),
(13, '2009-01-03', '2009-01-08', '2009-01-06', 'Pedido urgente para evento especial.', 10001, 1),
(14, '2009-02-08', '2009-02-13', '2009-02-12', 'Pedido regular.', 10002, 1),
(15, '2009-03-21', '2009-03-26', '2009-03-24', 'Pedido para proyecto de paisajismo comercial.', 10003, 1),
(16, '2009-04-16', '2009-04-21', '2009-04-20', 'Reorden de productos agotados.', 10004, 1),
(17, '2009-05-05', '2009-05-10', '2009-05-09', 'Entrega parcial.', 10005, 2),
(18, '2009-06-22', '2009-06-27', NULL, 'Pedido retrasado debido a problemas de transporte.', 10006, 3),
(19, '2009-07-10', '2009-07-15', '2009-07-14', 'Entrega programada para nuevo proyecto de construcción.', 10008, 1),
(20, '2009-08-19', '2009-08-24', '2009-08-23', 'Pedido regular de suministros de jardinería.', 10009, 1),
(21, '2009-09-16', '2009-09-21', '2009-09-20', 'Pedido para la temporada de otoño.', 10011, 1),
(22, '2009-10-03', '2009-10-08', '2009-10-07', 'Entrega urgente de herramientas de jardín.', 10012, 1),
(23, '2009-11-28', '2009-12-03', '2009-12-01', 'Pedido para evento navideño.', 10013, 1),
(24, '2009-12-10', '2009-12-15', '2009-12-14', 'Pedido regular de plantas de interior.', 10014, 1),
(25, '2010-01-22', '2010-01-27', '2010-01-26', 'Pedido de productos de jardinería.', 10015, 1),
(26, '2010-02-18', '2010-02-23', '2010-02-22', 'Entrega parcial debido a problemas de inventario.', 10016, 2),
(27, '2010-03-10', '2010-03-15', '2010-03-14', 'Pedido regular de suministros de jardinería.', 10017, 1),
(28, '2010-04-05', '2010-04-10', '2010-04-09', 'Entrega de muestras para nuevos clientes.', 10018, 1),
(29, '2010-05-19', '2010-05-24', '2010-05-23', 'Pedido para proyecto de paisajismo comercial.', 10019, 1),
(30, '2010-06-14', '2010-06-19', '2010-06-18', 'Reorden de productos agotados.', 10020, 1),
(31, '2010-07-01', '2010-07-06', '2010-07-05', 'Pedido de herramientas de jardín.', 10021, 1),
(32, '2010-08-23', '2010-08-28', '2010-08-27', 'Entrega urgente para proyecto de construcción.', 10022, 1),
(33, '2010-09-15', '2010-09-20', '2010-09-19', 'Pedido para nueva exposición de plantas.', 10023, 1),
(34, '2010-10-07', '2010-10-12', '2010-10-11', 'Entrega regular de suministros de jardinería.', 10024, 1),
(35, '2010-11-20', '2010-11-25', '2010-11-24', 'Pedido regular de plantas de interior.', 10025, 1),
(36, '2010-12-08', '2010-12-13', '2010-12-12', 'Pedido para evento navideño.', 10026, 1),
(37, '2011-01-14', '2011-01-19', '2011-01-18', 'Entrega de productos de jardinería para proyecto de paisajismo.', 10027, 1),
(38, '2011-02-09', '2011-02-14', '2011-02-13', 'Pedido para evento de inauguración.', 10028, 1),
(39, '2011-03-25', '2011-03-30', '2011-03-29', 'Entrega urgente de herramientas de jardín.', 10029, 1),
(40, '2011-04-20', '2011-04-25', '2011-04-24', 'Pedido para proyecto de paisajismo.', 10030, 1),
(41, '2011-05-03', '2011-05-08', '2011-05-07', 'Entrega regular de suministros.', 10031, 1),
(42, '2011-06-12', '2011-06-17', '2011-06-16', 'Pedido urgente de productos de jardinería.', 10032, 1),
(43, '2011-07-08', '2011-07-13', '2011-07-12', 'Entrega de muestras para nuevos clientes.', 10033, 1),
(44, '2011-08-16', '2011-08-21', '2011-08-20', 'Pedido regular de suministros de jardinería.', 10034, 1),
(45, '2011-09-22', '2011-09-27', '2011-09-26', 'Entrega de herramientas de jardín para nueva tienda.', 10035, 1),
(46, '2011-10-30', '2011-11-04', '2011-11-03', 'Pedido para proyecto de paisajismo comercial.', 10036, 1),
(47, '2011-11-17', '2011-11-22', '2011-11-21', 'Entrega de productos de jardinería para evento especial.', 10037, 1),
(48, '2011-12-28', '2012-01-02', '2012-01-01', 'Pedido urgente para proyecto de construcción.', 10038, 1),
(49, '2012-01-05', '2012-01-10', '2012-01-09', 'Entrega regular de suministros de jardinería.', 10039, 1),
(50, '2012-02-10', '2012-02-15', '2012-02-14', 'Pedido para nuevo proyecto de paisajismo.', 10040, 1);


-- -----------------------------------------------------
-- Table `garden_db`.`detalle_pedido`
-- -----------------------------------------------------
INSERT INTO detalle_pedido (codigo_producto, codigo_pedido, cantidad, precio_unidad, numero_linea)
VALUES
('AR-001', 1, 10, 70, 1),
('AR-002', 2, 40, 4, 2),
('AR-003', 3, 25, 19, 3),
('AR-004', 4, 15, 14, 4),
('AR-005', 5, 23, 29, 5),
('AR-006', 6, 3, 8, 6),
('AR-007', 7, 7, 5, 7),
('AR-008', 8, 50, 6, 8),
('AR-009', 9, 20, 64, 9),
('AR-010', 10, 12, 462, 10),
('FR-1', 11, 67, 9, 11),
('FR-2', 12, 5, 266, 12),
('FR-3', 13, 120, 65, 13),
('FR-4', 14, 32, 25, 14),
('FR-5', 15, 11, 10, 15),
('FR-6', 16, 30, 59, 16),
('FR-7', 17, 24, 11, 17),
('FR-8', 18, 42, 32, 18),
('FR-9', 19, 4, 100, 19),
('FR-10', 20, 17, 1, 20),
('FR-11', 21, 38, 91, 21),
('FR-12', 22, 21, 75, 22),
('FR-13', 23, 1, 57, 23),
('FR-14', 24, 80, 13, 24),
('FR-15', 25, 450, 12, 25),
('FR-16', 26, 180, 22, 26),
('FR-17', 27, 290, 18, 27),
('FR-18', 28, 8, 15, 28),
('FR-19', 29, 13, 7, 29),
('FR-20', 30, 2, 20, 30),
('FR-21', 31, 6, 69, 31),
('FR-22', 32, 9, 30, 32),
('FR-23', 33, 14, 99, 33),
('FR-24', 34, 22, 28, 34),
('FR-25', 35, 110, 31, 35),
('FR-26', 36, 29, 111, 36),
('AR-001', 37, 423, 45, 37),
('AR-002', 38, 212, 2, 38),
('AR-003', 39, 150, 49, 39),
('AR-004', 40, 56, 38, 40),
('AR-005', 41, 55, 39, 41),
('AR-006', 42, 36, 115, 42),
('AR-007', 43, 72, 23, 43),
('AR-008', 44, 203, 21, 44),
('AR-009', 45, 45, 16, 45),
('AR-010', 46, 44, 18, 46),
('FR-1', 47, 70, 159, 47),
('FR-2', 48, 65, 113, 48),
('FR-3', 49, 69, 27, 49),
('FR-4', 50, 34, 231, 50);


-- -----------------------------------------------------
-- Table `garden_db`.`contacto`
-- -----------------------------------------------------
INSERT INTO contacto (codigo_contacto, primer_nombre_contacto, primer_apellido_contacto, email_contacto, segundo_apellido_contacto, segundo_nombre_contacto, codigo_cliente)
VALUES
(1, 'Juan', 'García', 'juangarcia@example.com', 'López', 'Manuel', 10001),
(2, 'Ana', 'Martínez', 'anamartinez@example.com', 'Gómez', 'Isabel', 10002),
(3, 'Carlos', 'Fernández', 'carlosfernandez@example.com', 'Martín', 'Miguel', 10003),
(4, 'Laura', 'Pérez', 'lauraperez@example.com', 'Jiménez', 'María', 10004),
(5, 'Pedro', 'Sánchez', 'pedrosanchez@example.com', 'Díaz', 'José', 10005),
(6, 'Sofía', 'González', 'sofiagonzalez@example.com', 'Ruiz', 'Lucía', 10006),
(7, 'Daniel', 'Rodríguez', 'danielrodriguez@example.com', 'Hernández', 'Antonio', 10007),
(8, 'Lucía', 'López', 'lucialopez@example.com', 'García', 'María', 10008),
(9, 'Manuel', 'Martín', 'manuelmartin@example.com', 'Fernández', 'David', 10009),
(10, 'María', 'Gómez', 'mariagomez@example.com', 'Pérez', 'Andrea', 10010),
(11, 'Miguel', 'Jiménez', 'migueljimenez@example.com', 'Sánchez', 'Ana', 10011),
(12, 'Isabel', 'Díaz', 'isabeldiaz@example.com', 'González', 'Luis', 10012),
(13, 'José', 'Ruiz', 'joseruiz@example.com', 'Rodríguez', 'Elena', 10013),
(14, 'María', 'Hernández', 'mariahernandez@example.com', 'López', 'Javier', 10014),
(15, 'Antonio', 'García', 'antoniogarcia@example.com', 'Martínez', 'Raquel', 10015),
(16, 'David', 'Fernández', 'davidfernandez@example.com', 'Sánchez', 'Cristina', 10016),
(17, 'Andrea', 'Pérez', 'andreaperez@example.com', 'González', 'Daniel', 10017),
(18, 'Ana', 'Sánchez', 'anasanchez@example.com', 'Ruiz', 'Sara', 10018),
(19, 'Luis', 'González', 'luisgonzalez@example.com', 'Jiménez', 'Juan', 10019),
(20, 'Elena', 'Ruiz', 'elenaruiz@example.com', 'Díaz', 'Natalia', 10020),
(21, 'Javier', 'Rodríguez', 'javierrodriguez@example.com', 'Martín', 'Paula', 10021),
(22, 'Raquel', 'López', 'raquellopez@example.com', 'Gómez', 'Sergio', 10022),
(23, 'Cristina', 'Martínez', 'cristinamartinez@example.com', 'Hernández', 'Irene', 10023),
(24, 'Daniel', 'Fernández', 'danielfernandez@example.com', 'García', 'Marcos', 10024),
(25, 'Sara', 'Gómez', 'saragomez@example.com', 'Martínez', 'Eva', 10025),
(26, 'Juan', 'Jiménez', 'juanmiguel@example.com', 'Sánchez', 'Sergio', 10026),
(27, 'Natalia', 'Díaz', 'nataliadiaz@example.com', 'González', 'Ana', 10027),
(28, 'Paula', 'Martín', 'paulamartin@example.com', 'Ruiz', 'Francisco', 10028),
(29, 'Sergio', 'García', 'sergiogar@example.com', 'Rodríguez', 'Elena', 10029),
(30, 'Irene', 'Hernández', 'irenehernandez@example.com', 'López', 'Ángel', 10030),
(31, 'Marcos', 'García', 'marcosgarcia@example.com', 'Martínez', 'Carmen', 10031),
(32, 'Eva', 'Martínez', 'evamartinez@example.com', 'Fernández', 'Pablo', 10032),
(33, 'Sergio', 'García', 'sergiogarcia@example.com', 'Sánchez', 'Sandra', 10033),
(34, 'Ana', 'Fernández', 'anafernandez@example.com', 'González', 'Adrián', 10034),
(35, 'Francisco', 'Martín', 'franciscomartin@example.com', 'Ruiz', 'Marina', 10035),
(36, 'Elena', 'García', 'elenagarcia@example.com', 'Rodríguez', 'Jorge', 10036),
(37, 'Ángel', 'Martínez', 'angelmartinez@example.com', 'López', 'Cristina', 10037),
(38, 'Carmen', 'Martínez', 'carmenmartinez@example.com', 'García', 'Diego', 10038),
(39, 'Pablo', 'García', 'pablogarcia@example.com', 'Martínez', 'Alba', 10039),
(40, 'Sandra', 'Fernández', 'sandrafernandez@example.com', 'González', 'Óscar', 10040),
(41, 'Adrián', 'Martín', 'adrianmartin@example.com', 'Ruiz', 'Lucía', 10041),
(42, 'Marina', 'García', 'marinagarcia@example.com', 'Rodríguez', 'Marcos', 10042);


-- -----------------------------------------------------
-- Table `garden_db`.`metodo_pago`
-- -----------------------------------------------------
INSERT INTO metodo_pago (nombre_met_pago)
VALUES
('PayPal'),
('Transferencia'),
('Cheque');


-- -----------------------------------------------------
-- Table `garden_db`.`pago`
-- -----------------------------------------------------
INSERT INTO pago (fecha_pago, total_pago, codigo_cliente, codigo_met_pago)
VALUES
('2008-05-21', 2000, 10001, 1),
('2009-09-15', 2000, 10002, 2),
('2010-11-28', 5000, 10003, 3),
('2011-07-03', 5000, 10004, 1),
('2012-04-18', 926, 10005, 2),
('2013-12-09', 20000, 10006, 3),
('2014-08-17', 20000, 10007, 1),
('2015-06-22', 20000, 10008, 2),
('2016-10-30', 20000, 10009, 3),
('2017-03-04', 1849, 10010, 1),
('2018-09-01', 23794, 10011, 2),
('2019-05-12', 2390, 10012, 3),
('2020-08-28', 929, 10013, 1),
('2008-12-05', 2246, 10014, 2),
('2009-10-14', 4160, 10015, 3),
('2010-07-26', 2081, 10016, 1),
('2011-11-01', 10000, 10017, 2),
('2012-04-19', 4399, 10018, 3),
('2013-09-03', 232, 10019, 1),
('2014-06-11', 272, 10020, 2),
('2015-03-25', 18846, 10021, 3),
('2016-12-07', 10972, 10022, 1),
('2017-07-09', 8489, 10023, 2),
('2018-04-20', 7863, 10024, 3),
('2019-08-03', 3321, 10025, 1),
('2020-05-16', 1171, 10026, 2),
('2008-06-28', 5000, 10027, 3),
('2009-01-30', 5000, 10028, 1),
('2010-03-17', 926, 10029, 2),
('2011-09-24', 20000, 10030, 3),
('2012-11-05', 20000, 10031, 1),
('2013-10-12', 20000, 10032, 2),
('2014-08-08', 20000, 10033, 3),
('2015-05-27', 1849, 10034, 1),
('2016-08-21', 23794, 10035, 2),
('2017-12-14', 2390, 10036, 3),
('2018-06-29', 929, 10037, 1),
('2019-03-05', 2246, 10038, 2),
('2020-09-18', 4160, 10039, 3);


-- -----------------------------------------------------
-- Table `garden_db`.`tipo_telefono`
-- -----------------------------------------------------
INSERT INTO tipo_telefono (codigo_tipo_telefono, nombre_tipo_telefono)
VALUES
(1, 'Móvil'),
(2, 'Fijo'),
(3, 'Trabajo'),
(4, 'Fax');



-- -----------------------------------------------------
-- Table `garden_db`.`telefono_cliente`
-- -----------------------------------------------------
INSERT INTO telefono_cliente (telefono_cliente, codigo_cliente, codigo_tipo_telefono)
VALUES
('666123456', 10001, 1),
('911234567', 10001, 2),
('600987654', 10002, 1),
('914567890', 10002, 2),
('622345678', 10003, 1),
('918765432', 10003, 2),
('633456789', 10004, 1),
('915678901', 10004, 2),
('644567890', 10005, 1),
('916789012', 10005, 2),
('655678901', 10006, 1),
('917890123', 10006, 2),
('666789012', 10007, 1),
('918901234', 10007, 2),
('677890123', 10008, 1),
('919012345', 10008, 2),
('688901234', 10009, 1),
('920123456', 10009, 2),
('699012345', 10010, 1),
('921234567', 10010, 2),
('600987654', 10011, 1),
('922345678', 10011, 2),
('611234567', 10012, 1),
('923456789', 10012, 2),
('622345678', 10013, 1),
('924567890', 10013, 2),
('633456789', 10014, 1),
('925678901', 10014, 2),
('644567890', 10015, 1),
('926789012', 10015, 2),
('655678901', 10016, 1),
('927890123', 10016, 2),
('666789012', 10017, 1),
('928901234', 10017, 2),
('677890123', 10018, 1),
('929012345', 10018, 2),
('688901234', 10019, 1),
('930123456', 10019, 2),
('699012345', 10020, 1),
('931234567', 10020, 2),
('600987654', 10021, 1),
('932345678', 10021, 2),
('611234567', 10022, 1),
('933456789', 10022, 2),
('622345678', 10023, 1),
('934567890', 10023, 2),
('633456789', 10024, 1),
('935678901', 10024, 2),
('644567890', 10025, 1),
('936789012', 10025, 2),
('655678901', 10026, 1),
('937890123', 10026, 2),
('666789012', 10027, 1),
('938901234', 10027, 2);


-- -----------------------------------------------------
-- Table `garden_db`.`tipo_direccion`
-- -----------------------------------------------------
INSERT INTO tipo_direccion (codigo_tipo_dir, nombre_tipo_dir)
VALUES
(1, 'Casa'),
(2, 'Oficina'),
(3, 'Apartamento'),
(4, 'Otro');


-- -----------------------------------------------------
-- Table `garden_db`.`direccion`
-- -----------------------------------------------------
INSERT INTO direccion (nombre_calle, numero_direccion, nombre_barrio, codigo_cliente, codigo_tipo_dir)
VALUES
('Calle de la Palmera', '123', 'Los Rosales', 10001, 1),
('Avenida de la Paz', '456', 'El Paraiso', 10002, 2),
('Calle del Sol', '789', 'La Colina', 10003, 3),
('Paseo de la Montaña', '1011', 'Las Acacias', 10004, 1),
('Calle del Rio', '1213', 'Los Pinos', 10005, 2),
('Avenida del Mar', '1415', 'La Cascada', 10006, 3),
('Calle del Bosque', '1617', 'La Florida', 10007, 1),
('Avenida del Cielo', '1819', 'El Poblado', 10008, 2),
('Calle de las Flores', '2021', 'Las Palmeras', 10009, 3),
('Avenida de los Pajaros', '2223', 'La Pradera', 10010, 1),
('Calle del Jazmin', '2425', 'Los Almendros', 10011, 2),
('Avenida de la Luna', '2627', 'Las Orquideas', 10012, 3),
('Calle del Olivo', '2829', 'La Ribera', 10013, 1),
('Avenida de las Estrellas', '3031', 'El Soto', 10014, 2),
('Calle de la Fuente', '3233', 'Las Brisas', 10015, 3),
('Avenida de la Playa', '3435', 'El Carmen', 10016, 1),
('Calle de la Montana', '3637', 'Las Lomas', 10017, 2),
('Avenida del Rio', '3839', 'La Vega', 10018, 3),
('Calle de la Arena', '4041', 'El Prado', 10019, 1),
('Avenida del Bosque', '4243', 'Las Cruces', 10020, 2),
('Calle de la Paz', '4445', 'La Aurora', 10021, 3),
('Avenida de la Cuesta', '4647', 'El Recreo', 10022, 1),
('Calle de la Palmera', '4849', 'Las Margaritas', 10023, 2),
('Avenida de los Olivos', '5051', 'La Cañada', 10024, 3),
('Calle de los Pinos', '5253', 'El Molino', 10025, 1),
('Avenida de los Naranjos', '5455', 'Las Encinas', 10026, 2),
('Calle de la Luna', '5657', 'La Morada', 10027, 3),
('Avenida de los Girasoles', '5859', 'El Portal', 10028, 1),
('Calle de la Cascada', '6061', 'Las Rosas', 10029, 2),
('Avenida de los Flamencos', '6263', 'La Alameda', 10030, 3),
('Calle de la Espiga', '6465', 'El Sauce', 10031, 1),
('Avenida de las Palmeras', '6667', 'Las Violetas', 10032, 2),
('Calle de la Estrella', '6869', 'La Hacienda', 10033, 3),
('Avenida de las Rosas', '7071', 'El Parque', 10034, 1),
('Calle de la Montaña', '7273', 'Las Acacias', 10035, 2),
('Avenida de los Cedros', '7475', 'La Esperanza', 10036, 3),
('Calle de la Playa', '7677', 'El Ensueño', 10037, 1),
('Avenida de las Cañas', '7879', 'Las Palmeras', 10038, 2),
('Calle de la Fuente', '8081', 'La Cumbre', 10039, 3),
('Avenida de las Flores', '8283', 'El Mirador', 10040, 1),
('Calle de la Paz', '8485', 'Las Colinas', 10041, 2),
('Avenida de la Montaña', '8687', 'La Serenidad', 10042, 3);


-- -----------------------------------------------------
-- Table `garden_db`.`direccion_oficina`
-- -----------------------------------------------------
INSERT INTO direccion_oficina (nombre_calle, numero_direccion, nombre_barrio, codigo_oficina, codigo_tipo_dir)
VALUES
('Calle de la Palmera', '123', 'Los Rosales', 1, 1),
('Avenida de la Paz', '456', 'El Paraiso', 2, 2),
('Calle del Sol', '789', 'La Colina', 3, 3),
('Paseo de la Montaña', '1011', 'Las Acacias', 4, 1),
('Calle del Rio', '1213', 'Los Pinos', 5, 2),
('Avenida del Mar', '1415', 'La Cascada', 6, 3),
('Calle del Bosque', '1617', 'La Florida', 7, 1),
('Avenida del Cielo', '1819', 'El Poblado', 8, 2),
('Calle de las Flores', '2021', 'Las Palmeras', 9, 3),
('Avenida de los Pajaros', '2223', 'La Pradera', 10, 1),
('Calle del Jazmin', '2425', 'Los Almendros', 11, 2),
('Avenida de la Luna', '2627', 'Las Orquideas', 12, 3),
('Calle del Olivo', '2829', 'La Ribera', 13, 1),
('Avenida de las Estrellas', '3031', 'El Soto', 14, 2),
('Calle de la Fuente', '3233', 'Las Brisas', 15, 3),
('Avenida de la Playa', '3435', 'El Carmen', 16, 1),
('Calle de la Montana', '3637', 'Las Lomas', 17, 2),
('Avenida del Rio', '3839', 'La Vega', 18, 3),
('Calle de la Arena', '4041', 'El Prado', 19, 1),
('Avenida del Bosque', '4243', 'Las Cruces', 20, 2),
('Calle de la Paz', '4445', 'La Aurora', 21, 3),
('Avenida de la Cuesta', '4647', 'El Recreo', 22, 1),
('Calle de la Palmera', '4849', 'Las Margaritas', 23, 2),
('Avenida de los Olivos', '5051', 'La Cañada', 24, 3),
('Calle de los Pinos', '5253', 'El Molino', 25, 1),
('Avenida de los Naranjos', '5455', 'Las Encinas', 26, 2),
('Calle de la Luna', '5657', 'La Morada', 27, 3),
('Avenida de los Girasoles', '5859', 'El Portal', 28, 1),
('Calle de la Cascada', '6061', 'Las Rosas', 29, 2),
('Avenida de los Flamencos', '6263', 'La Alameda', 30, 3),
('Calle de la Espiga', '6465', 'El Sauce', 31, 1),
('Avenida de las Palmeras', '6667', 'Las Violetas', 32, 2),
('Calle de la Estrella', '6869', 'La Hacienda', 33, 3),
('Avenida de las Rosas', '7071', 'El Parque', 34, 1),
('Calle de la Montaña', '7273', 'Las Acacias', 35, 2),
('Avenida de los Cedros', '7475', 'La Esperanza', 36, 3),
('Calle de la Playa', '7677', 'El Ensueño', 37, 1),
('Avenida de las Cañas', '7879', 'Las Palmeras', 38, 2),
('Calle de la Fuente', '8081', 'La Cumbre', 39, 3),
('Avenida de las Flores', '8283', 'El Mirador', 40, 1);


-- -----------------------------------------------------
-- Table `garden_db`.`telefono_oficina`
-- -----------------------------------------------------
INSERT INTO telefono_oficina (telefono_oficina, codigo_tipo_telefono, codigo_oficina)
VALUES
('123456789', 1, 1),
('987654321', 2, 2),
('456789123', 3, 3),
('789123456', 1, 4),
('321654987', 2, 5),
('654987321', 3, 6),
('987321654', 1, 7),
('654789123', 2, 8),
('321789456', 3, 9),
('456123789', 1, 10),
('789456123', 2, 11),
('123789456', 3, 12),
('456321789', 1, 13),
('789654123', 2, 14),
('123456789', 3, 15),
('456789123', 1, 16),
('789123456', 2, 17),
('123456789', 3, 18),
('456789123', 1, 19),
('789123456', 2, 20),
('123456789', 3, 21),
('456789123', 1, 22),
('789123456', 2, 23),
('123456789', 3, 24),
('456789123', 1, 25),
('789123456', 2, 26),
('123456789', 3, 27),
('456789123', 1, 28),
('789123456', 2, 29),
('123456789', 3, 30),
('456789123', 1, 31),
('789123456', 2, 32),
('123456789', 3, 33),
('456789123', 1, 34),
('789123456', 2, 35),
('123456789', 3, 36),
('456789123', 1, 37),
('789123456', 2, 38),
('123456789', 3, 39),
('456789123', 1, 40);