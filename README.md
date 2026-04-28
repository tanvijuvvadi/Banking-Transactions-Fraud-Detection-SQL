# 💳 Banking Transactions & Fraud Detection Database

## 📌 Project Overview

This project simulates a **real-world banking system** using SQL to manage customer accounts, transactions, and detect fraudulent activities.
It is designed to demonstrate how financial institutions monitor transactions, analyze patterns, and identify suspicious behavior using structured data.


## 🎯 Objective

* To design a **relational database system** for banking operations
* To perform **transaction analysis using SQL**
* To implement **fraud detection logic** using query-based rules
* To generate **business insights** from financial data

## 🛠️ Tools Used

* **SQL (MySQL)** – Database creation, data manipulation, and analysis
* **Excel Dataset** – Sample data for customers, accounts, transactions, and fraud alerts


## 🏗️ Database Schema

The database consists of the following tables:

* **Customers**
* **Accounts**
* **Transactions**
* **Branches**
* **Fraud_Alerts**

### 🔗 Relationships:

* One **Customer** → Many **Accounts**
* One **Account** → Many **Transactions**
* One **Branch** → Many **Accounts**
* One **Transaction** → May have a **Fraud Alert**


## 📂 Tables Description

### 1. Customers

Stores customer information

* `customer_id` (Primary Key)
* `name`
* `city`
* `created_at`


### 2. Accounts

Stores bank account details

* `account_id` (Primary Key)
* `customer_id` (Foreign Key)
* `branch_id` (Foreign Key)
* `account_type` (Savings / Current)
* `balance`
* `created_at`



### 3. Transactions

Stores all financial transactions

* `transaction_id` (Primary Key)
* `account_id` (Foreign Key)
* `transaction_type` (Deposit, Withdrawal, Transfer, Online Payment)
* `amount`
* `transaction_date`
* `location`
* 

### 4. Branches

Stores branch details

* `branch_id` (Primary Key)
* `branch_name`
* `city`

---

### 5. Fraud_Alerts

Stores detected fraud cases

* `alert_id` (Primary Key)
* `transaction_id` (Foreign Key)
* `alert_type`
* `alert_date`
* `status`


## 🔍 Key SQL Queries

### 📊 Customer Transaction Summary

* Total transactions per customer
* Total transaction amount

### 💰 Account Balance Calculation

* Calculates balance using deposits and withdrawals

### 📅 Daily Transaction Volume

* Tracks number of transactions per day

### 🏦 Branch-wise Analysis

* Measures branch performance based on transaction volume


## 🚨 Fraud Detection Logic

The system identifies suspicious activities using rule-based queries:

### 🔴 High-Value Transactions

* Transactions above a certain threshold (e.g., > ₹80,000)

### 🔁 Frequent Transactions

* Multiple transactions within a short time period

### 🌍 Multiple Locations

* Same account used across different cities

### 📉 Unusual Patterns

* Transactions significantly higher than average

### 💸 Suspicious Withdrawals

* Large withdrawal amounts indicate potential fraud

  
## 📈 Key Insights Generated

* Top customers based on transaction value
* Most active accounts
* Branch-wise business performance
* Monthly transaction trends
* Fraud alert distribution by type


## 🧠 Conclusion

This project demonstrates how SQL can be used to:

* Build a **structured banking database system**
* Perform **data analysis and reporting**
* Detect **fraudulent activities using rule-based logic**

It reflects real-world banking use cases where data plays a critical role in:

* Risk management
* Fraud prevention
* Business decision-making


## 🚀 Future Enhancements

* Integration with **real-time streaming data**
* Use of **Machine Learning models** for advanced fraud detection
* Dashboard creation using **Power BI / Tableau**
* API integration for live transaction monitoring



