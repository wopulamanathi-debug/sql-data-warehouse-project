# 🏗️ Data Warehouse Project – Medallion Architecture

## 📖 Overview

This project demonstrates the design and implementation of a modern SQL Server data warehouse using the **Medallion Architecture**. The objective was to transform raw CSV data into a clean, reliable, and analytics-ready data warehouse by following industry-standard **ETL (Extract, Transform, Load)** practices.

The project showcases practical data engineering skills including data extraction, data transformation, data quality management, dimensional modelling, SQL development, stored procedures, views and error handling.

---

# 🏛️ Architecture

## 🥉🥈🥇 Medallion Architecture

The project follows the **Medallion Architecture**, a layered data architecture that progressively improves the quality of data as it moves through the pipeline.

- 🥉 **Bronze Layer** – Stores raw data exactly as received from the source system with little to no modifications.
- 🥈 **Silver Layer** – Cleans, standardises, validates, and enriches the raw data to improve its quality and consistency.
- 🥇 **Gold Layer** – Contains business-ready data modelled into fact and dimension tables for reporting, dashboards, and analytics.

This layered approach improves data quality, makes the pipeline easier to maintain, and separates raw data from transformed business data.

---

# 🔄 ETL Process

## 📥 Extraction

**Extraction Method:** Pull Extraction

The data was extracted by pulling it directly from the source files into the data warehouse.

### 📂 Extraction Type

**Full Extraction**

Every execution loads the complete dataset from the source rather than only new or modified records.

### 📄 Extraction Technique

**File Parsing**

The source data was provided in CSV files, which were parsed and imported into SQL Server.

---

## 🔄 Transformation

Several transformation techniques were applied throughout the ETL process, including:

- ✨ Data enrichment
- 🔗 Data integration
- 📏 Data standardisation
- 📊 Data aggregation
- 🚫 Duplicate removal
- ❌ Null value handling
- ✔️ Invalid value correction
- 📈 Data quality improvement
- 🧹 Trimming unnecessary spaces
- 🔄 Data type conversions
- 💼 Business rule implementation

---

## ⚙️ Processing

**Processing Type:** Batch Processing

The ETL pipeline processes the complete dataset in scheduled batches instead of processing records individually in real time.

---

## 📤 Loading

**Loading Strategy:** Full Load (Truncate and Insert)

Each ETL execution truncates the destination tables before inserting fresh data. This ensures that duplicate records are not created and that the destination always reflects the latest version of the source data.

---

# 🥉 Bronze Layer

## 🎯 Purpose

The Bronze layer serves as the landing zone for raw source data. It stores the data exactly as it exists in the CSV files without performing any transformations.

---

## 🛠️ What was implemented

- 🗂️ Created the Bronze schema
- 🏗️ Created database tables matching the structure of the source CSV files
- 📥 Loaded raw CSV data using **BULK INSERT**
- ⚙️ Stored the loading process inside the stored procedure **`bronze.load_bronze`**
- 📦 Preserved the original source data without modifications

---

## ✨ Key Characteristics

- 📄 Raw data storage
- 🚫 No transformations
- 🚫 No cleansing
- 📚 Serves as the historical copy of source data
- 🏗️ Foundation for downstream processing

---

# 🥈 Silver Layer

## 🎯 Purpose

The Silver layer is responsible for cleaning, validating, standardising, and improving the quality of the raw data received from the Bronze layer.

This layer transforms raw data into trusted, consistent, and analysis-ready datasets.

---

## 🛠️ What was implemented

- 🗂️ Created the Silver schema
- 🏗️ Developed all Silver tables
- 📥 Loaded data from the Bronze layer
- 🔄 Applied extensive data transformations
- 📤 Loaded the cleaned data into Silver tables
- ⚙️ Stored the ETL process inside a stored procedure
- 🚨 Implemented **TRY...CATCH** blocks for error handling
- 🔄 Updated table definitions where data type changes were required

---

## ✨ Data Transformations

The following transformations were performed:

- 🚫 Removed duplicate records
- ❌ Handled null values
- ✔️ Corrected invalid values
- 🧹 Trimmed leading and trailing spaces
- 📈 Improved overall data quality
- 📏 Standardised data formats
- 🔗 Integrated related datasets
- ✨ Enriched records with additional information
- 📊 Aggregated data where required
- 🔄 Converted incorrect data types
- 💼 Applied business validation rules

---

## 📤 Loading Strategy

The Silver tables were refreshed using a **Truncate and Insert** approach to prevent duplicate records during each ETL execution.

---

# 🥇 Gold Layer

## 🎯 Purpose

The Gold layer contains business-ready data designed specifically for reporting, business intelligence, and analytical workloads.

In this layer, the cleaned Silver data was transformed into a dimensional model consisting of fact and dimension tables.

---

## 🛠️ What was implemented

### 📦 Dimension Tables

#### 👤 dim_customer

Created a customer dimension containing descriptive customer information consolidated from the Silver layer.

The table includes customer attributes that provide business context without storing transactional data.

---

#### 📦 dim_product

Created a product dimension containing descriptive product information from the Silver layer.

The table stores product attributes used for reporting and analysis.

---

### 💰 Fact Table

Created a **Sales Fact Table** using the cleaned sales transaction data.

The fact table stores measurable business events and links to the customer and product dimensions through surrogate keys.

---

## ✨ Additional Transformations

While creating the dimensional model, additional transformations were applied, including:

- ✔️ Resolving null values introduced during joins
- 🔗 Handling unmatched records
- 🚫 Correcting invalid values
- 🏗️ Improving referential integrity
- 📊 Preparing the data for analytical queries

---

# 🔄 Data Warehouse Workflow

```text
CSV Files
     │
     ▼
Bronze Layer
(Raw Data Storage)
     │
     ▼
Silver Layer
(Data Cleaning & Standardisation)
     │
     ▼
Gold Layer
(Fact & Dimension Tables)
     │
     ▼
Reporting & Analytics
```

---

# 🛠️ Technologies Used

- 💻 SQL Server
- ⚡ T-SQL
- 🖥️ SQL Server Management Studio (SSMS)
- ⚙️ Stored Procedures
- 📥 BULK INSERT
- 🚨 TRY...CATCH Error Handling
- 📦 Batch Processing
- 📄 CSV File Parsing
- 🏗️ Medallion Architecture

---

# 🚀 Skills Demonstrated

This project demonstrates practical experience in:

- 🏗️ Data Engineering
- 🔄 ETL Pipeline Development
- 🗄️ Data Warehouse Design
- 🥉🥈🥇 Medallion Architecture
- 💻 SQL Development
- 🏛️ Database Design
- 📂 Schema Design
- 🧹 Data Cleaning
- 🔄 Data Transformation
- ✅ Data Validation
- 📏 Data Standardisation
- 📈 Data Quality Management
- 🔗 Data Integration
- ✨ Data Enrichment
- 📊 Data Aggregation
- ⭐ Dimensional Modelling
- 📦 Fact and Dimension Table Design
- ⚙️ Stored Procedure Development
- 🚨 Error Handling with TRY...CATCH
- 📦 Batch Data Processing
- 🔄 Full Load ETL Strategy
- 🗑️ Truncate and Insert Loading Strategy
- 📥 Bulk Data Loading
- ⚡ Query Optimisation
- 🗄️ Relational Database Management

---

# 🎯 Project Outcome

Starting with raw CSV files, this project successfully built a complete end-to-end data warehouse following the **Medallion Architecture**. The ETL pipeline transformed unstructured and inconsistent source data into a structured, high-quality dimensional model suitable for business intelligence, reporting, and analytical decision-making.
