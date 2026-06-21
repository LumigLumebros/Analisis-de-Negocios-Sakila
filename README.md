# Operational and Commercial Performance Analysis - Sakila DB

I developed this project with the purpose of putting into practice the technical knowledge I have acquired during my training as a data analyst. My main objective was to take a raw data source, such as the Sakila relational database, and transform it into an interactive dashboard fully ready to support executive decision-making. To achieve this, I focused on ensuring the absolute integrity of the information so that decisions can be made reliably and without fear.

---

## 🎯 Business Questions Addressed

The dashboard centralizes multiple data sources to provide immediate answers to the following strategic questions:
* What has been the company's evolution over time?
* Which movie categories lead the demand and ensure the highest return on investment?
* Is there an equitable distribution of sales and operational workload between the branches?
* What is the total revenue volume of the business, and how many active clients currently support it?

---

## 🔬 Validation Methodology and Data Quality

Before building any graphical representation in Power BI, I developed native SQL queries to calculate the exact results directly in the database engine. I rigorously contrasted each chart on the dashboard with these queries to ensure data accuracy and eliminate biases, aggregation errors, or poorly defined relationships.

All the auditing and the code I used to verify these visual metrics are documented here:
👉 **[View validation queries in Validacion_Metricas.sql](./Validacion_Metricas.sql)**

---

## 📊 Executive Dashboard and Key Findings

![Main Dashboard](https://github.com/LumigLumebros/Analisis-de-Negocios-Sakila/blob/main/Assets/Dashboard_Principal.jpg)

Based on the analysis of the modeled data, the following operational insights were extracted:
* **Global Performance:** The operation maintains a revenue volume of **$67.407K**, supported by a solid base of **584 active clients**.
* **Strategic Inventory:** The **'Animation'** and **'Sports'** categories consistently outperform the rest of the catalog in rental counts and revenue. It is advisable to prioritize inventory acquisition in these genres.
* **Operational Equity:** The sales distribution between the Woodridge (49.38%) and Lethbridge (50.62%) branches is perfectly balanced, demonstrating successful standardization in the commercial processes of both locations.

---

## 📐 Data Architecture and Modeling

The project is supported by a robust relational infrastructure, optimized to facilitate cross-filtering and efficiency in DAX measures:

1. **Original Database:** Deployment scripts and the native Entity-Relationship diagram are included within the `[database/](./database/)` folder to allow environment replication.
2. **Analytical Model:** A structured model was implemented in Power BI, ensuring clean relationships between transaction tables and catalogs.

![Relationship Model](https://github.com/LumigLumebros/Analisis-de-Negocios-Sakila/blob/main/Assets/modelo_relaciones.png)

---

## 🛠️ Tech Stack
* **MySQL:** Local hosting, relational schema exploration, and construction of validation queries.
* **Power BI:** Direct database connection, relationship modeling, and analytical interface design.
