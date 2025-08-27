# 📊 Customer Churn Dashboard (Excel)

**Business Goal:** Identify at-risk customers and reduce churn using an Excel-built model and stakeholder-friendly dashboard.

## 🔎 What’s inside
- **Excel Dashboard & Model** → [Open the file]https://github.com/suryapraakash/customer-churn-excel-dashboard/blob/main/dashboard/cleaneed%20churn%20n.xlsx
- **Data (cleaned)** → https://github.com/suryapraakash/customer-churn-excel-dashboard/blob/main/data/WA_Fn-UseC_-Telco-Customer-Churn.csv
- **Preview**  
  ![Dashboard](./visuals/dashboard_screenshot.png)

## 💡 Impact (Highlights)
- Analyzed **7,043 customers**; built a **manual churn risk score** (logistic-style using Excel formulas).
- Achieved **~70% accuracy** **~81% recall** on holdout sample (Excel confusion matrix).


## 🛠️ How it works (Excel)
- Data cleaning (IFERROR, TRIM, remove duplicates)
- Risk scoring (weights sheet + cell-referenced formula)
- Validation (confusion matrix, precision/recall with COUNTIFS)
- Dashboard (Slicers: Contract, Tenure band; KPIs: Churn Rate, Retention)


## 🛠️ SQL Work (Data Prep & Insights)

The data was first explored and prepared using SQL before analysis in Excel.  

**Key SQL Queries:**
1. **Data Cleaning** – remove duplicates, handle NULLs.  
2. **Churn Rate Calculation** – calculate churn % by contract type and tenure.  
3. **Segmentation Queries** – group customers by tenure.  

👉 [View SQL Script](./sql/churn_analysis.sql)

  

## 📁 Files
- `./dashboard/churn_dashboard.xlsx` — model + dashboard
- `./data/churn_dataset.xlsx` — cleaned data
- `./visuals/dashboard_screenshot.png` — preview image

---
**Author:** Hara • [LinkedIn](#) • [Portfolio](#)
