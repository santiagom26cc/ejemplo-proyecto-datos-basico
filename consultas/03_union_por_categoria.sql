-- Pregunta: ¿cuánto se vendió por categoría?
-- Datos: ventas.csv (8 filas) unida con productos.csv (4 filas; producto_id no se repite)
-- Conteo antes y después de unir: 8 ventas, 8 filas con LEFT JOIN (cada venta encuentra un solo producto)
-- Cifra de control: Papelería 68.000 + Hogar 53.000 = 121.000, igual que sin unir
SELECT p.categoria,
       COUNT(*) AS ventas,
       SUM(v.cantidad * v.precio_unitario) AS pesos
FROM ventas AS v
LEFT JOIN productos AS p ON v.producto_id = p.producto_id
WHERE v.estado = 'completada'
GROUP BY p.categoria
ORDER BY pesos DESC;
