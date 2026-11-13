# Qué reponer primero en la Papelería Punto y Coma

Ejemplo resuelto · Análisis de Datos Básico · Estud-IA (Capa 2)

> **Caso de práctica:** la papelería y sus datos son **inventados** (sintéticos). Sirve para ver cómo se ve una ficha bien llenada y como caso de respaldo si tu fuente no aparece.

## Ficha del proyecto · versión 1

### 1. Usuario y decisión
> ¿Quién usará el resultado y qué va a decidir con él?

La dueña de la papelería. Cada mes decide qué productos pedir primero al proveedor con un presupuesto limitado.

### 2. Pregunta principal
> Una sola pregunta que ayude a tomar esa decisión.

¿Qué productos y categorías mueven más ventas y unidades cada mes, para decidir qué reponer primero?

### 3. Fuente de datos
> Enlace o nombre de la fuente. ¿Pública o inventada?

Registro de caja de agosto y septiembre de 2026: `datos/originales/ventas.csv` y el catálogo `datos/originales/productos.csv`. **Datos sintéticos** de la guía del profesor.

### 4. Qué representa una fila
> «Cada fila es…». ¿Qué campo distingue una fila de otra?

Cada fila de `ventas.csv` es **una venta de un solo producto**, que puede tener varias unidades. La identifica `id_venta`. No hay datos de clientes: no se puede contar personas.

### 5. Periodo
> ¿Qué fechas cubren los datos?

Del 1 de agosto al 7 de septiembre de 2026.

### 6. Cuatro indicadores
> Nombre y cómo se calcula.

1. **Ventas** = suma de cantidad × precio_unitario, solo ventas completadas (pesos).
2. **Unidades vendidas** = suma de cantidad, solo completadas.
3. **Operaciones** = número de ventas completadas (`id_venta` distintos).
4. **Ticket medio** = ventas ÷ operaciones (pesos por venta). Si no hay operaciones: «no calculable», no cero.

### 7. Fuera de alcance
> Lo que NO va a responder.

Rentabilidad o margen: falta el costo de la bolsa (P4). Preferencias de clientes: no hay identificador de cliente. Pronósticos: dos meses no alcanzan.

## Comparaciones, riesgos y mapa de preguntas

### Dos comparaciones útiles
1. Por mes (agosto frente a septiembre).
2. Por categoría (Papelería frente a Hogar).

### Tres riesgos de calidad
1. Ventas canceladas mezcladas con completadas: hay que filtrarlas antes de sumar.
2. El costo de P4 está vacío: es «desconocido», no cero.
3. Si el catálogo repite un producto, unir las tablas duplicaría ventas: revisar que `producto_id` sea único.

### Mapa de preguntas
- ¿Qué pasó? Ventas, unidades y operaciones por mes.
- ¿Dónde o cuándo es distinto? Por categoría y por producto.
- ¿Qué recomendaría y con qué límites? Qué reponer primero, sin hablar de ganancia.

## Cifra de control

Las 7 ventas completadas suman **121.000 pesos** y **18 unidades**. Agosto: 45.000 en 3 ventas; septiembre: 76.000 en 4 ventas.

## Archivos del proyecto

| Archivo o carpeta | Qué contiene |
|---|---|
| [diccionario.md](diccionario.md) | Qué significa cada columna |
| [bitacora.md](bitacora.md) | Decisiones y por qué |
| `datos/originales/` | `ventas.csv` (8 filas) y `productos.csv` (4 filas) |

---

Proyecto de ejemplo desarrollado en Estud-IA · Capa 2 · Análisis de Datos.
