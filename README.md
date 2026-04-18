# AWS E-Commerce Analytics Pipeline with Churn Prediction

An end-to-end data pipeline built using AWS, SQL, Python, and Power BI to analyze e-commerce customer behavior and identify high-risk churn segments.

---

## Project Overview

This project demonstrates a complete analytics workflow — from raw data ingestion and SQL-based transformation to customer segmentation and churn risk scoring — built on AWS cloud infrastructure.

**What this project covers:**
- Scalable data lake architecture using AWS S3
- Automated data cataloging and ETL using AWS Glue
- SQL-based analytics using AWS Athena
- Customer churn risk modeling using Python and Scikit-learn
- Business intelligence dashboard built in Power BI

---

## Tech Stack

| Layer | Tool |
|---|---|
| Data Lake | AWS S3 |
| Data Catalog & ETL | AWS Glue |
| SQL Query Engine | AWS Athena |
| Automation | AWS Lambda |
| Data Processing & ML | Python (Pandas, Scikit-learn) |
| Visualization | Power BI |

---

## Architecture

![Pipeline Architecture](architecture.png)

---

## Pipeline Flow

1. Raw CSV data uploaded to **AWS S3** as the data lake
2. **AWS Glue Crawler** catalogs raw data into queryable tables
3. **AWS Athena** runs SQL transformations directly on S3
4. Processed data exported for feature engineering in Python
5. **Random Forest classifier** scores customers by churn probability
6. High-risk segments surfaced in **Power BI** dashboard for business action

---

## Project Structure

```
ecommerce-project/
├── dashboard/                        # Power BI dashboard screenshots
│   ├── Business_performance.png
│   ├── Customer_Segmentation.png
│   └── Churn_Risk_Intelligence.png
│
├── data/                             # Athena query outputs (CSV)
│   ├── query_a_monthly_revenue.csv
│   ├── query_b_top_categories.csv
│   ├── query_c_avg_reviews.csv
│   └── query_d_customer_frequency.csv
│
├── rawdata/                          # Raw source datasets
│
├── sql/                              # Athena SQL queries
│   ├── query_a_monthly_revenue.sql
│   ├── query_b_top_categories.sql
│   ├── query_c_avg_reviews.sql
│   └── query_d_customer_frequency.sql
│
├── aws_ecommerce_etl_ml_pipeline.ipynb   # ML pipeline notebook
├── architecture.png                      # Pipeline diagram
└── README.md
```

---

## Dashboard

### Business Performance
![Business Performance](dashboard/Business_performance.png)

### Customer Segmentation
![Customer Segmentation](dashboard/Customer_Segmentation.png)

### Churn Risk Intelligence
![Churn Risk](dashboard/Churn_Risk_Intelligence.png)

---

## Key Business Insights

- Approximately **60% of customers made only one purchase**, indicating a significant retention gap
- Customers with fewer total orders and longer time since last purchase showed the highest churn probability
- High-risk customer segments were identified using churn probability scores, enabling prioritized retention outreach
- SQL analysis revealed seasonal revenue trends and top-performing product categories driving repeat purchases

---

## Machine Learning Model

**Model:** Random Forest Classifier  
**Objective:** Score customers by churn probability to identify high-risk segments  
**Approach:** Customer-level feature engineering on transactional history

**Features used:**
- `total_orders`
- `total_revenue`
- `avg_order_value`
- `avg_review_score`
- `avg_delivery_delay`
- `days_since_last_purchase`
- `customer_lifetime_days`

**Note on model performance:** The model was evaluated using AUC-ROC on a held-out test set. Results should be interpreted in the context of the dataset structure — the primary goal of this project is churn *segmentation* (ranking customers by risk) rather than production-grade binary classification.

---

## SQL Analysis (AWS Athena)

Four core analytical queries were built and executed via Athena:

- **Monthly revenue trend** — tracks revenue over time to identify seasonality
- **Top product categories** — ranks categories by total revenue contribution
- **Customer purchase frequency** — segments customers by order count
- **Review score analysis** — correlates review scores with repeat purchase behavior

See the `/sql` folder for full query definitions.

---

## How to Run

1. Upload raw CSV data from `/rawdata` to an AWS S3 bucket
2. Configure and run AWS Glue Crawler to catalog the data
3. Execute SQL queries in `/sql` using AWS Athena
4. Export query results and run `aws_ecommerce_etl_ml_pipeline.ipynb` in Google Colab or Jupyter
5. Load churn predictions into Power BI for visualization

> **Note:** AWS credentials and cloud resources are not included. No sensitive data is stored in this repository.

---

## Author

**Mohammad Reyaz Shaik**  
Analytics Engineer | SQL • dbt • AWS • Python • Power BI  
[LinkedIn](https://www.linkedin.com/in/mohammad-reyaz-shaik/) • [GitHub](https://github.com/Reyazgitwork)
