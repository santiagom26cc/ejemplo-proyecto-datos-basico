-- Pregunta: ¿cuántas ventas se completaron y cuáles son?
-- Datos: datos/originales/ventas.csv (8 filas; en Colab la tabla se llama datos)
-- Cifra de control: 8 filas en total y 7 completadas
SELECT id_venta, producto_id, cantidad
FROM datos
WHERE estado = 'completada';
