USE db_test_7b;

/*1.Cuantas tablas existen*/
SHOW TABLES;

/*2. Cuantos triggers existen en la base de datso*/
SHOW triggers FROM db_test_7b;

/*3. Cuantos registros existen en la tabla users*/
SELECT count(*) as total_registros FROM tb_users;

/*4. Cuantos registros existen en la tabla bitacora*/
SELECT count(*) as total_registros from tb_logs;

/*5. Consultar todas las operaciones realizadas en l abase de datos*/
select * FROM tb_logs;

/*6. Verificar wue los usuarios remotos hayan sido creados*/
SELECT user,host from mysql.user where host ='%' and account_locked = 'N';

/*7. Verificar losroles dque fueron creados*/
Select user,host from mysql.user where host= '%' and account_locked ='Y';

/*8. Verificar que usuarios tienen roles*/
SELECT TO_USER as usuario, TO_HOST as host, FROM_USER as rol, FROM_HOST as rol_host
from mysql.role_edges order by TO_USER, FROM_USER; 

/*9. Verificar el total de procedimientos almacenados que existen en la bd*/
SHOW PROCEDURE STATUS WHERE Db= 'db_test_7b';


/*10? */
SELECT
    u.nickname,
    u.email,
    b.db_user AS inserted_by,
    COALESCE(
        GROUP_CONCAT(
            DISTINCT re.FROM_USER
            ORDER BY re.FROM_USER
            SEPARATOR ', '
        ), 
        'Sin rol'
    ) AS roles,
    b.table_operation,
    b.operation_date
FROM tb_users u
JOIN tb_logs b
    ON b.table_description LIKE CONCAT('%ID=', u.id, ',%')
LEFT JOIN mysql.role_edges re
    ON re.TO_USER = SUBSTRING_INDEX(b.db_user, '@', 1)
WHERE b.table_operation = 'Create'
  AND b.table_name = 'tb_users'
GROUP BY 
    u.id,
    u.nickname, 
    u.email,
    b.db_user, 
    b.table_operation,
    b.operation_date 
ORDER BY b.operation_date ASC;


/*11 */
SELECT 
    p.id,
    p.name,
    p.description,
    b.db_user AS inserted_by,
    COALESCE(
        GROUP_CONCAT(
            DISTINCT re.FROM_USER
            ORDER BY re.FROM_USER
            SEPARATOR ', '
        ), 
        'no hay roles bro'
    ) AS roles,
    b.table_operation,
    b.operation_date
FROM tb_products p
LEFT JOIN tb_logs b 
    ON b.table_name = 'tb_products'
   AND b.table_operation = 'Create'
   AND (
       b.table_description LIKE CONCAT('%ID=', p.id, '%')
    OR b.table_description LIKE CONCAT('%id=', p.id, '%')
    OR b.table_description LIKE CONCAT('%', p.name, '%')
    OR b.table_description LIKE CONCAT('%', p.SKU, '%')
   )
LEFT JOIN mysql.role_edges re
    ON re.TO_USER = SUBSTRING_INDEX(b.db_user, '@', 1)
GROUP BY 
    p.id, 
    p.name, 
    p.description, 
    b.db_user, 
    b.table_description, 
    b.table_operation, 
    b.operation_date;

/*12: Consultar trazabilidad de productos */ 
select * from vw_trazabilidad_productos order by operation_date desc limit 10;

/*13 consultar la trazabilidad de usuarios */
select * from vw_trazabilidad_usarios order by operation_date desc limit 10;

/*14 contabilizar productos por tabla hay por usuario */
select count(*), vp.inserted_by
from vw_trazabilidad_productos vp
group by vp.inserted_by;