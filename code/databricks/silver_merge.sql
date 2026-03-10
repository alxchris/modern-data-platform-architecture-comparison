-- Databricks Silver validation / transformation example
SELECT
    status,
    COUNT(*) AS cnt
FROM case01_payments.silver_payments
WHERE transaction_ts >= '2025-02-01'
GROUP BY status
ORDER BY cnt DESC;
