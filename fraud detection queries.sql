--- FRAUD DETECTION QUERIES
SELECT * 
FROM Transactions
WHERE amount > 80000;

SELECT *
FROM Transactions
WHERE transaction_type = 'Withdrawal'
and amount > 20000;

SELECT 
    account_id,
    AVG(amount) AS avg_amount,
    MAX(amount) AS max_amount
FROM Transactions
GROUP BY account_id
HAVING MAX(amount) > 1.5 * AVG(amount);

SELECT 
    account_id,
    COUNT(DISTINCT location) AS locations
FROM Transactions
GROUP BY account_id
HAVING COUNT(DISTINCT location) = 1;

