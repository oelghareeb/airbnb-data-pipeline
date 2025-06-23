# 🏡 Airbnb Analytics Data Pipeline

This is an end-to-end ELT pipeline that processes Airbnb listings, cleans the data using dbt, stores it in Snowflake, visualizes it in Preset (Superset), and orchestrates everything using Dagster.

---

## 🛠️ Tech Stack

- **Snowflake** – Cloud data warehouse
- **dbt** – SQL-based transformations and testing
- **Preset (Superset)** – BI dashboarding
- **Dagster** – Data orchestration and asset materialization
- **Python** – For orchestration code

---

## 🔁 Pipeline Overview

```mermaid
graph TD
    A[Raw Airbnb CSV] --> B[Snowflake]
    B --> C[dbt Models]
    C --> D[Dagster Assets]
    D --> E[Preset Dashboards]
