# Análisis de Rendimiento Operativo y Comercial - Sakila DB

Desarrollé este proyecto con el propósito de poner en práctica los conocimientos técnicos que he adquirido en mi formación como analista de datos. Mi objetivo principal fue tomar una fuente de información en bruto, como la base de datos relacional Sakila, y transformarla en un dashboard interactivo completamente listo para respaldar la toma de decisiones ejecutivas. Para lograrlo, me enfoqué en garantizar la absoluta integridad de la información para que se pueda tomar decisiones de forma confiable y sin miedo 

---

## 🎯 Resolución de Preguntas de Negocio

El dashboard centraliza múltiples fuentes de datos para dar respuesta inmediata a las siguientes interrogantes estratégicas:
* ¿Cual ha sido la evolucion que ha llevado la empresa atravez del tiempo?
* ¿Cuáles son las categorías de películas que lideran la demanda y aseguran el mayor retorno de inversión?
* ¿Existe una distribución equitativa de las ventas y la carga operativa entre las sucursales?
* ¿Cuál es el volumen total de ingresos del negocio y con cuántos clientes activos se cuenta actualmente?

---

## 🔬 Metodología de Validación y Calidad del Dato

Antes de construir cualquier representación gráfica en Power BI, elaboré consultas SQL nativas para calcular los resultados exactos directamente en el motor de base de datos. Contrasté rigurosamente cada gráfico del panel con estas consultas para asegurar la veracidad de la información y eliminar sesgos, errores de agregación o relaciones mal definidas.

Toda la auditoría y el código que utilicé para comprobar estas métricas visuales se encuentran documentados aquí:
👉 **[Ver consultas de validación en Validacion_Metricas.sql](./Validacion_Metricas.sql)**

---

## 📊 Dashboard Ejecutivo y Hallazgos Clave

![Dashboard Principal](https://github.com/LumigLumebros/Analisis-de-Negocios-Sakila/blob/main/Assets/Dashboard_Principal.jpg)

A partir del análisis de los datos modelados, se extrajeron los siguientes insights operativos:
* **Rendimiento Global:** La operación mantiene un volumen de ingresos de **$67.407 mil**, respaldado por una base sólida de **584 clientes activos**.
* **Inventario Estratégico:** Las categorías **'Animation'** y **'Sports'** superan sistemáticamente al resto del catálogo en recuento de rentas e ingresos. Es recomendable priorizar la adquisición de inventario en estos géneros.
* **Equidad Operativa:** La distribución de ventas entre las sucursales de Woodridge (49.38%) y Lethbridge (50.62%) está perfectamente equilibrada, demostrando una estandarización exitosa en los procesos comerciales de ambas locaciones.

---

## 📐 Arquitectura y Modelado de Datos

El proyecto se soporta sobre una infraestructura relacional robusta, optimizada para facilitar el filtrado cruzado y la eficiencia en las medidas DAX:

1. **Base de Datos Original:** Se incluyen los scripts de despliegue y el diagrama Entidad-Relación nativo dentro de la carpeta `[database/](./database/)` para permitir la replicación del entorno.
2. **Modelo Analítico:** Se implementó un modelo estructurado en Power BI, asegurando relaciones limpias entre las tablas de transacciones y los catálogos.

![Modelo de Relaciones](https://github.com/LumigLumebros/Analisis-de-Negocios-Sakila/blob/main/Assets/modelo_relaciones.png)

---

## 🛠️ Stack Tecnológico
* **MySQL:** Alojamiento local, exploración del esquema relacional y construcción de consultas de validación.
* **Power BI:** Conexión directa a base de datos, modelado de relaciones y diseño de interfaz analítica.
