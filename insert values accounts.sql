INSERT INTO Accounts (account_id, customer_id, branch_id, account_type, balance, created_at)
SELECT 
    1000 + customer_id,   -- safer unique ID
    customer_id,
    (SELECT branch_id FROM Branches ORDER BY RAND() LIMIT 1),
    CASE 
        WHEN RAND() < 0.5 THEN 'Savings'
        ELSE 'Current'
    END,
    ROUND(RAND()*100000, 2),
    DATE_SUB(CURDATE(), INTERVAL FLOOR(RAND()*500) DAY)
FROM Customers;

select * from Accounts;

SELECT * FROM Branches;
SELECT account_id, branch_id FROM Accounts;

UPDATE Accounts
SET branch_id = FLOOR(1 + RAND()*10)
WHERE branch_id IS NULL;

