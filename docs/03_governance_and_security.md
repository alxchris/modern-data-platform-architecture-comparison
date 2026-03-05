# Governance & Security Comparison

## Identity and Access
- Fabric: workspace-centric RBAC, integrates with Microsoft ecosystem
- Databricks: Unity Catalog object-level permissions, workspace separation
- Snowflake: RBAC model, strong data sharing and access patterns

## Metadata and Lineage
- Fabric: Purview integration, workspace artifacts
- Databricks: Unity Catalog lineage + notebooks/jobs integration
- Snowflake: account usage views, governance features depending on edition

## Recommended governance approach (Lead/Architect view)
- Define ownership by domain (data product teams)
- Define standardized naming and promotion rules (dev → test → prod)
- Separate compute usage and enforce least privilege
- Require “data quality gates” in Silver/Gold promotion
