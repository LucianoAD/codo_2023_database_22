-- modificacion de sentencias
-- Existen sentencias por agrupamiento que se les llama queries de agregacion,
-- las cuales utilizan funciones de agregado, en SQL, como en cualquier lenguaje de programacion
-- tienen incluidas funciones del tipo built-in, las cuales realizan tareas de la manera más perfomante posible
-- estas en particular nos permiten realizar acciones tales como sumar, dividar, concatenar, min, max, etc etc.
-- ejemplo : cantidad de facturas por cada cliente
SELECT f.id_cliente,
    SUM(f.id_cliente) AS CANTIDAD_FACTURAS
FROM factura AS f -- ACA SE LE DA LA INSTANCIA DE AGREGADO
GROUP BY id_cliente -- SE PUEDE AGREGAR  COMANDOS DE LIMITACION DE REGISTROS CON EL COMANDO LIMIT
    -- SE LE PUEDE INDICAR UN ORDENAMIENTO
ORDER BY CANTIDAD_FACTURAS DESC
LIMIT 10;
-- QUERIES CON RESTRICCIONES O VALORES DE "FILTRO"
SELECT *
FROM cliente --SENTENCIAS
    -- WHERE 
    -- nombre_cliente = 'Hermy'
WHERE nombre_cliente LIKE '%al%';
--  id_clientes con facturacion
SELECT COUNT(id_cliente)
FROM factura;
-- diferencia con el distinct
SELECT COUNT(DISTINCT id_cliente)
FROM factura;
-- ACTUALIZACION 
UPDATE factura
SET fecha_factura = CURRENT_TIMESTAMP()
WHERE id_factura = 77;
SELECT *
FROM factura
WHERE id_factura BETWEEN 55 AND 79 -- sentencias de borrado
    -- COMANDO MUY PELIGROSO CUANDO SE RETIRA EL WHERE
SET FOREIGN_KEY_CHECKS = 0;
DELETE FROM factura;
-- posiblemente por algun error de concatenacion
/*
 Un poco de los joins
 Leer la documentacion que dejo anexado, pues es mucho más grande este concepto
 https://www.geeksforgeeks.org/sql-join-set-1-inner-left-right-and-full-joins/
 */
/*
 FUNCIONES ESCALARES
 https://www.w3schools.com/mysql/mysql_ref_functions.asp
 */
SELECT UPPER(nombre_cliente)
FROM cliente;
/*JOINS*/
-- Explicar en clase, pues es un termino que hay que validar correctamente y explicarlo
/*SUBQUERIES*/