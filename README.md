# 🛒 AWS E-Commerce Analytics Pipeline with Churn Prediction

An end-to-end data pipeline built using AWS, SQL, Machine Learning, and Power BI to analyze e-commerce data and predict customer churn.

---

## 📊 Project Overview

This project demonstrates a complete data workflow from raw data ingestion to business insights and predictive modeling.

Key components include:

- Built a scalable data lake using **AWS S3**
- Automated data cataloging using **AWS Glue**
- Performed SQL-based analytics using **AWS Athena**
- Developed a **customer churn prediction model** using Python (Scikit-learn)
- Designed an **interactive Power BI dashboard** for business insights

---

## ⚙️ Tech Stack

- **AWS S3** → Data Lake  
- **AWS Glue** → Data Catalog & ETL  
- **AWS Athena** → SQL Query Engine  
- **AWS Lambda** → Automation Trigger  
- **Python (Google Colab)** → Data Processing & ML  
- **Scikit-learn** → Random Forest Model  
- **Power BI** → Data Visualization  

---

## 🏗️ Architecture

![Architecture](architecture.png)

---

## 🔄 Pipeline Flow

1. Raw CSV data is uploaded to **AWS S3**
2. **AWS Glue Crawler** catalogs data into structured tables
3. **AWS Athena** runs SQL queries directly on S3
4. Processed data is exported and analyzed in **Google Colab**
5. A machine learning model predicts **customer churn probability**
6. Results are visualized in a **Power BI dashboard**

---

## 📁 Project Structure

── dashboard/ → Power BI dashboard screenshots
├── data/ → Athena query outputs
├── rawdata/ → Raw datasets
├── sql/ → Athena SQL queries
├── architecture.png → Pipeline diagram
├── aws_ecommerce_etl_ml_pipeline.ipynb → ML notebook
└── README.md


---

## 📊 Dashboard

### 📈 Business Performance
![Business Performance](dashboard/Business_performance.png)

### 👥 Customer Segmentation
![Customer Segmentation](dashboard/Customer_Segmentation.png)

### ⚠️ Churn Risk Intelligence
![Churn Risk](dashboard/Churn_Risk_Intelligence.png)

---

## 🔍 Key Business Insights

- ~60% of customers make only **one purchase**, indicating low retention  
- Customers with fewer orders show **higher churn probability**  
- High-risk customers represent a significant **revenue at risk**  
- Increasing repeat purchases can **reduce churn and improve retention**

---

## 🤖 Machine Learning Model

- **Model:** Random Forest Classifier  
- **Objective:** Predict customer churn probability  
- **Approach:** Customer-level feature engineering  

### Features Used:
- total_orders  
- total_revenue  
- avg_order_value  
- avg_review_score  
- avg_delivery_delay  
- days_since_last_purchase  
- customer_lifetime_days  

---

## 📊 Model Performance

- **AUC Score:** 1.00  

> High performance achieved through strong feature engineering and structured dataset.

---

## 💰 Business Impact

- Identified high-risk customers contributing approximately:


$3,879,087 revenue at risk


- Enables businesses to:
  - Target high-risk customers  
  - Improve retention strategies  
  - Protect future revenue  

---

## 📈 SQL Analysis (AWS Athena)

Performed key analytics using SQL:

- Monthly revenue trend  
- Top product categories by revenue  
- Customer purchase frequency  
- Review score analysis  

---

## 🚀 How to Run

1. Upload raw data to AWS S3  
2. Run AWS Glue crawler to catalog data  
3. Execute queries using Athena  
4. Run ML pipeline in Google Colab  
5. Generate churn predictions  
6. Visualize results in Power BI  

---

## 🔒 Note

- AWS resources are not included due to cloud environment constraints  
- No credentials or sensitive data are stored in this repository  

---

## 👨‍💻 Author

**Reyaz Gitwork**

