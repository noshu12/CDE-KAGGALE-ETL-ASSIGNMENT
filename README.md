# Gaming Performance Analysis

This project analyzes the impact of gaming habits on academic and work performance
using a Kaggle dataset. Python was used for data processing and SQL Server was used
for data storage and aggregated analysis.

## Technologies Used
- Python
- Pandas
- SQL Server
- pyodbc
- Kaggle API

## Key Features
- Data ingestion using Kaggle API
- Data upload to SQL Server
- Aggregated analysis using SQL (mean, median, mode)
┌──────────────────────────────┐
│          Kaggle Dataset       │
│  (Gaming Hours vs Performance)│
└──────────────┬───────────────┘
               │
               │ Kaggle API / CSV Download
               ▼
┌──────────────────────────────┐
│        Python Environment     │
│                              │
│  ┌────────────────────────┐  │
│  │ Data Cleaning Module   │  │
│  │ - Remove duplicates    │  │
│  │ - Handle missing data  │  │
│  │ - Rename columns       │  │
│  │ - Data validation      │  │
│  └────────────────────────┘  │
│                              │
│  ┌────────────────────────┐  │
│  │ Database Connection    │  │
│  │ - pyodbc               │  │
│  │ - SQL Server connector │  │
│  └────────────────────────┘  │
└──────────────┬───────────────┘
               │
               │ Insert Full Dataset
               ▼
┌──────────────────────────────┐
│        SQL Server Database    │
│        (GamingProject)        │
│                              │
│  ┌────────────────────────┐  │
│  │ gaming_performance     │  │
│  │ (Full Cleaned Data)    │  │
│  └────────────────────────┘  │
│                              │
│  ┌────────────────────────┐  │
│  │ SQL Analysis Layer     │  │
│  │ - Mean (AVG)           │  │
│  │ - Median               │  │
│  │ - Mode                 │  │
│  │ - Group By Analysis    │  │
│  └────────────────────────┘  │
└──────────────┬───────────────┘
               │
               ▼
┌──────────────────────────────┐
│        Analytical Insights    │
│  - Gaming vs Performance     │
│  - Stress & Productivity     │
│  - Sleep Impact              │
│  - Optimal Gaming Patterns   │
└──────────────────────────────┘
