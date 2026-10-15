/* 1. Creación de usuarios */
DROP USER IF EXISTS 'marco.ramirez'@'%';
DROP USER IF EXISTS 'alfonso.garcia'@'%';
DROP USER IF EXISTS 'mario.banda'@'%';
DROP USER IF EXISTS 'vanessa.vergara'@'%';
DROP USER IF EXISTS 'pablo.martinez'@'%';

CREATE USER 'marco.ramirez'@'%' IDENTIFIED BY 'qwerty123';  
CREATE USER 'alfonso.garcia'@'%' IDENTIFIED BY '240904';
CREATE USER 'mario.banda'@'%' IDENTIFIED BY '240597';
CREATE USER 'vanessa.vergara'@'%' IDENTIFIED BY '240270';
CREATE USER 'pablo.martinez'@'%' IDENTIFIED BY '240701';

/* 2. Creación de roles */
DROP ROLE IF EXISTS 'superadmin';
DROP ROLE IF EXISTS 'admin';
DROP ROLE IF EXISTS 'seller';
DROP ROLE IF EXISTS 'buyer';
DROP ROLE IF EXISTS 'support';
DROP ROLE IF EXISTS 'common';
DROP ROLE IF EXISTS 'user_not_registred';

CREATE ROLE IF NOT EXISTS 'superadmin';
CREATE ROLE IF NOT EXISTS 'admin';
CREATE ROLE IF NOT EXISTS 'seller';
CREATE ROLE IF NOT EXISTS 'buyer';
CREATE ROLE IF NOT EXISTS 'support';
CREATE ROLE IF NOT EXISTS 'common';
CREATE ROLE IF NOT EXISTS 'user_not_registred';

/* 3. Asignar permisos a los roles y usuarios directo */
GRANT ALL PRIVILEGES ON *.* TO 'alfonso.garcia'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON db_test_7b.* TO 'mario.banda'@'%';

/*Privilegios Super-Admin*/
GRANT ALL PRIVILEGES ON *.* TO 'superadmin';
/*Privilegios Admin*/
GRANT ALL PRIVILEGES ON db_test_7b.* TO 'admin';

/*Privilegios Support*/
GRANT SELECT, UPDATE, INSERT ON db_test_7b.tb_users TO 'support';
GRANT SELECT, UPDATE, INSERT ON db_test_7b.tb_products TO 'support';
GRANT CREATE ,SELECT, UPDATE, INSERT ON db_test_7b.tbc_categories TO 'support';
GRANT CREATE ,SELECT, UPDATE, INSERT ON db_test_7b.tbd_products_categories TO 'support';

/*Privilegios Seller*/
GRANT SELECT, INSERT, UPDATE ON db_test_7b.tb_products TO 'seller';

/* 4. ASIGNACIÓN DE ROLES A USUARIOS (PRIMERO ESTO) */
GRANT 'superadmin' TO 'alfonso.garcia'@'%';
GRANT 'admin' TO 'marco.ramirez'@'%';
GRANT 'support' TO 'mario.banda'@'%';
GRANT 'seller' TO 'vanessa.vergara'@'%';
GRANT 'seller' TO 'pablo.martinez'@'%';

/* 5. DEFINIR ROL POR DEFECTO (DESPUÉS DE HABERLOS OTORGADO) */
SET DEFAULT ROLE 'support' TO 'mario.banda'@'%';
SET DEFAULT ROLE 'seller' TO 'pablo.martinez'@'%';
SET DEFAULT ROLE 'seller' TO 'vanessa.vergara'@'%';

/* 6. Aplicar cambios */
FLUSH PRIVILEGES;

SELECT "Usuarios y roles creados correctamente" AS mensaje;