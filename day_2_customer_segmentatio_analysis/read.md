**DAY 2 SUBMISSION** 
(Python + Tableau)

# 👥 Customer Behavior Analysis

**Python · Tableau | Customer Segmentation & RFM Analytics**

---

## 🎯 The Business Problem

An e-commerce business wanted to better understand its customer base in order to improve retention, increase customer lifetime value, and develop more effective marketing strategies. While transaction data was available, the business lacked answers to key questions:

* Which customers generate the most value?
* Which customers are most likely to stop purchasing?
* How frequently do customers make purchases?
* How can customers be segmented for personalized marketing campaigns?

This project uses **RFM (Recency, Frequency, Monetary) Analysis** to transform raw customer transaction data into actionable customer segments and business insights.

---

# 📈 Key Results

| Metric                   | Finding                      |
| ------------------------ | ---------------------------- |
| Total Customers Analyzed | 4,339                        |
| Largest Customer Segment | New/Casual Customers (2,308) |
| High-Value Customers     | Champions (1,319)            |
| Loyal Customers          | 448                          |
| At-Risk Customers        | 264                          |

---

# 🛠️ What Was Built

## 1. Python Data Preparation

* Cleaned and validated customer transaction data.
* Removed duplicate records and handled missing values.
* Calculated customer-level purchase history.
* Prepared the dataset for RFM analysis.

---

## 2. Customer RFM Analysis

Calculated the three key RFM metrics:

### 📅 Recency

* Measured the number of days since each customer's last purchase using the latest invoice date as the reference point.

### 🔄 Frequency

* Calculated the total number of purchases made by each customer.

### 💰 Monetary

* Calculated the total amount spent by each customer.

---

## 3. Customer Segmentation

Created four customer segments based on RFM scores:

* 🏆 **Champions** – Recent, frequent, and high-spending customers.
* ❤️ **Loyal Customers** – Frequent purchasers with strong long-term engagement.
* ⚠️ **At Risk** – Previously valuable customers who have not purchased recently.
* 🌱 **New/Casual** – Recent customers with relatively low purchase frequency and spending.

---

## 4. Tableau Interactive Dashboard

Designed an interactive dashboard featuring:

* Customer Segment Distribution
* RFM Analysis Overview
* Customer Lifetime Value Analysis
* Purchase Frequency Distribution
* Interactive customer segmentation visuals

---

# 💡 Key Business Insights

### 👥 Most Customers Are New or Casual Buyers

The largest customer segment consists of **2,308 New/Casual customers**, indicating that the business attracts many first-time or infrequent buyers. This presents a significant opportunity to improve customer retention and encourage repeat purchases.

### 🏆 Strong Core of High-Value Customers

The **Champion** segment contains **1,319 customers** who purchase frequently and spend significantly more than other groups. These customers represent the business's most valuable assets and should be prioritized with loyalty rewards and exclusive offers.

### ⚠️ Valuable Customers Are at Risk

Although relatively small (**264 customers**), the **At Risk** segment includes previously high-value customers who have not made recent purchases. Targeted re-engagement campaigns could help recover lost revenue from this group.

### 📈 Marketing Should Be Segment-Specific

Different customer groups require different marketing strategies:

* Reward **Champions** with exclusive benefits and loyalty programs.
* Strengthen relationships with **Loyal Customers** through personalized offers.
* Re-engage **At Risk** customers using targeted promotions.
* Convert **New/Casual** customers into repeat buyers with onboarding campaigns and incentives.

---

# 📁 Project Files

| File                                 | Purpose                                                                         |
| ------------------------------------ | ------------------------------------------------------------------------------- |
| Customer_Segmentation.ipynb          | Data cleaning, RFM calculation, customer segmentation, and exploratory analysis |
| Customer_Segmentation_Dashboard.twbx | Interactive Tableau dashboard                                                   |
| Customer_RFM.csv                     | Cleaned customer-level RFM dataset                                              |

---

# 🛠️ Tools Used

![Python](https://img.shields.io/badge/Python-3776AB?style=flat\&logo=python\&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-150458?style=flat\&logo=pandas\&logoColor=white)
![NumPy](https://img.shields.io/badge/NumPy-013243?style=flat\&logo=numpy\&logoColor=white)
![Matplotlib](https://img.shields.io/badge/Matplotlib-11557C?style=flat)
![Seaborn](https://img.shields.io/badge/Seaborn-4C72B0?style=flat)
![Tableau](https://img.shields.io/badge/Tableau-E97627?style=flat\&logo=tableau\&logoColor=white)
![Jupyter](https://img.shields.io/badge/Jupyter-F37626?style=flat\&logo=jupyter\&logoColor=white)

---

# 📊 Dashboard Preview

*(Insert your Tableau dashboard screenshot here.)*

![Dashboard]<img src="Screenshot (17).png" width="900">


---

# 🔗 Project Links

**GitHub Repository**
https://github.com/natnaelaster/Daily-exercise/tree/main/day_2_customer_segmentatio_analysis

**Interactive Tableau Dashboard**
https://public.tableau.com/app/profile/natnael.birhanu/viz/day_2_customer_segmentation/Dashboard1

---

# ⏱️ Project Summary

* **Project Type:** Customer Segmentation & RFM Analysis
* **Tools:** Python + Tableau
* **Duration:** Approximately 8 hours
* **Primary Challenge:** Developing an effective RFM scoring methodology, particularly defining customer frequency thresholds to create meaningful and actionable customer segments.

---

## 📬 Let's Connect

If you're interested in customer analytics, segmentation, business intelligence, or data-driven marketing solutions, feel free to connect with me on LinkedIn or explore more projects in my portfolio.
