---- INSIGHT QUERIES
SELECT 
    c.customer_id,
    c.name,
    SUM(t.amount) AS total_spent
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
JOIN Transactions t ON a.account_id = t.account_id
GROUP BY c.customer_id, c.name
ORDER BY total_spent DESC
LIMIT 5;


SELECT 
    account_id,
    COUNT(*) AS total_transactions
FROM Transactions
GROUP BY account_id
ORDER BY total_transactions DESC
LIMIT 5;

SELECT 
    b.branch_name,
    SUM(t.amount) AS total_business
FROM Branches b
JOIN Accounts a ON b.branch_id = a.branch_id
JOIN Transactions t ON a.account_id = t.account_id
GROUP BY b.branch_name
ORDER BY total_business DESC;

SELECT 
    DATE_FORMAT(transaction_date, '%Y-%m') AS month,
    SUM(amount) AS total_amount
FROM Transactions
GROUP BY month
ORDER BY month;

SELECT 
    alert_type,
    COUNT(*) AS total_cases
FROM Fraud_Alerts
GROUP BY alert_type;