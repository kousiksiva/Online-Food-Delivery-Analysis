# 🍔 Online Food Delivery Analysis Dashboard

## 📌 Project Title
**Online Food Delivery Analysis using Python, SQL & Power BI**

## 📖 Project Description
The **Online Food Delivery Analysis** project is an end-to-end business intelligence solution designed to analyze food delivery operations. The primary objective is to extract meaningful insights related to **Orders, Customers, Delivery Performance, Revenue, and Cancellations.**

These insights are presented through a clean, interactive **Power BI dashboard**, following a real-world analytics workflow aligned with professional industry standards.

## 🎯 Business Objectives
* **Understand** customer ordering behavior and demographics.
* **Identify** high-demand cities and peak order hours.
* **Analyze** payment mode preferences (UPI, Cash, Cards).
* **Measure** delivery efficiency, average delivery time, and delays.
* **Track** order cancellations and identify primary reasons for failure.
* **Provide actionable insights** to improve operational efficiency and customer experience.

## 🛠 Tools & Technologies Used

| Category | Tools |
| :--- | :--- |
| **Programming Language** | Python |
| **Libraries** | Pandas, NumPy |
| **Database** | MySQL |
| **Data Access** | SQLAlchemy |
| **Visualization** | Power BI |
| **Notebook** | Jupyter Notebook |
| **Version Control** | Git & GitHub |

## 🔄 Project Workflow

### 1️⃣ Data Collection
* Raw food delivery data was collected in CSV format.
* **Source:** `data/raw_data.csv`

### 2️⃣ Data Cleaning & Preparation
* Removed duplicate records and handled missing values.
* Created new features like **Customer Age Groups**.
* Standardized cancellation reasons for consistent reporting.
* **Script:** `scripts/2_clean_data.py`

### 3️⃣ Data Storage (MySQL)
* Cleaned data was structured and loaded into a MySQL relational database.
* **Database:** `food_delivery_db` | **Table:** `food_delivery_orders`
* **Script:** `scripts/3_store_to_sql.py`

### 4️⃣ SQL Data Analysis
Key performance indicators were extracted using SQL queries:
* Total order volume and revenue.
* Delivery performance metrics.
* Peak hour demand analysis.
* **Queries:** `scripts/analysis_queries.sql`

### 5️⃣ Dashboard Creation (Power BI)
An interactive dashboard was built to visualize the data story.
* **Key Visuals:** Total Orders KPI, Orders by City, Payment Distribution, Delivery Time Analysis.
* **Dashboard File:** `powerbi/Food_Delivery_Dashboard.pbix`

## 📊 Key Insights Generated
* **City Demand:** Specific Tier-1 cities contribute to 60% of total order volume.
* **Payment Behavior:** Digital payments (UPI & Wallet) significantly dominate over Cash on Delivery.
* **Peak Times:** Lunch (12 PM - 2 PM) and Dinner (7 PM - 9 PM) slots show the highest traffic.
* **Operational Challenges:** Late delivery and "Partner Unavailability" are the top reasons for cancellations.

## 🚀 Future Enhancements
- [ ] Add advanced **DAX measures** for Year-over-Year growth.
- [ ] Implement **time-series forecasting** for order demand.
- [ ] Automate the data pipeline using **scheduled Cron jobs**.
- [ ] Integrate **Machine Learning** to predict delivery delays.

