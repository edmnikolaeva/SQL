# ⚙️ SQL: Advanced Streaming Analytics  

<table>
<tr>
<td>

Business-oriented advanced SQL analytics for a digital streaming service.  
The repository provides analytical queries designed to extract revenue, customer, and content performance insights using subqueries and common table expressions (CTEs).

</td>
<td width="220">
<img src="https://github.com/edmnikolaeva/SQL/blob/advanced_sql/sql_sample.png" 
     alt="Visual Anchor — Main Screen Prototype" 
     width="200"/>
</td>
</tr>
</table>

---

### 🧩 Main Artifacts

- 👉 [Subquery in FROM — Country Revenue Aggregation](https://github.com/edmnikolaeva/SQL/blob/advanced_sql/subquery_in_from.sql)
- 👉 [Subquery in WHERE — Top Rental Categories](https://github.com/edmnikolaeva/SQL/blob/advanced_sql/subquery_in_where.sql)
- 👉 [Subqueries & Join — Peak Summer Revenue](https://github.com/edmnikolaeva/SQL/blob/advanced_sql/join_subqueries.sql)
- 👉 [Common Table Expressions (CTE) — YoY Monthly Revenue](https://github.com/edmnikolaeva/SQL/blob/advanced_sql/common_table_expressions.sql)

---

### 🧭 Business Context

- **Domain:** Digital streaming service

- **Scope**
  - Revenue analytics
  - Customer activity analysis
  - Content category performance
  - Period-over-period comparison

- **Goal:** Provide advanced SQL-based analytical insights to support revenue and content performance analysis

---

- **Business Pain Points**
  - Limited visibility into country-level revenue dynamics
  - Difficulty identifying high-performing content segments
  - Lack of structured month-over-month revenue comparison

- **Solution:** Advanced SQL queries using subqueries and CTEs to aggregate revenue, segment content performance, and compare time periods

---

### ✅ Key Outcomes

- Top-performing countries identified by invoice activity  
- High-value content categories detected  
- Peak summer revenue year determined  
- Month-over-month revenue comparison calculated
 
---

### 📂 SQL Query

1. 👉 [Subquery in FROM](https://github.com/edmnikolaeva/SQL/blob/advanced_sql/subquery_in_from.sql)  
   - Calculates monthly average orders for selected months (Feb, May, Jul, Oct 2009) and sums them by country  
   - Tables used: invoice  

2. 👉 [Subquery in WHERE](https://github.com/edmnikolaeva/SQL/blob/advanced_sql/subquery_in_where.sql)  
   - Finds film categories with the highest average rental rate and their average duration  
   - Tables used: movie, category, film_category  

3. 👉 [Subqueries & Join](https://github.com/edmnikolaeva/SQL/blob/advanced_sql/join_subqueries.sql)  
   - Identifies the year with maximum summer revenue and analyzes order counts and customer counts per country  
   - Tables used: invoice, client  

4. 👉 [Common Table Expressions (CTE)](https://github.com/edmnikolaeva/SQL/blob/advanced_sql/common_table_expressions.sql)  
   - Compares monthly revenue for 2012 and 2013 and calculates percent change per month  
   - Tables used: invoice  

---

### 📊 Metrics Definition & Sample Results

1. **Inventory Revenue by Country (Subquery in FROM)**  
   - **Metric:** SUM(AVG(order_total)) for selected months  
   - **Grain:** country / month level  
   - **Sample Result:** Brazil, Chile, Germany, United Kingdom  

2. **Highest Average Rental Rate by Rating (Subquery in WHERE)**  
   - **Metric:** Average film length per category  
   - **Grain:** category level  
   - **Sample Result:** Family — 114.56 min  

3. **Peak Summer Revenue by Country (Subqueries + Join)**  
   - **Metrics:** total_invoice, total_customer  
   - **Grain:** country level  
   - **Sample Result:** USA — 19 invoices, 13 customers  
 
4. **Monthly Revenue Comparison 2012 vs 2013 (CTE)**  
   - **Metrics:** sum_total_2012, sum_total_2013, perc  
   - **Grain:** month level  
   - **Sample Result:** Month 1: 37.62 / 37.62 → 0% change  

---

### 🔗 Related Artifact
- 👉 [Physical data model of the streaming service](https://github.com/edmnikolaeva/SQL/blob/advanced_sql/ER_streaming_s.png)

