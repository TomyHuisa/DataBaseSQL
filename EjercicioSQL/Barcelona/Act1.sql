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