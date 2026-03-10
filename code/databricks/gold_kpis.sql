-- Databricks Gold KPI validation
SELECT
    MIN(day) AS min_day,
    MAX(day) AS max_day,
    COUNT(*) AS rows
FROM case01_payments.gold_daily_kpis;

-- Example KPI query
SELECT
    day,
    total_transactions,
    successful_transactions,
    refunded_transactions
FROM case01_payments.gold_daily_kpis
ORDER BY day DESC
LIMIT 30;
