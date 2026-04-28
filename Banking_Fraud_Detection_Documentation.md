# 📄 Banking Transactions & Fraud Detection System – Documentation

## 📌 1. Problem Statement

In modern banking systems, detecting fraudulent transactions is critical to prevent financial losses and protect customers.
Banks process thousands of transactions daily, making it difficult to manually identify suspicious activities.

This project aims to:

* Simulate a **banking transaction system**
* Analyze transaction data using SQL
* Detect potential fraud using rule-based logic


## 📊 2. Dataset Description

The dataset consists of 5 main tables:

### 🔹 Customers

Contains customer details such as:

* Customer ID
* Name
* City
* Account creation date

### 🔹 Accounts

Stores account-related information:

* Account ID
* Customer ID (linked to Customers)
* Branch ID (linked to Branches)
* Account Type (Savings/Current)
* Balance

### 🔹 Transactions

Stores all financial activities:

* Transaction ID
* Account ID (linked to Accounts)
* Transaction Type (Deposit, Withdrawal, Transfer, Online Payment)
* Amount
* Transaction Date
* Location

### 🔹 Branches

Contains branch information:

* Branch ID
* Branch Name
* City


### 🔹 Fraud_Alerts

Stores detected suspicious transactions:

* Alert ID
* Transaction ID (linked to Transactions)
* Alert Type
* Alert Date
* Status


## 🧠 3. SQL Approach

The project follows a structured SQL workflow:

1. **Database Design**

   * Created relational tables with primary and foreign keys
   * Ensured referential integrity

2. **Data Insertion**

   * Inserted realistic sample data
   * Ensured multiple transactions per account

3. **Data Analysis**

   * Used aggregation functions (SUM, COUNT, AVG)
   * Used GROUP BY and JOIN operations

4. **Fraud Detection**

   * Applied rule-based SQL queries to identify suspicious patterns

## 🚨 4. Fraud Detection Logic

The system identifies fraud using the following rules:

### 🔴 High-Value Transactions

* Transactions above ₹80,000 are flagged as suspicious

### 🔁 Multiple Transactions in Short Time

* Accounts performing many transactions in a short duration

### 🌍 Multiple Locations

* Same account used in different cities within a short time


### 📉 Unusual Transaction Patterns

* Transactions significantly higher than the customer’s average

### 💸 Suspicious Withdrawals

* Large withdrawal amounts indicating possible fraud


## 📈 5. Key Insights

Using SQL queries, the following insights were generated:

* Top customers based on total transaction value
* Most active accounts with highest transaction count
* Branch-wise performance analysis
* Daily and monthly transaction trends
* Distribution of fraud alerts


## 💼 6. Business Impact

This system helps banks to:

* Detect fraud early and reduce financial losses
* Monitor customer transaction behavior
* Improve risk management strategies
* Enhance security and compliance


## 🚀 7. Future Enhancements

* Real-time fraud detection using streaming data
* Integration with machine learning models
* Dashboard visualization using Power BI
* Automated alert systems


## 🧾 8. Conclusion

This project demonstrates how SQL can be effectively used to:

* Design a banking database system
* Analyze large-scale transaction data
* Detect fraudulent activities using rule-based logic

It reflects real-world applications in banking, finance, and risk analytics.



