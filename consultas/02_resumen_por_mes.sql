-- Pregunta: ¿cuánto se vendió cada mes?
-- Datos: datos/originales/ventas.csv, solo ventas completadas (tabla datos)
-- Cifra de control: los meses suman 7 ventas y 121.000 pesos (45.000 + 76.000)
SELECT substr(fecha, 1, 7) AS mes,
       COUNT(*) AS ventas,
       SUM(cantidad * precio_unitario) AS pesos
FROM datos
WHERE estado = 'completada'
GROUP BY mes
ORDER BY mes;
