# Análisis de Rendimiento Operativo y Comercial - Sakila DB

Este proyecto transforma la base de datos relacional Sakila en un panel de control interactivo diseñado para la toma de decisiones ejecutivas. El enfoque principal del desarrollo fue garantizar la absoluta integridad de la información, auditando cada métrica visual desde su origen hasta la presentación final para asegurar que los datos reflejen con precisión la realidad operativa del negocio.

---

## 🎯 Resolución de Preguntas de Negocio

El dashboard centraliza múltiples fuentes de datos para dar respuesta inmediata a las siguientes interrogantes estratégicas:
* ¿Cuáles son las categorías de películas que lideran la demanda y aseguran el mayor retorno de inversión?
* ¿Existe una distribución equitativa de las ventas y la carga operativa entre las sucursales?
* ¿Cuál es el comportamiento de los ingresos a lo largo de los meses operativos?
* ¿Cuál es el volumen total de ventas sostenido por la base de clientes activos?

---

## 🔬 Metodología de Validación y Calidad del Dato

A diferencia de un enfoque tradicional de simple volcado de información, la prioridad de este análisis fue la **veracidad de los datos**. 

Antes de construir cualquier representación gráfica en Power BI, se elaboraron consultas SQL nativas para calcular los resultados exactos directamente en el motor de base de datos. Cada gráfico del panel fue contrastado rigurosamente con estas consultas para eliminar sesgos, errores de agregación o relaciones mal definidas.

Toda la auditoría y el código utilizado para comprobar la veracidad de las métricas visuales se encuentran documentados aquí:
👉 **[Ver consultas de validación en Validacion_Metricas.sql](./Validacion_Metricas.sql)**

---

## 📊 Dashboard Ejecutivo y Hallazgos Clave

![Dashboard Principal](./assets/dashboard_principal.png)

A partir del análisis de los datos modelados, se extrajeron los siguientes insights operativos:
* **Rendimiento Global:** La operación mantiene un volumen de ingresos de **$67.41 mil**, respaldado por una base sólida de **584 clientes activos**.
* **Inventario Estratégico:** Las categorías **'Animation'** y **'Sports'** superan sistemáticamente al resto del catálogo en recuento de rentas e ingresos. Es recomendable priorizar la adquisición de inventario en estos géneros.
* **Equidad Operativa:** La distribución de ventas entre las sucursales de Woodridge (49.38%) y Lethbridge (50.62%) está perfectamente equilibrada, demostrando una estandarización exitosa en los procesos comerciales de ambas locaciones.

---

## 🏗️ Arquitectura y Modelado de Datos

El proyecto se soporta sobre una infraestructura relacional robusta, optimizada para facilitar el filtrado cruzado y la eficiencia en las medidas DAX:

1. **Base de Datos Original:** Se incluyen los scripts de despliegue y el diagrama Entidad-Relación nativo dentro de la carpeta `[database/](./database/)` para permitir la replicación del entorno.
2. **Modelo Analítico:** Se implementó un modelo estructurado en Power BI, asegurando relaciones limpias entre las tablas de transacciones y los catálogos.

![Modelo de Relaciones](./assets/modelo_relaciones.png)

---

## 🛠️ Stack Tecnológico
* **MySQL:** Alojamiento local, exploración del esquema relacional y construcción de consultas de validación.
* **Power BI:** Conexión directa a base de datos, modelado de relaciones y diseño de interfaz analítica.
