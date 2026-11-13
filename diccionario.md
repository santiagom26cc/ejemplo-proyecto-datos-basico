# Diccionario de datos

- **Archivo:** `datos/originales/ventas.csv`
- **Fuente y fecha de descarga:** registro de caja de la papelería (datos sintéticos), 13 de noviembre de 2026
- **Cada fila es:** una venta de un solo producto (puede tener varias unidades)
- **Filas en la muestra:** 8
- **Campo que identifica cada fila (clave):** `id_venta`

## Columnas

### id_venta
- Qué significa: código de la venta
- Tipo: texto
- Unidad o formato: V seguido de un número (V1, V2…)
- Valores válidos: único en todo el archivo
- Si está vacía, significa: error de registro; la fila va a revisión

### producto_id
- Qué significa: producto vendido; se busca en `productos.csv`
- Tipo: texto
- Unidad o formato: P1 a P4
- Valores válidos: un código que exista en `productos.csv`
- Si está vacía, significa: no se sabe qué se vendió; la fila va a revisión

### cantidad
- Qué significa: unidades de ese producto en la venta
- Tipo: número entero
- Unidad o formato: unidades
- Valores válidos: 1 o más
- Si está vacía, significa: no se sabe cuántas; no se suma como cero

### precio_unitario
- Qué significa: precio de una unidad en esa venta
- Tipo: número entero
- Unidad o formato: pesos colombianos
- Valores válidos: mayor que 0
- Si está vacía, significa: no se puede calcular el importe de esa venta

### estado
- Qué significa: si la venta se completó o se canceló
- Tipo: texto
- Unidad o formato: minúsculas
- Valores válidos: «completada» o «cancelada»
- Si está vacía, significa: no se sabe; no entra en los indicadores hasta revisarla
