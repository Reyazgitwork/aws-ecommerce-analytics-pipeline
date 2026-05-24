<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=30&pause=1000&color=FF9900&center=true&vCenter=true&width=800&height=70&lines=☁️+AWS+E-Commerce+Analytics+Pipeline;End-to-End+Cloud+Data+Engineering+%2B+ML;S3+·+Glue+·+Athena+·+Lambda+·+Python+·+Power+BI" alt="Typing SVG" />

<br/>

![AWS](https://img.shields.io/badge/AWS-232F3E?style=for-the-badge&logo=amazonaws&logoColor=FF9900)
![S3](https://img.shields.io/badge/Amazon_S3-569A31?style=for-the-badge&logo=amazons3&logoColor=white)
![Glue](https://img.shields.io/badge/AWS_Glue-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white)
![Athena](https://img.shields.io/badge/AWS_Athena-232F3E?style=for-the-badge&logo=amazonaws&logoColor=FF9900)
![Lambda](https://img.shields.io/badge/AWS_Lambda-FF9900?style=for-the-badge&logo=awslambda&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Scikit-learn](https://img.shields.io/badge/Scikit--learn-F7931E?style=for-the-badge&logo=scikit-learn&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)

[![Stars](https://img.shields.io/github/stars/Reyazgitwork/aws-ecommerce-analytics-pipeline?style=social)](https://github.com/Reyazgitwork/aws-ecommerce-analytics-pipeline/stargazers)
[![Last Commit](https://img.shields.io/github/last-commit/Reyazgitwork/aws-ecommerce-analytics-pipeline?color=FF9900)](https://github.com/Reyazgitwork/aws-ecommerce-analytics-pipeline/commits/main)
![Commits](https://img.shields.io/badge/Commits-36-FF9900?style=flat-square)
![Profile Views](https://komarev.com/ghpvc/?username=Reyazgitwork&label=Profile+Views&color=FF9900&style=flat-square)

</div>

---

## 📌 Project Overview

An **end-to-end cloud data pipeline** built on AWS to analyze e-commerce customer behavior and identify high-risk churn segments using machine learning. This project covers the full analytics engineering lifecycle — from raw data ingestion and SQL-based transformation to ML scoring and executive BI dashboards.

---

## 🏆 Key Results

<div align="center">

| 📊 Insight | 🔢 Finding |
|:---|:---|
| **Single-purchase customers** | ~60% of customers made only one purchase — major retention gap identified |
| **Churn risk scoring** | Random Forest classifier ranks every customer by churn probability |
| **High-risk segmentation** | Prioritized outreach list generated for retention campaigns |
| **Revenue seasonality** | Monthly trends surfaced via Athena SQL — peak periods identified |
| **Top categories** | Highest revenue-generating product categories ranked and visualized |
| **Review-repurchase link** | Correlation between review scores and repeat purchase behavior quantified |

</div>

---

## 🏗️ Architecture

```
┌──────────────────────────────────────────────────────────────────────┐
│                         DATA SOURCES                                 │
│                  Raw CSV Files  [ /rawdata ]                         │
└──────────────────────────────┬───────────────────────────────────────┘
                               │  Upload
                               ▼
┌──────────────────────────────────────────────────────────────────────┐
│                        AWS S3  (Data Lake)                           │
│            raw/  ──►  processed/  ──►  ml-output/                   │
└──────────┬───────────────────┬───────────────────────────────────────┘
           │ Crawl & Catalog   │ Trigger
           ▼                   ▼
┌──────────────────┐  ┌─────────────────────────────────────────────┐
│   AWS Glue       │  │              AWS Lambda                      │
│  Crawler + ETL   │  │   Automated pipeline trigger & orchestration │
└────────┬─────────┘  └─────────────────────────────────────────────┘
         │ Catalog
         ▼
┌──────────────────────────────────────────────────────────────────────┐
│                       AWS Athena                                     │
│          SQL Queries directly on S3 — zero infrastructure            │
│   monthly_revenue · top_categories · churn_features · reviews        │
└──────────────────────────────┬───────────────────────────────────────┘
                               │  Export
                               ▼
┌──────────────────────────────────────────────────────────────────────┐
│                  Python  (Pandas + Scikit-learn)                     │
│         Feature Engineering  ──►  Random Forest Classifier          │
│                    Churn Probability Scoring                         │
└──────────────────────────────┬───────────────────────────────────────┘
                               │  Load
                               ▼
┌──────────────────────────────────────────────────────────────────────┐
│                         Power BI Dashboard                           │
│   Business Performance · Customer Segmentation · Churn Intelligence  │
└──────────────────────────────────────────────────────────────────────┘
```

[![Pipeline Architecture](https://github.com/Reyazgitwork/aws-ecommerce-analytics-pipeline/raw/main/architecture.png)](https://github.com/Reyazgitwork/aws-ecommerce-analytics-pipeline/blob/main/architecture.png)

---

## ⚙️ Tech Stack

| Layer | Tool | Purpose |
|-------|------|---------|
| **Data Lake** | AWS S3 | Scalable raw & processed data storage |
| **Data Catalog & ETL** | AWS Glue | Schema discovery, crawling, ETL jobs |
| **SQL Query Engine** | AWS Athena | Serverless SQL directly on S3 |
| **Automation** | AWS Lambda | Pipeline triggering & event-driven processing |
| **Data Processing** | Python · Pandas | Data cleaning, feature engineering |
| **Machine Learning** | Scikit-learn (Random Forest) | Churn probability scoring |
| **Visualization** | Power BI | Executive dashboards with DAX |

---

## 🗂️ Project Structure

```
aws-ecommerce-analytics-pipeline/
│
├── dashboard/                             # Power BI dashboard screenshots
│   ├── Business_performance.png
│   ├── Customer_Segmentation.png
│   └── Churn_Risk_Intelligence.png
│
├── data/                                  # Athena query outputs (processed CSVs)
│   ├── query_a_monthly_revenue.csv
│   ├── query_b_top_categories.csv
│   ├── query_c_avg_reviews.csv
│   └── query_d_customer_frequency.csv
│
├── rawdata/                               # Raw source datasets
│
├── sql/                                   # Athena SQL queries
│   ├── query_a_monthly_revenue.sql
│   ├── query_b_top_categories.sql
│   ├── query_c_avg_reviews.sql
│   └── query_d_customer_frequency.sql
│
├── aws_ecommerce_etl_ml_pipeline.ipynb    # Full ETL + ML pipeline notebook
├── architecture.png                       # Pipeline architecture diagram
├── requirements.txt                       # Python dependencies
└── README.md
```

---

## 🔍 SQL Analysis — AWS Athena

Four core analytical queries executed serverlessly via Athena on raw S3 data:

| Query | Purpose |
|-------|---------|
| `query_a_monthly_revenue.sql` | Monthly revenue trend — identifies seasonality and growth patterns |
| `query_b_top_categories.sql` | Ranks product categories by total revenue contribution |
| `query_c_avg_reviews.sql` | Correlates review scores with repeat purchase behavior |
| `query_d_customer_frequency.sql` | Segments customers by order count for RFM-style analysis |

> See the `/sql` folder for full query definitions.

---

## 🤖 Machine Learning — Churn Prediction

**Model:** Random Forest Classifier
**Goal:** Score every customer by churn probability to enable targeted retention

### Features Used

| Feature | Description |
|---------|-------------|
| `total_orders` | Number of orders placed by customer |
| `total_revenue` | Lifetime spend |
| `avg_order_value` | Average basket size |
| `avg_review_score` | Mean satisfaction rating |
| `avg_delivery_delay` | Average days late on deliveries |
| `days_since_last_purchase` | Recency signal — strongest churn indicator |
| `customer_lifetime_days` | Account age in days |

**Evaluation:** AUC-ROC on held-out test set.

> **Note:** The primary goal is churn *segmentation* (ranking customers by risk) rather than production-grade binary classification. High probability scores flag customers for proactive retention outreach.

---

## 📊 Power BI Dashboard

### Business Performance
[![Business Performance](https://github.com/Reyazgitwork/aws-ecommerce-analytics-pipeline/raw/main/dashboard/Business_performance.png)](https://github.com/Reyazgitwork/aws-ecommerce-analytics-pipeline/blob/main/dashboard/Business_performance.png)

### Customer Segmentation
[![Customer Segmentation](https://github.com/Reyazgitwork/aws-ecommerce-analytics-pipeline/raw/main/dashboard/Customer_Segmentation.png)](https://github.com/Reyazgitwork/aws-ecommerce-analytics-pipeline/blob/main/dashboard/Customer_Segmentation.png)

### Churn Risk Intelligence
[![Churn Risk](https://github.com/Reyazgitwork/aws-ecommerce-analytics-pipeline/raw/main/dashboard/Churn_Risk_Intelligence.png)](https://github.com/Reyazgitwork/aws-ecommerce-analytics-pipeline/blob/main/dashboard/Churn_Risk_Intelligence.png)

---

## 🚀 How to Run

### 1. Set up AWS infrastructure
```bash
# Upload raw data to S3
aws s3 cp rawdata/ s3://your-bucket/raw/ --recursive

# Run Glue Crawler to catalog the data
# Configure via AWS Console → Glue → Crawlers
```

### 2. Run Athena SQL queries
```sql
-- Execute queries from /sql folder in AWS Athena console
-- Point to your Glue catalog database and S3 output location
```

### 3. Run the ML pipeline notebook
```bash
pip install -r requirements.txt

# Open in Jupyter or Google Colab
jupyter notebook aws_ecommerce_etl_ml_pipeline.ipynb
```

### 4. Load results into Power BI
- Import churn prediction output CSV into Power BI Desktop
- Connect to the `/dashboard` reports for reference layout

> ⚠️ **Note:** AWS credentials and cloud resources are not included. No sensitive data is stored in this repository.

---

## 🤝 Connect

<div align="center">

**Mohammad Reyaz Shaik** — Analytics Engineer

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/mohammad-reyaz-shaik)
[![GitHub](https://img.shields.io/badge/GitHub-Follow-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/Reyazgitwork)
[![Portfolio](https://img.shields.io/badge/More_Projects-View_All-FF9900?style=for-the-badge&logo=github&logoColor=white)](https://github.com/Reyazgitwork)

<br/>

<sub>Built with ☁️ AWS · 🐍 Python · 📊 Power BI · 🤖 Scikit-learn</sub>

</div>
