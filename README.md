# GardenDB

## 1. Modelo entidad - relación de la base normalizada

![modelo entidad_relacion gardenDB](https://raw.githubusercontent.com/EdwingDuvanHernandezHerrera/proyectoGardenDB/main/modelo%20entidad_relacion%20garden%20_db.png)

## 2. Consultas SQL

### Consultas sobre una tabla

1. Devuelve un listado con el código de oficina y la ciudad donde hay oficinas.

   ```sql
   SELECT codigo_oficina, nombre_ciudad
   FROM oficina
   INNER JOIN ciudad ON oficina.codigo_ciudad = ciudad.codigo_ciudad;
   
   ```

   

2. Devuelve un listado con la ciudad y el teléfono de las oficinas de España.

   ```sql
   SELECT ciudad.nombre_ciudad, telefono_oficina.telefono_oficina
   FROM oficina
   INNER JOIN ciudad ON oficina.codigo_ciudad = ciudad.codigo_ciudad
   INNER JOIN telefono_oficina ON oficina.codigo_oficina = telefono_oficina.codigo_oficina
   WHERE ciudad.codigo_pais = 'ES';
   
   ```

   

3. Devuelve un listado con el nombre, apellidos y email de los empleados cuyo
    jefe tiene un código de jefe igual a 7.

  ```sql
  SELECT nombre_empleado, apellido1_emprelado, apellido2_empleado, email_empleado
  FROM empleado
  WHERE codigo_jefe = 7;
  
  ```

  

4. Devuelve el nombre del puesto, nombre, apellidos y email del jefe de la
    empresa.

  ```sql
  SELECT puesto_empleado.nombre_puesto, empleado.nombre_empleado, empleado.apellido1_emprelado, empleado.apellido2_empleado, empleado.email_empleado
  FROM empleado
  INNER JOIN puesto_empleado ON empleado.codigo_puesto_empleado = puesto_empleado.codigo_puesto_empleado
  WHERE empleado.codigo_empleado = 7;
  
  ```

  

5. Devuelve un listado con el nombre, apellidos y puesto de aquellos
    empleados que no sean representantes de ventas.

  ```sql
  SELECT empleado.nombre_empleado, empleado.apellido1_emprelado, empleado.apellido2_empleado, puesto_empleado.nombre_puesto
  FROM empleado
  INNER JOIN puesto_empleado ON empleado.codigo_puesto_empleado = puesto_empleado.codigo_puesto_empleado
  WHERE empleado.codigo_rep_ventas IS NULL;
  
  ```

  

6. Devuelve un listado con el nombre de los todos los clientes españoles.

   ```sql
   SELECT cliente.nombre_cliente, cliente.codigo_ciudad
   FROM cliente
   INNER JOIN ciudad ON cliente.codigo_ciudad = ciudad.codigo_ciudad
   WHERE ciudad.nombre_ciudad = 'Madrid';
   
   ```

   

7. Devuelve un listado con los distintos estados por los que puede pasar un
    pedido.

  ```sql
  SELECT *
  FROM estado;
  
  ```

  

8. Devuelve un listado con el código de cliente de aquellos clientes que
    realizaron algún pago en 2008. Tenga en cuenta que deberá eliminar
    aquellos códigos de cliente que aparezcan repetidos. Resuelva la consulta:
    • Utilizando la función YEAR de MySQL.
    • Utilizando la función DATE_FORMAT de MySQL.
    • Sin utilizar ninguna de las funciones anteriores.

  ```sql
  SELECT DISTINCT codigo_cliente
  FROM pago
  WHERE YEAR(fecha_pago) = 2008;
  
  SELECT DISTINCT codigo_cliente
  FROM pago
  WHERE DATE_FORMAT(fecha_pago, '%Y') = '2008';
  
  SELECT DISTINCT codigo_cliente
  FROM pago
  WHERE fecha_pago BETWEEN '2008-01-01' AND '2008-12-31';
  
  ```

  

9. Devuelve un listado con el código de pedido, código de cliente, fecha
    esperada y fecha de entrega de los pedidos que no han sido entregados a
    tiempo.

  ```sql
  SELECT codigo_pedido, codigo_cliente, fecha_esperada, fecha_entrega
  FROM pedido
  WHERE fecha_entrega > fecha_esperada;
  
  ```

  

10. Devuelve un listado con el código de pedido, código de cliente, fecha
    esperada y fecha de entrega de los pedidos cuya fecha de entrega ha sido al
    menos dos días antes de la fecha esperada.
    • Utilizando la función ADDDATE de MySQL.
    • Utilizando la función DATEDIFF de MySQL.
    • ¿Sería posible resolver esta consulta utilizando el operador de suma + o
    resta -?

    ```sql
    
    SELECT codigo_pedido, codigo_cliente, fecha_esperada, fecha_entrega
    FROM pedido
    WHERE DATEDIFF(fecha_entrega, fecha_esperada) >= 2;
    
    SELECT codigo_pedido, codigo_cliente, fecha_esperada, fecha_entrega
    FROM pedido
    WHERE ADDDATE(fecha_entrega, -2) >= fecha_esperada;
    
    ```

    

11. Devuelve un listado de todos los pedidos que fueron rechazados en 2009.

    ```sql
    SELECT codigo_pedido, fecha_pedido, fecha_esperada, fecha_entrega, comentarios, codigo_cliente, codigo_estado
    FROM pedido
    WHERE codigo_estado = 2 AND YEAR(fecha_pedido) = 2009;
    
    ```

    

12. Devuelve un listado de todos los pedidos que han sido entregados en el
    mes de enero de cualquier año.

    ```sql
    SELECT codigo_pedido, fecha_pedido, fecha_esperada, fecha_entrega, comentarios, codigo_cliente, codigo_estado
    FROM pedido
    WHERE MONTH(fecha_entrega) = 1;
    ```

    

13. Devuelve un listado con todos los pagos que se realizaron en el
    año 2008 mediante Paypal. Ordene el resultado de mayor a menor.

    ```sql
    SELECT codigo_pago, fecha_pago, total_pago, codigo_cliente, codigo_met_pago
    FROM pago
    WHERE YEAR(fecha_pago) = 2008 AND codigo_met_pago = 1
    ORDER BY total_pago DESC;
    ```

    

14. Devuelve un listado con todas las formas de pago que aparecen en la
    tabla pago. Tenga en cuenta que no deben aparecer formas de pago
    repetidas.

    ```sql
    SELECT DISTINCT codigo_met_pago, nombre_met_pago
    FROM metodo_pago;
    ```

    

15. Devuelve un listado con todos los productos que pertenecen a la
    gama Ornamentales y que tienen más de 100 unidades en stock. El listado
    deberá estar ordenado por su precio de venta, mostrando en primer lugar
    los de mayor precio.

    ```sql
    SELECT producto.codigo_producto, producto.nombre, producto.codigo_gama, producto.cantidad_stock, producto.precio_venta, producto.descripcion, producto.codigo_dimensiones
    FROM producto
    INNER JOIN gama_producto ON producto.codigo_gama = gama_producto.codigo_gama
    WHERE gama_producto.gama = 'Ornamentales' AND producto.cantidad_stock > 100
    ORDER BY producto.precio_venta DESC;
    ```

    

16. Devuelve un listado con todos los clientes que sean de la ciudad de Madrid y
    cuyo representante de ventas tenga el código de empleado 11 o 30.

    ```sql
    SELECT cliente.codigo_cliente, cliente.nombre_cliente, cliente.codigo_ciudad, cliente.codigo_postal, cliente.limite_credito, cliente.codigo_rep_ventas
    FROM cliente
    WHERE cliente.codigo_ciudad = (
        SELECT codigo_ciudad
        FROM ciudad
        WHERE nombre_ciudad = 'Madrid'
    )
    AND cliente.codigo_rep_ventas IN (11, 30);
    ```

    

### Consultas multitabla (Composición interna)

Resuelva todas las consultas utilizando la sintaxis de SQL1 y SQL2. Las consultas con
sintaxis de SQL2 se deben resolver con INNER JOIN y NATURAL JOIN.
1. Obtén un listado con el nombre de cada cliente y el nombre y apellido de su
    representante de ventas.

  ```sql
  -- SQL1
  SELECT cliente.nombre_cliente, empleado.nombre_empleado, empleado.apellido1_emprelado
  FROM cliente, empleado
  WHERE cliente.codigo_rep_ventas = empleado.codigo_empleado;
  
  -- SQL2
  SELECT cliente.nombre_cliente, empleado.nombre_empleado, empleado.apellido1_emprelado
  FROM cliente
  INNER JOIN empleado ON cliente.codigo_rep_ventas = empleado.codigo_empleado;
  
  ```

  

2. Muestra el nombre de los clientes que hayan realizado pagos junto con el
    nombre de sus representantes de ventas.

  ```sql
  -- SQL1
  SELECT cliente.nombre_cliente, empleado.nombre_empleado, empleado.apellido1_emprelado
  FROM cliente, empleado, pago
  WHERE cliente.codigo_rep_ventas = empleado.codigo_empleado
  AND cliente.codigo_cliente = pago.codigo_cliente;
  
  -- SQL2
  SELECT cliente.nombre_cliente, empleado.nombre_empleado, empleado.apellido1_emprelado
  FROM cliente
  INNER JOIN empleado ON cliente.codigo_rep_ventas = empleado.codigo_empleado
  INNER JOIN pago ON cliente.codigo_cliente = pago.codigo_cliente;
  
  ```

  

3. Muestra el nombre de los clientes que no hayan realizado pagos junto con
    el nombre de sus representantes de ventas.

  ```sql
  -- SQL1
  SELECT cliente.nombre_cliente, empleado.nombre_empleado, empleado.apellido1_emprelado
  FROM cliente, empleado
  WHERE cliente.codigo_rep_ventas = empleado.codigo_empleado
  AND cliente.codigo_cliente NOT IN (SELECT DISTINCT codigo_cliente FROM pago);
  
  -- SQL2
  SELECT cliente.nombre_cliente, empleado.nombre_empleado, empleado.apellido1_emprelado
  FROM cliente
  INNER JOIN empleado ON cliente.codigo_rep_ventas = empleado.codigo_empleado
  LEFT JOIN pago ON cliente.codigo_cliente = pago.codigo_cliente
  WHERE pago.codigo_cliente IS NULL;
  
  ```

  

4. Devuelve el nombre de los clientes que han hecho pagos y el nombre de sus
    representantes junto con la ciudad de la oficina a la que pertenece el
    representante.

  ```sql
  -- SQL1
  SELECT cliente.nombre_cliente, empleado.nombre_empleado, empleado.apellido1_emprelado, ciudad.nombre_ciudad
  FROM cliente, empleado, oficina, ciudad, pago
  WHERE cliente.codigo_rep_ventas = empleado.codigo_empleado
  AND empleado.codigo_oficina = oficina.codigo_oficina
  AND oficina.codigo_ciudad = ciudad.codigo_ciudad
  AND cliente.codigo_cliente = pago.codigo_cliente;
  
  -- SQL2
  SELECT cliente.nombre_cliente, empleado.nombre_empleado, empleado.apellido1_emprelado, ciudad.nombre_ciudad
  FROM cliente
  INNER JOIN empleado ON cliente.codigo_rep_ventas = empleado.codigo_empleado
  INNER JOIN oficina ON empleado.codigo_oficina = oficina.codigo_oficina
  INNER JOIN ciudad ON oficina.codigo_ciudad = ciudad.codigo_ciudad
  INNER JOIN pago ON cliente.codigo_cliente = pago.codigo_cliente;
  
  ```

  

5. Devuelve el nombre de los clientes que no hayan hecho pagos y el nombre
    de sus representantes junto con la ciudad de la oficina a la que pertenece el
    representante.

  ```sql
  -- SQL1
  SELECT cliente.nombre_cliente, empleado.nombre_empleado, empleado.apellido1_emprelado, ciudad.nombre_ciudad
  FROM cliente, empleado, oficina, ciudad
  WHERE cliente.codigo_rep_ventas = empleado.codigo_empleado
  AND empleado.codigo_oficina = oficina.codigo_oficina
  AND oficina.codigo_ciudad = ciudad.codigo_ciudad
  AND cliente.codigo_cliente NOT IN (SELECT DISTINCT codigo_cliente FROM pago);
  
  -- SQL2
  SELECT cliente.nombre_cliente, empleado.nombre_empleado, empleado.apellido1_emprelado, ciudad.nombre_ciudad
  FROM cliente
  INNER JOIN empleado ON cliente.codigo_rep_ventas = empleado.codigo_empleado
  INNER JOIN oficina ON empleado.codigo_oficina = oficina.codigo_oficina
  INNER JOIN ciudad ON oficina.codigo_ciudad = ciudad.codigo_ciudad
  LEFT JOIN pago ON cliente.codigo_cliente = pago.codigo_cliente
  WHERE pago.codigo_cliente IS NULL;
  
  ```

  

6. Lista la dirección de las oficinas que tengan clientes en Fuenlabrada.

   ```sql
   -- SQL1
   SELECT direccion.nombre_calle, direccion.numero_direccion, direccion.nombre_barrio
   FROM direccion, cliente
   WHERE cliente.codigo_ciudad = (
       SELECT codigo_ciudad
       FROM ciudad
       WHERE nombre_ciudad = 'Fuenlabrada'
   )
   AND cliente.codigo_cliente = direccion.codigo_cliente;
   
   -- SQL2
   SELECT direccion.nombre_calle, direccion.numero_direccion, direccion.nombre_barrio
   FROM direccion
   INNER JOIN cliente ON cliente.codigo_cliente = direccion.codigo_cliente
   INNER JOIN ciudad ON cliente.codigo_ciudad = ciudad.codigo_ciudad
   WHERE ciudad.nombre_ciudad = 'Fuenlabrada';
   
   ```

   

7. Devuelve el nombre de los clientes y el nombre de sus representantes junto
    con la ciudad de la oficina a la que pertenece el representante.

  ```sql
  -- SQL1
  SELECT cliente.nombre_cliente, empleado.nombre_empleado, empleado.apellido1_emprelado, ciudad.nombre_ciudad
  FROM cliente, empleado, oficina, ciudad
  WHERE cliente.codigo_rep_ventas = empleado.codigo_empleado
  AND empleado.codigo_oficina = oficina.codigo_oficina
  AND oficina.codigo_ciudad = ciudad.codigo_ciudad;
  
  -- SQL2
  SELECT cliente.nombre_cliente, empleado.nombre_empleado, empleado.apellido1_emprelado, ciudad.nombre_ciudad
  FROM cliente
  INNER JOIN empleado ON cliente.codigo_rep_ventas = empleado.codigo_empleado
  INNER JOIN oficina ON empleado.codigo_oficina = oficina.codigo_oficina
  INNER JOIN ciudad ON oficina.codigo_ciudad = ciudad.codigo_ciudad;
  
  ```

  

8. Devuelve un listado con el nombre de los empleados junto con el nombre
    de sus jefes.

  ```sql
  -- SQL1
  SELECT empleado.nombre_empleado, jefe.nombre_empleado AS nombre_jefe
  FROM empleado, empleado AS jefe
  WHERE empleado.codigo_jefe = jefe.codigo_empleado;
  
  -- SQL2
  SELECT empleado.nombre_empleado, jefe.nombre_empleado AS nombre_jefe
  FROM empleado
  INNER JOIN empleado AS jefe ON empleado.codigo_jefe = jefe.codigo_empleado;
  
  ```

  

9. Devuelve un listado que muestre el nombre de cada empleados, el nombre
    de su jefe y el nombre del jefe de sus jefe.

  ```sql
  -- SQL1
  SELECT empleado.nombre_empleado, jefe.nombre_empleado AS nombre_jefe, jefe_de_jefe.nombre_empleado AS nombre_jefe_de_jefe
  FROM empleado
  LEFT JOIN empleado AS jefe ON empleado.codigo_jefe = jefe.codigo_empleado
  LEFT JOIN empleado AS jefe_de_jefe ON jefe.codigo_jefe = jefe_de_jefe.codigo_empleado;
  
  -- SQL2
  SELECT empleado.nombre_empleado, jefe.nombre_empleado AS nombre_jefe, jefe_de_jefe.nombre_empleado AS nombre_jefe_de_jefe
  FROM empleado
  LEFT JOIN empleado AS jefe ON empleado.codigo_jefe = jefe.codigo_empleado
  LEFT JOIN empleado AS jefe_de_jefe ON jefe.codigo_jefe = jefe_de_jefe.codigo_empleado;
  ```

  

10. Devuelve el nombre de los clientes a los que no se les ha entregado a
    tiempo un pedido.

    ```sql
    -- SQL1
    SELECT cliente.nombre_cliente
    FROM cliente, pedido
    WHERE cliente.codigo_cliente = pedido.codigo_cliente
    AND pedido.fecha_entrega > pedido.fecha_esperada;
    
    -- SQL2
    SELECT cliente.nombre_cliente
    FROM cliente
    INNER JOIN pedido ON cliente.codigo_cliente = pedido.codigo_cliente
    WHERE pedido.fecha_entrega > pedido.fecha_esperada;
    ```

    

11. Devuelve un listado de las diferentes gamas de producto que ha comprado
    cada cliente.

    ```sql
    -- SQL1
    SELECT DISTINCT cliente.nombre_cliente, gama_producto.gama
    FROM cliente, pedido, detalle_pedido, producto, gama_producto
    WHERE cliente.codigo_cliente = pedido.codigo_cliente
    AND pedido.codigo_pedido = detalle_pedido.codigo_pedido
    AND detalle_pedido.codigo_producto = producto.codigo_producto
    AND producto.codigo_gama = gama_producto.codigo_gama;
    
    -- SQL2
    SELECT DISTINCT cliente.nombre_cliente, gama_producto.gama
    FROM cliente
    INNER JOIN pedido ON cliente.codigo_cliente = pedido.codigo_cliente
    INNER JOIN detalle_pedido ON pedido.codigo_pedido = detalle_pedido.codigo_pedido
    INNER JOIN producto ON detalle_pedido.codigo_producto = producto.codigo_producto
    INNER JOIN gama_producto ON producto.codigo_gama = gama_producto.codigo_gama;
    ```



### Consultas multitabla (Composición externa)

Resuelva todas las consultas utilizando las cláusulas LEFT JOIN, RIGHT JOIN, NATURAL
LEFT JOIN y NATURAL RIGHT JOIN.

1. Devuelve un listado que muestre solamente los clientes que no han
    realizado ningún pago.

  ```sql
  SELECT cliente.nombre_cliente
  FROM cliente
  LEFT JOIN pago ON cliente.codigo_cliente = pago.codigo_cliente
  WHERE pago.codigo_cliente IS NULL;
  ```

  

2. Devuelve un listado que muestre solamente los clientes que no han
    realizado ningún pedido.

  ```sql
  SELECT cliente.nombre_cliente
  FROM cliente
  LEFT JOIN pedido ON cliente.codigo_cliente = pedido.codigo_cliente
  WHERE pedido.codigo_pedido IS NULL;
  ```

  

3. Devuelve un listado que muestre los clientes que no han realizado ningún
    pago y los que no han realizado ningún pedido.

  ```sql
  SELECT cliente.nombre_cliente
  FROM cliente
  LEFT JOIN pago ON cliente.codigo_cliente = pago.codigo_cliente
  LEFT JOIN pedido ON cliente.codigo_cliente = pedido.codigo_cliente
  WHERE pago.codigo_cliente IS NULL AND pedido.codigo_pedido IS NULL;
  ```

  

4. Devuelve un listado que muestre solamente los empleados que no tienen
    una oficina asociada.

  ```sql
  SELECT empleado.nombre_empleado
  FROM empleado
  LEFT JOIN oficina ON empleado.codigo_oficina = oficina.codigo_oficina
  WHERE oficina.codigo_oficina IS NULL;
  ```

  

5. Devuelve un listado que muestre solamente los empleados que no tienen un
    cliente asociado.

  ```sql
  SELECT empleado.nombre_empleado
  FROM empleado
  LEFT JOIN cliente ON empleado.codigo_empleado = cliente.codigo_rep_ventas
  WHERE cliente.codigo_cliente IS NULL;
  ```

  

6. Devuelve un listado que muestre solamente los empleados que no tienen un
    cliente asociado junto con los datos de la oficina donde trabajan.

  ```sql
  SELECT empleado.nombre_empleado, oficina.nombre_oficina, ciudad.nombre_ciudad
  FROM empleado
  LEFT JOIN cliente ON empleado.codigo_empleado = cliente.codigo_rep_ventas
  LEFT JOIN oficina ON empleado.codigo_oficina = oficina.codigo_oficina
  LEFT JOIN ciudad ON oficina.codigo_ciudad = ciudad.codigo_ciudad
  WHERE cliente.codigo_cliente IS NULL;
  ```

  

7. Devuelve un listado que muestre los empleados que no tienen una oficina
    asociada y los que no tienen un cliente asociado.

  ```sql
  SELECT empleado.nombre_empleado
  FROM empleado
  LEFT JOIN oficina ON empleado.codigo_oficina = oficina.codigo_oficina
  LEFT JOIN cliente ON empleado.codigo_empleado = cliente.codigo_rep_ventas
  WHERE oficina.codigo_oficina IS NULL OR cliente.codigo_cliente IS NULL;
  ```

  

8. Devuelve un listado de los productos que nunca han aparecido en un
    pedido.

  ```sql
  SELECT producto.codigo_producto
  FROM producto
  LEFT JOIN detalle_pedido ON producto.codigo_producto = detalle_pedido.codigo_producto
  WHERE detalle_pedido.codigo_producto IS NULL;
  ```

  

9. Devuelve un listado de los productos que nunca han aparecido en un
    pedido. El resultado debe mostrar el nombre, la descripción y la imagen del
    producto.

  ```sql
  SELECT producto.nombre_producto, producto.descripcion_producto, producto.imagen_producto
  FROM producto
  LEFT JOIN detalle_pedido ON producto.codigo_producto = detalle_pedido.codigo_producto
  WHERE detalle_pedido.codigo_producto IS NULL;
  ```

  

10. Devuelve las oficinas donde no trabajan ninguno de los empleados que
    hayan sido los representantes de ventas de algún cliente que haya realizado
    la compra de algún producto de la gama Frutales.

    ```sql
    SELECT DISTINCT oficina.nombre_oficina
    FROM oficina
    LEFT JOIN empleado ON oficina.codigo_oficina = empleado.codigo_oficina
    LEFT JOIN cliente ON empleado.codigo_empleado = cliente.codigo_rep_ventas
    LEFT JOIN pedido ON cliente.codigo_cliente = pedido.codigo_cliente
    LEFT JOIN detalle_pedido ON pedido.codigo_pedido = detalle_pedido.codigo_pedido
    LEFT JOIN producto ON detalle_pedido.codigo_producto = producto.codigo_producto
    LEFT JOIN gama_producto ON producto.codigo_gama = gama_producto.codigo_gama
    WHERE empleado.codigo_empleado IS NULL AND gama_producto.gama = 'Frutales';
    ```

    

11. Devuelve un listado con los clientes que han realizado algún pedido pero no
    han realizado ningún pago.

    ```sql
    SELECT cliente.nombre_cliente
    FROM cliente
    LEFT JOIN pago ON cliente.codigo_cliente = pago.codigo_cliente
    LEFT JOIN pedido ON cliente.codigo_cliente = pedido.codigo_cliente
    WHERE pedido.codigo_pedido IS NOT NULL AND pago.codigo_pago IS NULL;
    ```

    

12. Devuelve un listado con los datos de los empleados que no tienen clientes
    asociados y el nombre de su jefe asociado.

    ```sql
    SELECT empleado.nombre_empleado, jefe.nombre_empleado AS nombre_jefe
    FROM empleado
    LEFT JOIN empleado AS jefe ON empleado.codigo_jefe = jefe.codigo_empleado
    LEFT JOIN cliente ON empleado.codigo_empleado = cliente.codigo_rep_ventas
    WHERE cliente.codigo_cliente IS NULL;
    ```



### Consultas resumen

1. ¿Cuántos empleados hay en la compañía?

   ```sql
   SELECT COUNT(codigo_empleado) AS total_empleados
   FROM empleado;
   ```

   

2. ¿Cuántos clientes tiene cada país?

   ```sql
   SELECT pais.nombre_pais, COUNT(cliente.codigo_cliente) AS total_clientes
   FROM pais
   LEFT JOIN ciudad ON pais.codigo_pais = ciudad.codigo_pais
   LEFT JOIN cliente ON ciudad.codigo_ciudad = cliente.codigo_ciudad
   GROUP BY pais.nombre_pais;
   ```

   

3. ¿Cuál fue el pago medio en 2009?

   ```sql
   SELECT AVG(total_pago) AS pago_medio_2009
   FROM pago
   WHERE YEAR(fecha_pago) = 2009;
   ```

   

4. ¿Cuántos pedidos hay en cada estado? Ordena el resultado de forma
    descendente por el número de pedidos.

  ```sql
  SELECT codigo_estado, COUNT(codigo_pedido) AS total_pedidos
  FROM pedido
  GROUP BY codigo_estado
  ORDER BY total_pedidos DESC;
  ```

  

5. Calcula el precio de venta del producto más caro y más barato en una
    misma consulta.

  ```sql
  SELECT MAX(precio_venta) AS precio_mas_caro, MIN(precio_venta) AS precio_mas_barato
  FROM producto;
  ```

  

6. Calcula el número de clientes que tiene la empresa.

   ```sql
   SELECT COUNT(codigo_cliente) AS total_clientes
   FROM cliente;
   ```

   

7. ¿Cuántos clientes existen con domicilio en la ciudad de Madrid?

   ```sql
   SELECT COUNT(*) AS total_clientes_madrid
   FROM cliente
   JOIN ciudad ON cliente.codigo_ciudad = ciudad.codigo_ciudad
   WHERE ciudad.nombre_ciudad = 'Madrid';
   ```

   

8. ¿Calcula cuántos clientes tiene cada una de las ciudades que empiezan
    por M?

  ```sql
  SELECT ciudad.nombre_ciudad, COUNT(cliente.codigo_cliente) AS total_clientes
  FROM ciudad
  LEFT JOIN cliente ON ciudad.codigo_ciudad = cliente.codigo_ciudad
  WHERE ciudad.nombre_ciudad LIKE 'M%'
  GROUP BY ciudad.nombre_ciudad;
  ```

  

9. Devuelve el nombre de los representantes de ventas y el número de clientes
    al que atiende cada uno.

  ```sql
  SELECT empleado.nombre_empleado, COUNT(cliente.codigo_cliente) AS total_clientes
  FROM empleado
  LEFT JOIN cliente ON empleado.codigo_empleado = cliente.codigo_rep_ventas
  GROUP BY empleado.nombre_empleado;
  ```

  

10. Calcula el número de clientes que no tiene asignado representante de
    ventas.

    ```sql
    SELECT COUNT(*) AS total_clientes_sin_representante
    FROM cliente
    WHERE codigo_rep_ventas IS NULL;
    ```

    

11. Calcula la fecha del primer y último pago realizado por cada uno de los
    clientes. El listado deberá mostrar el nombre y los apellidos de cada cliente.

    ```sql
    SELECT cliente.nombre_cliente, MIN(pago.fecha_pago) AS primer_pago, MAX(pago.fecha_pago) AS ultimo_pago
    FROM cliente
    LEFT JOIN pago ON cliente.codigo_cliente = pago.codigo_cliente
    GROUP BY cliente.nombre_cliente;
    ```

    

12. Calcula el número de productos diferentes que hay en cada uno de los
    pedidos.

    ```sql
    SELECT codigo_pedido, COUNT(DISTINCT codigo_producto) AS num_productos_diferentes
    FROM detalle_pedido
    GROUP BY codigo_pedido;
    ```

    

13. Calcula la suma de la cantidad total de todos los productos que aparecen en
    cada uno de los pedidos.

    ```sql
    SELECT codigo_pedido, SUM(cantidad) AS cantidad_total_productos
    FROM detalle_pedido
    GROUP BY codigo_pedido;
    ```

    

14. Devuelve un listado de los 20 productos más vendidos y el número total de
    unidades que se han vendido de cada uno. El listado deberá estar ordenado
    por el número total de unidades vendidas.

    ```sql
    SELECT producto.nombre_producto, SUM(detalle_pedido.cantidad) AS total_unidades_vendidas
    FROM detalle_pedido
    JOIN producto ON detalle_pedido.codigo_producto = producto.codigo_producto
    GROUP BY producto.nombre_producto
    ORDER BY total_unidades_vendidas DESC
    LIMIT 20;
    ```

    

15. La facturación que ha tenido la empresa en toda la historia, indicando la
    base imponible, el IVA y el total facturado. La base imponible se calcula
    sumando el coste del producto por el número de unidades vendidas de la
    tabla detalle_pedido. El IVA es el 21 % de la base imponible, y el total la
    suma de los dos campos anteriores.

    ```sql
    SELECT 
        SUM(detalle_pedido.cantidad * producto.precio_venta) AS base_imponible,
        SUM(detalle_pedido.cantidad * producto.precio_venta) * 0.21 AS IVA,
        SUM(detalle_pedido.cantidad * producto.precio_venta) * 1.21 AS total_facturado
    FROM detalle_pedido
    JOIN producto ON detalle_pedido.codigo_producto = producto.codigo_producto;
    ```

    

16. La misma información que en la pregunta anterior, pero agrupada por
    código de producto.

    ```sql
    SELECT 
        producto.codigo_producto,
        SUM(detalle_pedido.cantidad * producto.precio_venta) AS base_imponible,
        SUM(detalle_pedido.cantidad * producto.precio_venta) * 0.21 AS IVA,
        SUM(detalle_pedido.cantidad * producto.precio_venta) * 1.21 AS total_facturado
    FROM detalle_pedido
    JOIN producto ON detalle_pedido.codigo_producto = producto.codigo_producto
    GROUP BY producto.codigo_producto;
    ```

    

17. La misma información que en la pregunta anterior, pero agrupada por
    código de producto filtrada por los códigos que empiecen por OR.

    ```sql
    SELECT 
        producto.codigo_producto,
        SUM(detalle_pedido.cantidad * producto.precio_venta) AS base_imponible,
        SUM(detalle_pedido.cantidad * producto.precio_venta) * 0.21 AS IVA,
        SUM(detalle_pedido.cantidad * producto.precio_venta) * 1.21 AS total_facturado
    FROM detalle_pedido
    JOIN producto ON detalle_pedido.codigo_producto = producto.codigo_producto
    WHERE producto.codigo_producto LIKE 'OR%'
    GROUP BY producto.codigo_producto;
    ```

    

18. Lista las ventas totales de los productos que hayan facturado más de 3000
    euros. Se mostrará el nombre, unidades vendidas, total facturado y total
    facturado con impuestos (21% IVA).

    ```sql
    SELECT 
        producto.nombre_producto,
        SUM(detalle_pedido.cantidad) AS unidades_vendidas,
        SUM(detalle_pedido.cantidad * producto.precio_venta) AS total_facturado,
        SUM(detalle_pedido.cantidad * producto.precio_venta) * 1.21 AS total_facturado_con_IVA
    FROM detalle_pedido
    JOIN producto ON detalle_pedido.codigo_producto = producto.codigo_producto
    GROUP BY producto.nombre_producto
    HAVING total_facturado > 3000;
    ```

    

19. Muestre la suma total de todos los pagos que se realizaron para cada uno
    de los años que aparecen en la tabla pagos.

    ```sql
    SELECT YEAR(fecha_pago) AS anio_pago, SUM(total_pago) AS total_pagado
    FROM pago
    GROUP BY YEAR(fecha_pago);
    ```



### Consultas variadas

1. Devuelve el listado de clientes indicando el nombre del cliente y cuántos
    pedidos ha realizado. Tenga en cuenta que pueden existir clientes que no
    han realizado ningún pedido.

  ```sql
  SELECT cliente.nombre_cliente, COUNT(pedido.codigo_pedido) AS pedidos_realizados
  FROM cliente
  LEFT JOIN pedido ON cliente.codigo_cliente = pedido.codigo_cliente
  GROUP BY cliente.nombre_cliente;
  ```

  

2. Devuelve un listado con los nombres de los clientes y el total pagado por
    cada uno de ellos. Tenga en cuenta que pueden existir clientes que no han
    realizado ningún pago.

  ```sql
  SELECT cliente.nombre_cliente, IFNULL(SUM(pago.total_pago), 0) AS total_pagado
  FROM cliente
  LEFT JOIN pago ON cliente.codigo_cliente = pago.codigo_cliente
  GROUP BY cliente.nombre_cliente;
  ```

  

3. Devuelve el nombre de los clientes que hayan hecho pedidos en 2008
    ordenados alfabéticamente de menor a mayor.

  ```sql
  SELECT DISTINCT cliente.nombre_cliente
  FROM cliente
  JOIN pedido ON cliente.codigo_cliente = pedido.codigo_cliente
  WHERE YEAR(pedido.fecha_pedido) = 2008
  ORDER BY cliente.nombre_cliente ASC;
  ```

  

4. Devuelve el nombre del cliente, el nombre y primer apellido de su
    representante de ventas y el número de teléfono de la oficina del representante de ventas, de aquellos clientes que no hayan realizado ningún pago.

  ```sql
  SELECT cliente.nombre_cliente, empleado.nombre_empleado, empleado.apellido_empleado, oficina.telefono_oficina
  FROM cliente
  JOIN empleado ON cliente.codigo_rep_ventas = empleado.codigo_empleado
  JOIN oficina ON empleado.codigo_oficina = oficina.codigo_oficina
  LEFT JOIN pago ON cliente.codigo_cliente = pago.codigo_cliente
  WHERE pago.codigo_pago IS NULL;
  ```

  

5. Devuelve el listado de clientes donde aparezca el nombre del cliente, el
    nombre y primer apellido de su representante de ventas y la ciudad donde
    está su oficina.

  ```sql
  SELECT cliente.nombre_cliente, empleado.nombre_empleado, empleado.apellido_empleado, ciudad.nombre_ciudad AS ciudad_oficina
  FROM cliente
  JOIN empleado ON cliente.codigo_rep_ventas = empleado.codigo_empleado
  JOIN oficina ON empleado.codigo_oficina = oficina.codigo_oficina
  JOIN ciudad ON oficina.codigo_ciudad = ciudad.codigo_ciudad;
  ```

  

6. Devuelve el nombre, apellidos, puesto y teléfono de la oficina de aquellos
    empleados que no sean representante de ventas de ningún cliente.

  ```sql
  SELECT empleado.nombre_empleado, empleado.apellido_empleado, empleado.puesto_empleado, oficina.telefono_oficina
  FROM empleado
  JOIN oficina ON empleado.codigo_oficina = oficina.codigo_oficina
  LEFT JOIN cliente ON empleado.codigo_empleado = cliente.codigo_rep_ventas
  WHERE cliente.codigo_cliente IS NULL;
  ```

  

7. Devuelve un listado indicando todas las ciudades donde hay oficinas y el
    número de empleados que tiene.

  ```sql
  SELECT ciudad.nombre_ciudad, COUNT(empleado.codigo_empleado) AS num_empleados
  FROM ciudad
  JOIN oficina ON ciudad.codigo_ciudad = oficina.codigo_ciudad
  JOIN empleado ON oficina.codigo_oficina = empleado.codigo_oficina
  GROUP BY ciudad.nombre_ciudad;
  ```

  