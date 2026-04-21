# AML Transaction Monitoring Engine

## 🚀 Overview
This project simulates a real-world Anti-Money Laundering (AML) transaction monitoring system used in banking environments.

## 🎯 Business Problem
Banks face challenges in detecting suspicious transactions while minimizing false positives and ensuring regulatory compliance.

## 💡 Solution
Developed a rule-based AML engine using SAS to:
- Detect suspicious transactions
- Generate alerts
- Assign risk scores

## ⚙️ Features
- High-value transaction detection
- Suspicious geography identification
- Alert generation
- Risk scoring model

## 🧠 Risk Scoring Logic
- High transaction amount → +50 score
- Suspicious country → +40 score
- Risk Levels:
  - HIGH (≥80)
  - MEDIUM (50–79)
  - LOW (<50)

## 🛠 Tech Stack
- SAS (Base, PROC SQL)
- SQL
- Linux

## 📊 Results
- Simulated AML alert generation
- Reduced manual monitoring effort
- Improved detection accuracy using scoring model

## 📂 Project Structure
aml-risk-engine/
│── data/
│── sas/
│── sql/
│── docs/
│── README.md

## 🏗 System Architecture
[Transaction Data]
↓
[Data Ingestion - SAS]
↓
[Rule Engine]
↓
[Alert Generation]
↓
[Risk Scoring Engine]
↓
[Final Alerts Output]

## 📌 Key Highlights
- Designed a modular AML detection system
- Implemented rule-based and scoring-based detection
- Structured like real-world banking AML pipeline

## 💼 Business Impact
- Reduced false positives using scoring logic
- Automated transaction monitoring process
- Improved efficiency of fraud detection workflows

## 🧠 Advanced Detection Logic

Implemented multi-layer AML rules:
- Structuring detection (transaction splitting)
- High-risk geography monitoring
- Large transaction alerts
- Combined behavioral risk detection

## 📊 Detection Strategy
- Rule-based filtering
- Multi-condition alert generation
- Weighted risk scoring model

## 📊 Sample Output

| txn_id | amount | country | risk_score | risk_level |
|--------|--------|---------|------------|------------|
| 2      | 200000 | US      | 50         | MEDIUM     |
| 3      | 150000 | IR      | 90         | HIGH       |
| 5      | 500000 | UK      | 50         | MEDIUM     |

## 🎯 False Positive Reduction Strategy
- Implemented multi-condition rule checks to avoid unnecessary alerts
- Introduced weighted scoring instead of binary rules
- Prioritized high-risk alerts for investigation efficiency


