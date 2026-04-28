--- BASIC ANALYSIS QUERIES 
SELECT * FROM Transactions;

SELECT 
    c.customer_id,
    c.name,
    COUNT(t.transaction_id) AS total_transactions,
    SUM(t.amount) AS total_amount
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
JOIN Transactions t ON a.account_id = t.account_id
GROUP BY c.customer_id, c.name;

SELECT 
    account_id,
    SUM(CASE 
        WHEN transaction_type = 'Deposit' THEN amount
        WHEN transaction_type = 'Withdrawal' THEN -amount
        ELSE 0
    END) AS calculated_balance
FROM Transactions
GROUP BY account_id;

SELECT 
    DATE(transaction_date) AS transaction_day,
    COUNT(*) AS total_transactions,
    SUM(amount) AS total_amount
FROM Transactions
GROUP BY DATE(transaction_date)
ORDER BY transaction_day;

SELECT 
    DATE(transaction_date) AS transaction_day,
    COUNT(*) AS total_transactions,
    SUM(amount) AS total_amount
FROM Transactions
GROUP BY DATE(transaction_date)
ORDER BY transaction_day;

SELECT 
    b.branch_name,
    COUNT(t.transaction_id) AS total_transactions,
    SUM(t.amount) AS total_amount
FROM Branches b
JOIN Accounts a ON b.branch_id = a.branch_id
JOIN Transactions t ON a.account_id = t.account_id
GROUP BY b.branch_name;