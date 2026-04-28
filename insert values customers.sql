-- Disable foreign key checks (important)
SET FOREIGN_KEY_CHECKS = 0;

-- Clear old data
TRUNCATE TABLE Transactions;
TRUNCATE TABLE Accounts;
TRUNCATE TABLE Customers;

SET FOREIGN_KEY_CHECKS = 1;

-- =========================
-- 1. INSERT CUSTOMERS (50)
-- =========================

INSERT INTO Customers (customer_id, name, email, phone, city, created_at) VALUES
(1, 'Rahul Sharma', 'rahul.sharma@gmail.com', '9876500001', 'Hyderabad', '2023-01-10'),
(2, 'Priya Reddy', 'priya.reddy@gmail.com', '9876500002', 'Bangalore', '2023-02-12'),
(3, 'Amit Kumar', 'amit.kumar@gmail.com', '9876500003', 'Delhi', '2023-03-15'),
(4, 'Sneha Patel', 'sneha.patel@gmail.com', '9876500004', 'Mumbai', '2023-04-20'),
(5, 'Rohit Verma', 'rohit.verma@gmail.com', '9876500005', 'Chennai', '2023-05-05'),
(6, 'Anjali Mehta', 'anjali.mehta@gmail.com', '9876500006', 'Hyderabad', '2023-06-01'),
(7, 'Karan Singh', 'karan.singh@gmail.com', '9876500007', 'Bangalore', '2023-06-15'),
(8, 'Neha Gupta', 'neha.gupta@gmail.com', '9876500008', 'Delhi', '2023-07-10'),
(9, 'Vikas Yadav', 'vikas.yadav@gmail.com', '9876500009', 'Mumbai', '2023-07-25'),
(10, 'Pooja Nair', 'pooja.nair@gmail.com', '9876500010', 'Chennai', '2023-08-05'),

(11, 'Arjun Rao', 'arjun.rao@gmail.com', '9876500011', 'Hyderabad', '2023-08-20'),
(12, 'Divya Iyer', 'divya.iyer@gmail.com', '9876500012', 'Bangalore', '2023-09-01'),
(13, 'Manish Jain', 'manish.jain@gmail.com', '9876500013', 'Delhi', '2023-09-18'),
(14, 'Kavita Sharma', 'kavita.sharma@gmail.com', '9876500014', 'Mumbai', '2023-10-02'),
(15, 'Suresh Babu', 'suresh.babu@gmail.com', '9876500015', 'Chennai', '2023-10-20'),
(16, 'Meera Kapoor', 'meera.kapoor@gmail.com', '9876500016', 'Hyderabad', '2023-11-05'),
(17, 'Ravi Teja', 'ravi.teja@gmail.com', '9876500017', 'Bangalore', '2023-11-18'),
(18, 'Nikhil Das', 'nikhil.das@gmail.com', '9876500018', 'Delhi', '2023-12-01'),
(19, 'Swati Mishra', 'swati.mishra@gmail.com', '9876500019', 'Mumbai', '2023-12-15'),
(20, 'Deepak Joshi', 'deepak.joshi@gmail.com', '9876500020', 'Chennai', '2024-01-05'),

(21, 'Harsha Vardhan', 'harsha.v@gmail.com', '9876500021', 'Hyderabad', '2024-01-20'),
(22, 'Keerthi Reddy', 'keerthi.r@gmail.com', '9876500022', 'Bangalore', '2024-02-10'),
(23, 'Abhishek Singh', 'abhishek.s@gmail.com', '9876500023', 'Delhi', '2024-02-22'),
(24, 'Shreya Shah', 'shreya.shah@gmail.com', '9876500024', 'Mumbai', '2024-03-01'),
(25, 'Gaurav Gupta', 'gaurav.g@gmail.com', '9876500025', 'Chennai', '2024-03-15'),
(26, 'Lakshmi Priya', 'lakshmi.p@gmail.com', '9876500026', 'Hyderabad', '2024-04-05'),
(27, 'Aditya Kulkarni', 'aditya.k@gmail.com', '9876500027', 'Bangalore', '2024-04-20'),
(28, 'Varun Malhotra', 'varun.m@gmail.com', '9876500028', 'Delhi', '2024-05-01'),
(29, 'Simran Kaur', 'simran.k@gmail.com', '9876500029', 'Mumbai', '2024-05-18'),
(30, 'Ankit Agarwal', 'ankit.a@gmail.com', '9876500030', 'Chennai', '2024-06-01'),

(31, 'Tejaswini', 'tejaswini@gmail.com', '9876500031', 'Hyderabad', '2024-06-10'),
(32, 'Sandeep Kumar', 'sandeep.k@gmail.com', '9876500032', 'Bangalore', '2024-06-20'),
(33, 'Ritika Sharma', 'ritika.s@gmail.com', '9876500033', 'Delhi', '2024-07-01'),
(34, 'Mohit Bansal', 'mohit.b@gmail.com', '9876500034', 'Mumbai', '2024-07-12'),
(35, 'Kiran Rao', 'kiran.r@gmail.com', '9876500035', 'Chennai', '2024-07-25'),
(36, 'Pavan Kumar', 'pavan.k@gmail.com', '9876500036', 'Hyderabad', '2024-08-01'),
(37, 'Sonia Verma', 'sonia.v@gmail.com', '9876500037', 'Bangalore', '2024-08-10'),
(38, 'Rahul Das', 'rahul.d@gmail.com', '9876500038', 'Delhi', '2024-08-20'),
(39, 'Ananya Sen', 'ananya.s@gmail.com', '9876500039', 'Mumbai', '2024-09-01'),
(40, 'Vivek Singh', 'vivek.s@gmail.com', '9876500040', 'Chennai', '2024-09-15'),

(41, 'Ashok Reddy', 'ashok.r@gmail.com', '9876500041', 'Hyderabad', '2024-10-01'),
(42, 'Meghana', 'meghana@gmail.com', '9876500042', 'Bangalore', '2024-10-10'),
(43, 'Rajesh Kumar', 'rajesh.k@gmail.com', '9876500043', 'Delhi', '2024-10-20'),
(44, 'Pallavi Gupta', 'pallavi.g@gmail.com', '9876500044', 'Mumbai', '2024-11-01'),
(45, 'Tarun Sharma', 'tarun.s@gmail.com', '9876500045', 'Chennai', '2024-11-15'),
(46, 'Naveen Kumar', 'naveen.k@gmail.com', '9876500046', 'Hyderabad', '2024-12-01'),
(47, 'Rashmi Jain', 'rashmi.j@gmail.com', '9876500047', 'Bangalore', '2024-12-10'),
(48, 'Kunal Mehta', 'kunal.m@gmail.com', '9876500048', 'Delhi', '2024-12-20'),
(49, 'Isha Kapoor', 'isha.k@gmail.com', '9876500049', 'Mumbai', '2025-01-05'),
(50, 'Aravind', 'aravind@gmail.com', '9876500050', 'Chennai', '2025-01-15');

-- =========================
-- 2. INSERT ACCOUNTS (50)
-- =========================

INSERT INTO Accounts (account_id, customer_id, branch_id, account_type, balance, created_at)
SELECT 
    1000 + customer_id,
    customer_id,
    (SELECT branch_id FROM Branches ORDER BY RAND() LIMIT 1),
    CASE WHEN RAND() < 0.5 THEN 'Savings' ELSE 'Current' END,
    ROUND(RAND()*100000, 2),
    DATE_SUB(CURDATE(), INTERVAL FLOOR(RAND()*500) DAY)
FROM Customers;

-- =========================
-- 3. INSERT TRANSACTIONS (200)
-- =========================

INSERT INTO Transactions (transaction_id, account_id, transaction_type, amount, transaction_date, location)
SELECT 
    t_id,
    1000 + FLOOR(1 + RAND()*50),
    ELT(1 + FLOOR(RAND()*4), 'Deposit', 'Withdrawal', 'Transfer', 'Online Payment'),
    ROUND(RAND()*100000, 2),
    DATE_SUB(NOW(), INTERVAL FLOOR(RAND()*365) DAY),
    ELT(1 + FLOOR(RAND()*5), 'Hyderabad', 'Bangalore', 'Mumbai', 'Delhi', 'Chennai')
FROM (
    SELECT 1 t_id UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5
    UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9 UNION SELECT 10
    UNION SELECT 11 UNION SELECT 12 UNION SELECT 13 UNION SELECT 14 UNION SELECT 15
    UNION SELECT 16 UNION SELECT 17 UNION SELECT 18 UNION SELECT 19 UNION SELECT 20
    UNION SELECT 21 UNION SELECT 22 UNION SELECT 23 UNION SELECT 24 UNION SELECT 25
    UNION SELECT 26 UNION SELECT 27 UNION SELECT 28 UNION SELECT 29 UNION SELECT 30
    UNION SELECT 31 UNION SELECT 32 UNION SELECT 33 UNION SELECT 34 UNION SELECT 35
    UNION SELECT 36 UNION SELECT 37 UNION SELECT 38 UNION SELECT 39 UNION SELECT 40
    UNION SELECT 41 UNION SELECT 42 UNION SELECT 43 UNION SELECT 44 UNION SELECT 45
    UNION SELECT 46 UNION SELECT 47 UNION SELECT 48 UNION SELECT 49 UNION SELECT 50
    UNION SELECT 51 UNION SELECT 52 UNION SELECT 53 UNION SELECT 54 UNION SELECT 55
    UNION SELECT 56 UNION SELECT 57 UNION SELECT 58 UNION SELECT 59 UNION SELECT 60
    UNION SELECT 61 UNION SELECT 62 UNION SELECT 63 UNION SELECT 64 UNION SELECT 65
    UNION SELECT 66 UNION SELECT 67 UNION SELECT 68 UNION SELECT 69 UNION SELECT 70
    UNION SELECT 71 UNION SELECT 72 UNION SELECT 73 UNION SELECT 74 UNION SELECT 75
    UNION SELECT 76 UNION SELECT 77 UNION SELECT 78 UNION SELECT 79 UNION SELECT 80
    UNION SELECT 81 UNION SELECT 82 UNION SELECT 83 UNION SELECT 84 UNION SELECT 85
    UNION SELECT 86 UNION SELECT 87 UNION SELECT 88 UNION SELECT 89 UNION SELECT 90
    UNION SELECT 91 UNION SELECT 92 UNION SELECT 93 UNION SELECT 94 UNION SELECT 95
    UNION SELECT 96 UNION SELECT 97 UNION SELECT 98 UNION SELECT 99 UNION SELECT 100
    UNION SELECT 101 UNION SELECT 102 UNION SELECT 103 UNION SELECT 104 UNION SELECT 105
    UNION SELECT 106 UNION SELECT 107 UNION SELECT 108 UNION SELECT 109 UNION SELECT 110
    UNION SELECT 111 UNION SELECT 112 UNION SELECT 113 UNION SELECT 114 UNION SELECT 115
    UNION SELECT 116 UNION SELECT 117 UNION SELECT 118 UNION SELECT 119 UNION SELECT 120
    UNION SELECT 121 UNION SELECT 122 UNION SELECT 123 UNION SELECT 124 UNION SELECT 125
    UNION SELECT 126 UNION SELECT 127 UNION SELECT 128 UNION SELECT 129 UNION SELECT 130
    UNION SELECT 131 UNION SELECT 132 UNION SELECT 133 UNION SELECT 134 UNION SELECT 135
    UNION SELECT 136 UNION SELECT 137 UNION SELECT 138 UNION SELECT 139 UNION SELECT 140
    UNION SELECT 141 UNION SELECT 142 UNION SELECT 143 UNION SELECT 144 UNION SELECT 145
    UNION SELECT 146 UNION SELECT 147 UNION SELECT 148 UNION SELECT 149 UNION SELECT 150
    UNION SELECT 151 UNION SELECT 152 UNION SELECT 153 UNION SELECT 154 UNION SELECT 155
    UNION SELECT 156 UNION SELECT 157 UNION SELECT 158 UNION SELECT 159 UNION SELECT 160
    UNION SELECT 161 UNION SELECT 162 UNION SELECT 163 UNION SELECT 164 UNION SELECT 165
    UNION SELECT 166 UNION SELECT 167 UNION SELECT 168 UNION SELECT 169 UNION SELECT 170
    UNION SELECT 171 UNION SELECT 172 UNION SELECT 173 UNION SELECT 174 UNION SELECT 175
    UNION SELECT 176 UNION SELECT 177 UNION SELECT 178 UNION SELECT 179 UNION SELECT 180
    UNION SELECT 181 UNION SELECT 182 UNION SELECT 183 UNION SELECT 184 UNION SELECT 185
    UNION SELECT 186 UNION SELECT 187 UNION SELECT 188 UNION SELECT 189 UNION SELECT 190
    UNION SELECT 191 UNION SELECT 192 UNION SELECT 193 UNION SELECT 194 UNION SELECT 195
    UNION SELECT 196 UNION SELECT 197 UNION SELECT 198 UNION SELECT 199 UNION SELECT 200
) t;


select * from customers;