-- Crear la base de datos si no existe
CREATE DATABASE IF NOT EXISTS sensor_data;

-- Usar la base de datos
USE sensor_data;

-- Crear tabla para datos del sensor de flujo
CREATE TABLE IF NOT EXISTS flow_sensor_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    timestamp DATETIME NOT NULL,
    flow_value FLOAT NOT NULL
);

-- Crear tabla para datos del sensor de presión
CREATE TABLE IF NOT EXISTS pressure_sensor_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    timestamp DATETIME NOT NULL,
    pressure_value FLOAT NOT NULL
);

-- Insertar datos de ejemplo en la tabla flow_sensor_data
INSERT INTO flow_sensor_data (timestamp, flow_value) VALUES 
('2024-05-01 08:00:00', 120.5),
('2024-05-01 08:05:00', 125.0),
('2024-05-01 08:10:00', 130.3),
('2024-05-01 08:15:00', 128.7),
('2024-05-01 08:20:00', 132.1);

-- Insertar datos de ejemplo en la tabla pressure_sensor_data
INSERT INTO pressure_sensor_data (timestamp, pressure_value) VALUES 
('2024-05-01 08:00:00', 1.2),
('2024-05-01 08:05:00', 1.25),
('2024-05-01 08:10:00', 1.3),
('2024-05-01 08:15:00', 1.28),
('2024-05-01 08:20:00', 1.32);
