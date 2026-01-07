# Netflix Data Analytics Pipeline with dbt & Snowflake

## Project Overview
This project implements an **end-to-end ELT pipeline** for Netflix/MovieLens data using **AWS S3**, **Snowflake**, and **dbt**. The goal is to transform raw CSV data into **analytics-ready models**, track historical changes, ensure **data quality**, and generate **lineage documentation**.

---

## Table of Contents
1. [Project Goal](#project-goal)  
2. [Tech Stack](#tech-stack)  
3. [Data Source](#data-source)  
4. [Environment Setup](#environment-setup)  
5. [Loading Data into Snowflake](#loading-data-into-snowflake)  
6. [dbt Configuration](#dbt-configuration)  
7. [dbt Sources](#dbt-sources)  
8. [dbt Seeds](#dbt-seeds)  
9. [Staging Models](#staging-models)  
10. [Intermediate & Final Models](#intermediate--final-models)  
11. [Ephemeral Models](#ephemeral-models)  
12. [Snapshots](#snapshots)  
13. [Macros](#macros)  
14. [Tests](#tests)  
15. [Analysis](#analysis)  
16. [Documentation & Lineage](#documentation--lineage)  
17. [Project Flow](#project-flow)  
18. [dbt Features Used](#dbt-features-used)  

---

## Project Goal
Build an **ELT pipeline** that ingests Netflix/MovieLens data from S3 into Snowflake, transforms it with dbt, and produces analytics-ready tables while maintaining historical tracking, data quality, and documentation.

---

## Tech Stack
- **AWS S3** – raw data storage  
- **Snowflake** – cloud data warehouse  
- **dbt** – transformation layer and analytics engineering  
- **Python** – environment for dbt and libraries  
- **dbt-snowflake adapter** – connects dbt to Snowflake  

---

## Data Source
- Raw CSV files stored in **S3**:
  - `movies.csv`
  - `ratings.csv`
  - `tags.csv`
- S3 provides a scalable, decoupled storage layer for raw datasets.

---

## Environment Setup

**What I did:** Installed all necessary tools for dbt & Snowflake connectivity.

**How:**
```bash
pip install dbt-core dbt-snowflake
dbt init netflix_project
