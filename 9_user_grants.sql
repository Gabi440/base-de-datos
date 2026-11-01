
USE RentalCarsDB;

-- Crear los usuarios
CREATE USER IF NOT EXISTS 'vendedor_rental'@'localhost'
IDENTIFIED BY 'Vendedor2026!';

CREATE USER IF NOT EXISTS 'administrador_rental'@'localhost'
IDENTIFIED BY 'Admin2026!';

-- Permisos de lectura para el vendedor
GRANT SELECT ON RentalCarsDB.VEHICULOS
TO 'vendedor_rental'@'localhost';

GRANT SELECT ON RentalCarsDB.CATEGORIAS
TO 'vendedor_rental'@'localhost';

GRANT SELECT ON RentalCarsDB.SUCURSALES
TO 'vendedor_rental'@'localhost';

-- Permisos de gestion de alquileres y pagos
GRANT SELECT, INSERT, UPDATE, DELETE
ON RentalCarsDB.ALQUILERES
TO 'vendedor_rental'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE
ON RentalCarsDB.PAGOS
TO 'vendedor_rental'@'localhost';

-- Permisos completos para el administrador
GRANT ALL PRIVILEGES ON RentalCarsDB.*
TO 'administrador_rental'@'localhost';

-- Revocar el permiso de eliminar alquileres
REVOKE DELETE ON RentalCarsDB.ALQUILERES
FROM 'vendedor_rental'@'localhost';
