
CREATE TABLE Branches (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    city VARCHAR(50),
    created_at DATE
);


CREATE TABLE Accounts (
    account_id INT PRIMARY KEY,
    customer_id INT,
    branch_id INT,
    account_type VARCHAR(20),
    balance DECIMAL(12,2),
    created_at DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (branch_id) REFERENCES Branches(branch_id)
);


CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    transaction_type VARCHAR(30),
    amount DECIMAL(12,2),
    transaction_date DATETIME,
    location VARCHAR(50),
    FOREIGN KEY (account_id) REFERENCES Accounts(account_id)
);

CREATE TABLE Fraud_Alerts (
    alert_id INT PRIMARY KEY,
    transaction_id INT,
    alert_type VARCHAR(100),
    alert_date DATETIME,
    status VARCHAR(20),
    FOREIGN KEY (transaction_id) REFERENCES Transactions(transaction_id)
);

SHOW TABLES;