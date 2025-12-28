🍔 Online Food Delivery Analysis Dashboard
📌 Project Title

Online Food Delivery Analysis using Python, SQL & Power BI

📖 Project Description

The Online Food Delivery Analysis project is an end-to-end data analytics and business intelligence solution designed to analyze food delivery operations data.

The primary objective of this project is to extract meaningful business insights related to:

Orders

Customers

Delivery performance

Revenue

Payment methods

Order cancellations

These insights are presented through a clean, interactive Power BI dashboard.

The project follows a real-world analytics workflow, closely aligned with processes used in professional Data Analyst roles.

🎯 Business Objectives

Understand customer ordering behavior

Identify high-demand cities and peak order hours

Analyze customer payment mode preferences

Measure delivery efficiency and delays

Track order cancellations and cancellation reasons

Provide actionable insights to improve:

Operational efficiency

Customer experience

Business decision-making

🛠 Tools & Technologies Used
Category	Tools
Programming Language	Python
Libraries	Pandas, NumPy
Database	MySQL
Data Access	SQLAlchemy
Visualization	Power BI
Notebook	Jupyter Notebook
Version Control	Git & GitHub
📂 Project Folder Structure
Online_Food_Delivery_Analysis/
├── config/
│   └── db_config.py              # Database configuration
│
├── data/
│   ├── raw_data.csv              # Raw dataset
│   └── cleaned_data.csv          # Cleaned dataset
│
├── documentation/                # Project-related notes
│
├── notebooks/
│   └── exploration.ipynb         # Exploratory Data Analysis (EDA)
│
├── powerbi/
│   └── powwr_bi.pbix              # Power BI Dashboard file
│
├── scripts/
│   ├── 1_fetch_data.py            # Load raw data
│   ├── 2_clean_data.py            # Data cleaning & preprocessing
│   ├── 3_store_to_sql.py          # Store data into MySQL
│   ├── analysis_queries.sql       # SQL analysis queries
│   └── dashboard.py               # Placeholder for future automation
│
├── README.md                      # Project documentation
└── requirements.txt               # Python dependencies

🔄 Project Workflow (Step-by-Step)
Step 1: Data Collection

Raw food delivery data collected in CSV format

File used:
data/raw_data.csv

Step 2: Data Cleaning & Preparation

Removed duplicate records

Handled missing values

Created customer age groups

Standardized cancellation reasons

Cleaned dataset saved as:
data/cleaned_data.csv

Script:
scripts/2_clean_data.py

Step 3: Data Storage (MySQL)

Cleaned data loaded into a MySQL database

Database name: food_delivery_db

Table created: food_delivery_orders

Script:
scripts/3_store_to_sql.py

Step 4: SQL Data Analysis

Key SQL analyses performed:

Total number of orders

Orders by city

Payment mode distribution

Peak hour demand analysis

Cancellation reason analysis

Revenue and delivery performance insights

File:
scripts/analysis_queries.sql

Step 5: Dashboard Creation (Power BI)

An interactive Power BI dashboard was created to visualize all key insights.

Dashboard Highlights:

📌 Total Orders KPI

📍 Orders by City

💳 Payment Mode Distribution

⏰ Peak Hour Order Volume

❌ Cancellation Analysis

🚚 Delivery Time & Distance Analysis

File:
powerbi/powwr_bi.pbix

📊 Key Insights Generated

Certain cities contribute the highest number of orders

Digital payments (UPI & Wallet) dominate over Cash on Delivery

Specific time slots show clear peak order demand

Majority of orders are successfully delivered

Late delivery and customer cancellations are the primary operational challenges

🚀 Future Enhancements

Add advanced DAX measures in Power BI

Implement time-series trend analysis

Automate data pipeline using scheduled scripts

Add predictive analytics for delivery delays and cancellations