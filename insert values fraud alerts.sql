INSERT INTO Fraud_Alerts (alert_id, transaction_id, alert_type, alert_date, status)
SELECT 
    ROW_NUMBER() OVER(),
    transaction_id,
    'High Value Transaction',
    NOW(),
    'Open'
FROM Transactions
WHERE amount > 80000
LIMIT 50;



INSERT INTO Fraud_Alerts (alert_id, transaction_id, alert_type, alert_date, status)
SELECT 
    ROW_NUMBER() OVER() + 100,
    transaction_id,
    'Suspicious Withdrawal',
    NOW(),
    'Investigating'
FROM Transactions
WHERE transaction_type = 'Withdrawal'
AND amount > 50000
LIMIT 50;


INSERT INTO Fraud_Alerts (alert_id, transaction_id, alert_type, alert_date, status)
SELECT 
    ROW_NUMBER() OVER() + 200,
    t.transaction_id,
    'Multiple Locations',
    NOW(),
    'Open'
FROM Transactions t
JOIN (
    SELECT account_id, DATE(transaction_date) d
    FROM Transactions
    GROUP BY account_id, d
    HAVING COUNT(DISTINCT location) > 1
) x
ON t.account_id = x.account_id
AND DATE(t.transaction_date) = x.d;

SELECT * FROM Fraud_Alerts;


