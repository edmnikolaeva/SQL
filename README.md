# 🛍️ SQL: E-commerce Analytics  

<table>
<tr>
<td>

Business-oriented SQL analytics for a web-based online clothing store. The repository provides analytical queries designed to support inventory, sales, and customer behavior analysis using relational data

</td>
<td width="220">
<img src="https://github.com/edmnikolaeva/SQL/blob/ecommerce_analytics/sql_sample.png" 
     alt="Visual Anchor — Main Screen Prototype" 
     width="200"/>
</td>
</tr>
</table>

---

### 🧩 Main Artifacts

- 👉 [Operational Analytics — Inventory Balance](https://github.com/edmnikolaeva/SQL/blob/ecommerce_analytics/inventory_balance.sql)
- 👉 [Average Order Value (AOV) - Product Metrics](https://github.com/edmnikolaeva/SQL/blob/ecommerce_analytics/average_order_value.sql)
- 👉 [Assortment Issues — Non-purchased Products](https://github.com/edmnikolaeva/SQL/blob/ecommerce_analytics/non_purchased_products.sql)
- 👉 [Sales Ranking — Best-selling Products](https://github.com/edmnikolaeva/SQL/blob/ecommerce_analytics/best_sellers.sql)
- 👉 [Retention Thinking — Returning Customers](https://github.com/edmnikolaeva/SQL/blob/ecommerce_analytics/returning_customers.sql)
- 👉 [Seasonal Analytics — Popular Product Categories](https://github.com/edmnikolaeva/SQL/blob/ecommerce_analytics/popular_categories.sql)

---

### 🧭 Business Context

- **Domain:** Online clothing retail  

- **Scope**
  - Product catalog & assortment management
  - Sales & order performance
  - Inventory & availability monitoring
  - Customer behavior & retention

- **Goal:** Provide SQL-based analytical insights to support operational and product decision-making in an e-commerce environment

---

- **Business Pain Points**
  - Low stock items, risking out-of-stock situations
  - Non-purchased products, highlighting potential assortment gaps
  - Limited visibility into customer retention patterns
  
- **Solution:** SQL queries to extract key metrics

---

### ✅ Key Outcomes

- Identified 8 critically low-stock products, enabling timely replenishment  
- Found 5 non-purchased products, guiding pricing and assortment decisions  
- Detected top repeat customers (e.g., customer_name1 — 6 orders), supporting retention strategies

---

### 📊 Metrics Definition

1. **Inventory Balance — Low Stock Products**  
   - **Metric:** availability < 3  
   - **Grain:** product level  
   - **Sample Result:** Футболка мужская — 1  

2. **Average Order Value (AOV) — Summer 2022**  
   - **Metric:** AVG(order_total)  
   - **Grain:** order level  
   - **Sample Result:** 27,946.6  

3. **Non-purchased Products — Assortment Gaps**  
   - **Metric:** products with no orders  
   - **Grain:** product level  
   - **Sample Result:** Пуховик — 15,000  

4. **Best Sellers — Top 10 Products**  
   - **Metric:** SUM(quantity) per product  
   - **Grain:** product level  
   - **Sample Result:** Панамка — 144  

5. **Returning Customers — Repeat Purchases**  
   - **Metric:** COUNT(order_id) per customer  
   - **Grain:** customer level  
   - **Sample Result:** "Customer_Name 1" — 6  

6. **Popular Categories — Summer 2022**  
   - **Metric:** SUM(total_orders) per category  
   - **Grain:** category level  
   - **Sample Result:** Одежда — 89

---

### 🔗 Related Artifact:
- 👉 [Physical data model of the e-commerce system](https://github.com/edmnikolaeva/SQL/blob/ecommerce_analytics/ER_web_store.png)
