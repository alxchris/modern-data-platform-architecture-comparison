-- Databricks Bronze validation
SELECT
    MIN(transaction_ts) AS min_transaction_ts,
    MAX(transaction_ts) AS max_transaction_ts,
    COUNT(*) AS total_rows
FROM case01_payments.bronze_payments;
