# Blinkit-Sales-Analysis

This is an end-to-end data analytics project based on Blinkit — an online grocery delivery platform. The goal is to analyze sales performance, customer satisfaction, and product distribution using SQL, Python, and Power BI.

---

## 📌 Business Requirement

To conduct a comprehensive analysis of Blinkit’s sales and inventory performance by:

- Extracting key KPIs using SQL
- Performing exploratory data analysis using Python
- Visualizing insights using an interactive Power BI dashboard

---

## 🧰 Tools & Technologies Used

| Tool | Purpose |
|------|---------|
| 🐍 **Python (Colab)** | Data cleaning, EDA, visualizations |
| 🧮 **SQL (MS SQL Server)** | Business query logic & KPI extraction |
| 📊 **Power BI** | Interactive dashboard for business insights |

---

## 🔍 KPI Requirements

| KPI | Description |
|-----|-------------|
| **Total Sales** | Overall revenue from all items sold |
| **Average Sales** | Average revenue per item |
| **Number of Items Sold** | Count of distinct items sold |
| **Average Rating** | Mean rating of items sold |

---

## 📊 Chart Requirements (Dashboard Metrics)

| Chart/Metric | Objective |
|--------------|-----------|
| 🔸 **Total Sales by Fat Content** | Analyse impact of fat content on total sales |
| 🔸 **Total Sales by Item Type** | Identify performance of different item types in terms of total sales |
| 🔸 **Fat Content by Outlet for Total Sales** | Compare total sales across different outlets segmented by fat content |
| 🔸 **% Total Sale by Outlet Establishment** | Evaluate how age/type of outlet establishment influences total sales |
| 🔸 **% Sales by Outlet Size** | Correlation between outlet size and total sales |
| 🔸 **Sales by Outlet Location** | Geographic breakdown of revenue |
| 🔸 **Metrics by Outlet Type** | Breakdown of all KPIs (sales, rating, item count) across outlet types |

---

## 📈 Python EDA Overview

Performed exploratory analysis on the dataset to:
- Clean inconsistent entries (e.g., fat content labels)
- Analyze distribution of item sales
- Group and summarize sales by category and outlet
- Visualize insights using Pandas, Seaborn, and Matplotlib


---

## 🧮 SQL KPI Queries

All major KPIs were extracted using SQL in MS SQL Server, including:
- Revenue calculations
- Grouping by outlet type, size, location
- Output exported to Power BI for visualization


---

## 📊 Power BI Dashboard Features

- 💰 Total Sales, Average Sales, Number of Items Sold, Average Rating
- 📊 Charts:
  - Outlet Size vs Sales
  - Fat Content Distribution
  - Year-wise Sales Trend
  - Item Type Breakdown
  - KPI cards with slicers
- 🎯 Filters: Outlet Size, Item Type, Location Tier, Fat Content


