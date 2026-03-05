# Cost & Scalability

## Cost model primitives
- Fabric: capacity-based (F SKU), shared resource model; can be efficient but requires governance
- Databricks: compute clusters / SQL warehouses; cost governed by cluster sizing + job patterns
- Snowflake: warehouse compute credits; isolate workloads with multiple warehouses

## Scalability patterns
- Databricks: scale Spark compute; manage small files; optimize + partitioning + ZORDER
- Snowflake: isolate workloads; auto-suspend; clustering strategies where needed
- Fabric: capacity planning; avoid noisy neighbor patterns; manage refresh/semantic model usage

## Practical recommendations
- Always track cost per workload (pipeline/report)
- Use auto-suspend / scheduling
- Design for workload isolation (especially in Snowflake)
