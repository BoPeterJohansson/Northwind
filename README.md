# Northwind – End-to-End Business Intelligence Project

## Overview

This project demonstrates an end-to-end Business Intelligence (BI) workflow using the Microsoft Northwind sample database. It combines SQL Server, Power BI and GitHub to develop a structured data analytics solution, covering data extraction, transformation, modelling, visualisation and version control.

The objective is to transform operational business data into meaningful insights that support data-driven decision-making, while applying industry-relevant practices in SQL development, data modelling, reporting and project management.

## Technology Stack

| Technology | Purpose |
|---|---|
| Microsoft SQL Server | Database management, querying and data transformation |
| SQL Server Management Studio (SSMS) | SQL development and database administration |
| Power BI Desktop | Data modelling, DAX and report development |
| Power Query | Data extraction and transformation |
| DAX | Business calculations and analytical measures |
| Git | Version control and source code management |
| GitHub | Repository hosting, documentation and project collaboration |

## Dataset

The project uses the **Northwind sample database**, originally developed by Microsoft as a demonstration database for relational database management and business applications.

Northwind represents a fictional trading company that imports and exports specialty food products. Its data covers several business areas, including:

- Customers and customer demographics
- Orders and order details
- Products and product categories
- Suppliers
- Employees and sales representatives
- Shippers and shipping information

The dataset provides a foundation for exploring sales performance, customer behaviour, product performance and operational efficiency.

## Project Architecture

The project follows a structured BI development workflow:

1. **Data Source:** Microsoft Northwind sample database.
2. **Data Extraction:** SQL queries to retrieve and explore source data.
3. **Data Transformation:** SQL views and transformations to prepare analytical datasets.
4. **Data Modelling:** Development of a structured data model for analytical reporting.
5. **Data Visualisation:** Power BI reports, dashboards and interactive visualisations.
6. **Version Control:** Git and GitHub for tracking changes and maintaining project documentation.

## Project Objectives

The main objectives are to:

- Develop practical SQL skills through querying, joining, aggregating and transforming relational data.
- Apply SQL best practices, including consistent naming conventions, reusable views and readable query structures.
- Prepare and validate data for analytical purposes.
- Develop an effective data model that supports analytical reporting.
- Apply DAX to create business measures and key performance indicators (KPIs).
- Design intuitive and informative Power BI reports using data visualisation and UX best practices.
- Implement Git version control and maintain a structured GitHub repository.
- Document the development process and establish a reproducible BI workflow.

## Repository Structure

```text
Northwind-BI-Project/
│
├── SQL/
│   ├── 01_Database_Exploration/
│   ├── 02_Data_Quality/
│   ├── 03_Data_Transformation/
│   └── 04_Views/
│
├── PowerBI/
│   ├── Northwind.pbip
│   ├── Northwind.Report/
│   └── Northwind.SemanticModel/
│
├── Documentation/
│   ├── Data_Dictionary.md
│   ├── Data_Model.md
│   └── Project_Notes.md
│
├── Images/
│   ├── Dashboard_Preview.png
│   └── Data_Model.png
│
├── README.md
└── .gitignore
```

*The folder structure will evolve as the project develops. Power BI project files (PBIP) are used to support a more version-control-friendly development workflow.*

## Development Process

### 1. Database Exploration – SQL Server

Explore the Northwind database to understand its structure, relationships and underlying business processes.

Activities include:

- Inspecting database tables and relationships.
- Exploring primary and foreign keys.
- Writing SQL queries using SELECT, JOIN, GROUP BY and aggregate functions.
- Investigating data types, NULL values and potential data quality issues.
- Identifying relevant business entities and analytical requirements.

### 2. Data Preparation – SQL Server

Prepare source data for analytical reporting using SQL.

Activities include:

- Developing reusable SQL views.
- Applying data transformations and standardisation.
- Handling NULL values and inconsistent data.
- Converting data types where necessary.
- Creating analytical datasets.
- Validating data accuracy and consistency.

### 3. Data Modelling – Power BI

Develop a structured semantic model that supports efficient analytical reporting.

Activities include:

- Establishing table relationships.
- Applying dimensional modelling principles.
- Exploring fact and dimension table structures.
- Configuring relationship cardinality and filter direction.
- Creating a dedicated date table.
- Defining appropriate data types and formatting.
- Hiding unnecessary technical columns and organising model objects.

### 4. Data Analysis – DAX

Develop reusable DAX measures to support business analysis and performance monitoring.

Potential analytical measures include:

- Total Sales
- Total Orders
- Total Customers
- Average Order Value
- Total Products Sold
- Sales Growth
- Year-over-Year Sales
- Month-over-Month Sales
- Customer and Product Performance

### 5. Data Visualisation – Power BI

Develop interactive reports that communicate business performance and provide actionable insights.

Potential reporting areas include:

- Sales Performance
- Product Analysis
- Customer Analysis
- Employee Performance
- Geographic Sales Analysis
- Order and Shipping Performance

The reporting approach incorporates data visualisation and UX principles, with an emphasis on clarity, consistency, appropriate chart selection and effective information hierarchy.

### 6. Version Control – GitHub

Use Git and GitHub to manage the development lifecycle and maintain a transparent project history.

Activities include:

- Maintaining SQL scripts and Power BI project files.
- Using meaningful commit messages.
- Tracking development changes.
- Organising files into logical folders.
- Maintaining project documentation.
- Applying a structured development workflow.

## Business Questions

The analysis aims to investigate questions such as:

1. How has sales performance changed over time?
2. Which products and product categories generate the highest revenue?
3. Who are the company's most valuable customers?
4. Which employees generate the highest sales?
5. Which geographical markets contribute most to revenue?
6. How efficiently are customer orders processed and shipped?
7. Are there seasonal patterns in sales performance?
8. Which products and customers present opportunities for business growth?

## Data Quality and Validation

Data quality is an important part of the development process.

Validation activities include:

- Checking for missing and NULL values.
- Identifying duplicate records.
- Validating primary and foreign key relationships.
- Checking data types and date formats.
- Reconciling SQL query results with Power BI outputs.
- Verifying DAX calculations against source data.

## Project Status

**Status:** In Development

| Component | Status |
|---|---|
| SQL Server database setup | In Progress |
| Database exploration | Planned |
| Data quality assessment | Planned |
| SQL transformations and views | Planned |
| Power BI data modelling | Planned |
| DAX measures | Planned |
| Power BI reports | Planned |
| GitHub documentation | In Progress |

## Future Improvements

Potential future enhancements include:

- Automating data refresh and ETL processes.
- Implementing incremental data loading.
- Introducing more advanced SQL techniques.
- Optimising the Power BI semantic model.
- Implementing automated data quality testing.
- Exploring deployment pipelines and CI/CD practices.
- Integrating additional data sources.

## Author

Developed as a practical Business Intelligence and Data Analytics portfolio project, demonstrating the application of SQL Server, Power BI and GitHub in an end-to-end analytics workflow.

**Technologies:** SQL Server | T-SQL | Power BI | DAX | Power Query | Git | GitHub

---

*This project uses Microsoft's Northwind sample database for educational and portfolio development purposes.*
