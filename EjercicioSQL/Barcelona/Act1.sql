--// Act1 || Mostrar la cantidad de estaciones totales \\--

SELECT count(DISTINCT NOMBRE_ESTACION) as EstacionesTotales FROM barcelona_viajeros_por_franja_xlsx
ORDER BY NOMBRE_ESTACION

--// Act2 || Mostrar un listado de estaciones único \\--

SELECT NOMBRE_ESTACION FROM barcelona_viajeros_por_franja_xlsx
GROUP BY NOMBRE_ESTACION

--// Act3 || Al listado obtenido adicionar una columna con el total de pasajeros subidos 
--        || y otra con el total de pasajeros que bajaron\\--

SELECT count(DISTINCT NOMBRE_ESTACION) as EstacionesTotales, sum(VIAJEROS_SUBIDOS) as ViajerosSubidosTotales, sum(VIAJEROS_BAJADOS) as ViajerosBajadosTotales FROM barcelona_viajeros_por_franja_xlsx
ORDER BY NOMBRE_ESTACION, VIAJEROS_SUBIDOS, VIAJEROS_BAJADOS

--// Act4 || A la consulta anterior adicionar una columna que muestre la diferencia entre los pasajeros que subieron y bajaron\\--

SELECT count(DISTINCT NOMBRE_ESTACION) as EstacionesTotales, sum(VIAJEROS_SUBIDOS) as ViajerosSubidosTotales, sum(VIAJEROS_BAJADOS) as ViajerosBajadosTotales, sum(VIAJEROS_SUBIDOS) - sum(VIAJEROS_BAJADOS) as DiferenciadePasajeros  FROM barcelona_viajeros_por_franja_xlsx
ORDER BY NOMBRE_ESTACION, VIAJEROS_SUBIDOS, VIAJEROS_BAJADOS

--// Act5 || A la consulta anterior adicionar una columna que muestre la diferencia entre los pasajeros que subieron y bajaron\\--

SELECT NOMBRE_ESTACION, VIAJEROS_SUBIDOS AS VIAJEROS_SUBIDOS_TOTAL, TRAMO_HORARIO FROM barcelona_viajeros_por_franja_xlsx
ORDER BY VIAJEROS_SUBIDOS_TOTAL DESC
LIMIT 1;

--// Act6 || A la consulta anterior adicionar una columna que muestre la diferencia entre los pasajeros que subieron y bajaron\\--

SELECT NOMBRE_ESTACION, VIAJEROS_SUBIDOS AS VIAJEROS_SUBIDOS_TOTAL, TRAMO_HORARIO FROM barcelona_viajeros_por_franja_xlsx
ORDER BY TRAMO_HORARIO ASC
LIMIT 1 OFFSET 717;

--// Act7 || A la consulta anterior adicionar una columna que muestre la diferencia entre los pasajeros que subieron y bajaron\\--

SELECT NOMBRE_ESTACION, VIAJEROS_BAJADOS AS VIAJEROS_BAJADOS_TOTAL, TRAMO_HORARIO FROM barcelona_viajeros_por_franja_xlsx
ORDER BY VIAJEROS_BAJADOS_TOTAL DESC
LIMIT 1;

--// Act8 || A la consulta anterior adicionar una columna que muestre la diferencia entre los pasajeros que subieron y bajaron\\--

SELECT NOMBRE_ESTACION, VIAJEROS_BAJADOS AS VIAJEROS_BAJADOS_TOTAL, TRAMO_HORARIO FROM barcelona_viajeros_por_franja_xlsx
ORDER BY TRAMO_HORARIO ASC
LIMIT 1 OFFSET 717;

--// Act9 || A la consulta anterior adicionar una columna que muestre la diferencia entre los pasajeros que subieron y bajaron\\--

SELECT NOMBRE_ESTACION,VIAJEROS_SUBIDOS, VIAJEROS_BAJADOS, TRAMO_HORARIO,VIAJEROS_SUBIDOS-VIAJEROS_BAJADOS AS DIFERENCIA FROM barcelona_viajeros_por_franja_xlsx
ORDER BY DIFERENCIA DESC;

--// Act10 || A la consulta anterior adicionar una columna que muestre la diferencia entre los pasajeros que subieron y bajaron\\--

SELECT NOMBRE_ESTACION,VIAJEROS_SUBIDOS, VIAJEROS_BAJADOS, VIAJEROS_SUBIDOS - VIAJEROS_BAJADOS AS DIFERENCIA FROM barcelona_viajeros_por_franja_xlsx
ORDER BY DIFERENCIA DESC;

--// Act11 || A la consulta anterior adicionar una columna que muestre la diferencia entre los pasajeros que subieron y bajaron\\--

SELECT TRAMO_HORARIO,AVG(VIAJEROS_SUBIDOS) AS PROMEDIO_SUBIDOS,AVG(VIAJEROS_BAJADOS) AS PROMEDIO_BAJADOS FROM barcelona_viajeros_por_franja_xlsx
GROUP BY TRAMO_HORARIO;

--// Act12 || A la consulta anterior adicionar una columna que muestre la diferencia entre los pasajeros que subieron y bajaron\\--

SELECT NOMBRE_ESTACION, TRAMO_HORARIO ,AVG(VIAJEROS_SUBIDOS) AS PROMEDIO_SUBIDOS,AVG(VIAJEROS_BAJADOS) AS PROMEDIO_BAJADOS FROM barcelona_viajeros_por_franja_xlsx
GROUP BY TRAMO_HORARIO;
