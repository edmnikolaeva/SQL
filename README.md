# Advanced SQL Examples
- This repository demonstrates advanced SQL techniques for analytics on a streaming service
- It includes examples of subqueries in FROM and WHERE clauses, subqueries w. join operations, and common table expressions (CTEs)
- Each query is documented with business context, metric definitions, and data grain

The examples cover:

- [subqueries in FROM](https://github.com/edmnikolaeva/SQL/blob/advanced_sql/subquery_in_from.sql)
- [subqueries in WHERE](https://github.com/edmnikolaeva/SQL/blob/advanced_sql/subquery_in_where.sql)
- [subqueries & join](https://github.com/edmnikolaeva/SQL/blob/advanced_sql/join_subqueries.sql)
- [common table expressions (CTE)](https://github.com/edmnikolaeva/SQL/blob/advanced_sql/common_table_expressions.sql)

---

### 🧭 Business Context

**Domain:** Streaming service (movies, music)  
**Scope:** Analytics queries on invoices, customers, and content categories  
**Goal:** Demonstrate advanced SQL techniques for business insights  
**Data grain:** order / invoice / content / category level depending on query

**Problem:** Identify patterns, metrics, and insights from sales and user activity data  
**Solution:** SQL queries using subqueries, UNIONs, and CTEs to extract insights  
**Result / Impact:** Provides examples of advanced SQL usage for operational reporting, decision-making, and product insights

---

### 📂 SQL Examples

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
   - **Sample Result:** 
     - Family — 114.56 min  
     - Games — 126.2 min  
     - Animation — 102.27 min  
     - …(other categories)  

3. **Peak Summer Revenue by Country (Subqueries + Join)**  
   - **Metrics:** total_invoice, total_customer  
   - **Grain:** country level  
   - **Sample Result:** 
     - USA — 19 invoices, 13 customers  
     - Canada — 11 invoices, 8 customers  
     - France — 8 invoices, 5 customers  
     - …(top countries)  

4. **Monthly Revenue Comparison 2012 vs 2013 (CTE)**  
   - **Metrics:** sum_total_2012, sum_total_2013, perc  
   - **Grain:** month level  
   - **Sample Result:** 
     - Month 1: 37.62 / 37.62 → 0% change  
     - Month 2: 37.62 / 27.72 → -26%  
     - Month 4: 37.62 / 33.66 → -11%  
     - Month 11: 37.62 / 49.62 → +32%  

---

### 🗂️ Data Model
- 👉 [Physical data model of the streaming service](https://github.com/edmnikolaeva/SQL/blob/advanced_sql/ER_streaming_s.png)

