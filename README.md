# Smart-Dustbin-Monitoring-System
A real-time smart bin monitoring system built using **Snowflake**, **dbt Cloud**, and **Power BI** that simulates smart city waste management. The project tracks bin fill levels, triggers alerts, and visualizes waste distribution to optimize collection routes.


---

## 📌 Overview

This project demonstrates a data engineering pipeline that simulates IoT-enabled smart dustbins, collects data, transforms it using **dbt**, and visualizes key metrics in **Power BI**. It helps municipal departments monitor bins nearing capacity and reduce overflow incidents through alert mechanisms.

---

## ⚙️ Tech Stack

- **Snowflake** (Data Warehouse)
- **dbt Cloud** (Data transformation & scheduling)
- **Power BI Desktop** (Visualization)
- **CSV** (Simulated IoT source data)

---

## 🔁 Data Flow

CSV (simulated IoT data)
↓
Snowflake Stage/Table
↓
dbt Models (Transformations)
↓
Power BI Dashboard (Alerts, Fill Stats, Location View)

---

## 🚀 Features

- ✅ Classifies bin fill levels into `HIGH`, `MEDIUM`, and `LOW`
- ✅ Sends alert tags for bins >80% full
- ✅ Dynamic dashboards with pie, bar, and card visuals
- ✅ Scheduled dbt jobs every 12 hours for automation

---

## 🧪 Steps to Run

### 1. Upload IoT Data to Snowflake
- Use Snowflake UI to create a stage or load your `iot_smart_bins.csv` file into a table.

### 2. Connect dbt Cloud
- Set up a Snowflake profile in dbt Cloud.
- Create models:
  - `stg_iot_smart_bins.sql` (cleaned staging)
  - `bin_alerts.sql` (alert classification)
- Run the models manually or use a job for automation.

### 3. Automate via Job Scheduler
- Create a dbt Cloud job.
- Set schedule to run every 12 hours (or any frequency).

### 4. Connect Power BI
- Open Power BI Desktop
- Use **Get Data → Snowflake Connector**
- Import data from the dbt-transformed tables

### 5. Create Visuals
- Pie Chart: Bin Fill Levels (High/Medium/Low)
- Bar Chart: Count of bins per location
- Cards: KPIs like average fill, total bins, etc.

---

## 📊 Results / Impact

- 🟢 Identified **bins >80%** full using dbt logic
- 🟢 Reduced **manual monitoring** by scheduling dbt jobs

---

## 🔮 Future Work

- 🔗 Integrate **AWS S3** to ingest real-time IoT data
- 📲 Add live device data via **API or IoT Core**
- ⚙️ Automate data pipeline using **Airflow or Lambda**
- 🧠 Add prediction model to estimate when bins will overflow
