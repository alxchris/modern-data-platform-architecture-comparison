-- Fabric Lakehouse validation queries
-- Example checks for Bronze / Silver style tables

-- Check enriched silver-style table
SELECT TOP 100 *
FROM dbo.silver_sales_enriched;

-- Validate row counts by country
SELECT
    Country,
    COUNT(*) AS row_count
FROM dbo.silver_sales_enriched
GROUP BY Country
ORDER BY row_count DESC;

-- Validate total sales by category
SELECT
    Category,
    SUM(Amount) AS total_sales
FROM dbo.silver_sales_enriched
GROUP BY Category
ORDER BY total_sales DESC;

-- Validate min / max order dates
SELECT
    MIN(OrderDate) AS min_order_date,
    MAX(OrderDate) AS max_order_date,
    COUNT(*) AS total_rows
FROM dbo.silver_sales_enriched;
