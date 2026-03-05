# Reference Architectures

## 1) Microsoft Fabric Reference Architecture
Typical flow:
- Data ingestion: Dataflows Gen2 / Pipelines / shortcuts into OneLake
- Storage: Lakehouse (Delta tables)
- Transformation: Notebooks + Dataflows + SQL endpoints
- Consumption: Power BI semantic models and reports
- Governance: Purview integration + Fabric workspace RBAC

Add screenshots in: `/screenshots/fabric/`

Recommended Fabric screenshots:
- Lakehouse tables view (Bronze/Silver/Gold)
- Pipeline flow (copy + transform)
- Semantic model / Power BI dataset artifact

---

## 2) Databricks Reference Architecture
Typical flow:
- Ingestion: Auto Loader / batch ingestion / streaming ingestion
- Storage: Delta Lake tables (Bronze/Silver/Gold)
- Transformation: Spark notebooks/jobs, Delta Live Tables (optional)
- Governance: Unity Catalog (catalog/schema/table permissions + lineage)
- Serving: Databricks SQL warehouse, or export to external warehouse

Add screenshots in: `/screenshots/databricks/`

Recommended Databricks screenshots:
- Unity Catalog table list (Bronze/Silver/Gold)
- MERGE logic (idempotent upsert)
- Gold KPI tables preview

---

## 3) Snowflake Reference Architecture
Typical flow:
- Ingestion: stages + COPY INTO or Snowpipe
- Storage: internal storage (micro-partitions)
- Transformation: SQL ELT, tasks + streams (optional)
- Serving: SQL + BI tools
- Governance: RBAC + data sharing + masking policies (depending on edition)

Add screenshots in: `/screenshots/snowflake/`

Recommended Snowflake screenshots:
- Stage listing (files visible)
- Structured table view (columns typed)
- Validation query results (row counts)

---

## 4) Hybrid Reference Architecture (common in EU)
Common patterns:
- Databricks transforms (Bronze/Silver/Gold), Snowflake serves analytics tables
- Fabric used for BI semantic model and reporting (where Microsoft footprint exists)
- Interop via Parquet/Delta and staged loads

Add screenshots:
- Databricks export results (Gold)
- Snowflake loaded structured tables
- Fabric consumption layer (semantic model/report)
