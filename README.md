# 🛍️ E-COMMERCE ANALYTICS (SQL)
- SQL examples for typical business analytics tasks in an online clothing store
- This repository branch contains SQL queries that demonstrate how a system analyst can solve common e-commerce analytics tasks using relational data

The examples cover:

- [operational analytics](https://github.com/edmnikolaeva/SQL/blob/ecommerce_analytics/inventory_balance.sql)
- [product metrics](https://github.com/edmnikolaeva/SQL/blob/ecommerce_analytics/average_order_value.sql)
- [assortment analysis](https://github.com/edmnikolaeva/SQL/blob/ecommerce_analytics/non_purchased_products.sql)
- [sales ranking](https://github.com/edmnikolaeva/SQL/blob/ecommerce_analytics/best_sellers.sql)
- [retention analysis](https://github.com/edmnikolaeva/SQL/blob/ecommerce_analytics/returning_customers.sql)
- [seasonal analytics](https://github.com/edmnikolaeva/SQL/blob/ecommerce_analytics/popular_categories.sql)

---

### 🧭 BUSINESS CONTEXT

**Domain:** online clothing store  
**Scope:** web store analytics  
**Goal:** demonstrate SQL usage for business decision support  
**Data grain:** order / order item level depending on query

**Problem / Business pain points (sample):**  
- Low stock items, risking out-of-stock situations  
- Non-purchased products, highlighting potential assortment gaps  
- Customer retention: identifying repeat buyers 
 
**Solution:**
- SQL queries to extract key metrics, identify trends, and support decision-making  

**Result / Impact (sample):**  
- Identified 8 critically low-stock products, enabling timely replenishment  
- Found 5 non-purchased products, guiding pricing and assortment decisions  
- Detected top repeat customers (e.g., customer_name1 — 6 orders), supporting retention strategies

---

### 📊 ANALYTICAL TASKS

1. **Operational Analytics — Inventory Balance**
   - Tracks current stock levels to support replenishment decisions
   - 👉 [View SQL example](https://github.com/edmnikolaeva/SQL/blob/ecommerce_analytics/inventory_balance.sql)
   
2. **Product Metric — Average Order Value (AOV)**
   - Calculates the average customer order amount
   - 👉 [View SQL example](https://github.com/edmnikolaeva/SQL/blob/ecommerce_analytics/average_order_value.sql)
   
3. **Assortment Issues — Non-purchased Products**
   - Identifies products that have never been purchased
   - 👉 [View SQL example](https://github.com/edmnikolaeva/SQL/blob/ecommerce_analytics/non_purchased_products.sql)

4. **Sales Ranking — Best-selling Products**
   - Ranks products by sales volume using aggregations and ranking functions
   - 👉 [View SQL example](https://github.com/edmnikolaeva/SQL/blob/ecommerce_analytics/best_sellers.sql)

5. **Retention Thinking — Returning Customers**
   - Detects customers with repeat purchases
   - 👉 [View SQL example](https://github.com/edmnikolaeva/SQL/blob/ecommerce_analytics/returning_customers.sql)

6. **Seasonal Analytics — Popular Product Categories**
   - Analyzes category popularity over time
   - 👉 [View SQL example](https://github.com/edmnikolaeva/SQL/blob/ecommerce_analytics/popular_categories.sql)

---

### 📊 METRIICS DEFINITION & SAMPLE RESULTS

1. **Inventory Balance — Low Stock Products**  
   - **Metric:** availability < 3  
   - **Grain:** product level  
   - **Sample Result:**  
     - Футболка мужская — 1  
     - Солнцезащитный крем — 1  
     - Зарядка от солнечных батарей — 1  
     - …  

2. **Average Order Value (AOV) — Summer 2022**  
   - **Metric:** AVG(order_total)  
   - **Grain:** order level  
   - **Sample Result:** 27,946.6  

3. **Non-purchased Products — Assortment Gaps**  
   - **Metric:** products with no orders  
   - **Grain:** product level  
   - **Sample Result:**  
     - Пуховик — 15,000  
     - Непромокаемый комбинезон — 3,600  
     - Шапка теплая — 1,300  
     - …  

4. **Best Sellers — Top 10 Products**  
   - **Metric:** SUM(quantity) per product  
   - **Grain:** product level  
   - **Sample Result:**  
     - Панамка — 144  
     - Палатка для 4 человек — 99  
     - Шорты женские — 89  
     - …  

5. **Returning Customers — Repeat Purchases**  
   - **Metric:** COUNT(order_id) per customer  
   - **Grain:** customer level  
   - **Sample Result:**  
     - customer_name 1 — 6  
     - customer_name 2 — 5  
     - customer_name 3 — 5  
     - …  

6. **Popular Categories — Summer 2022**  
   - **Metric:** SUM(total_orders) per category  
   - **Grain:** category level  
   - **Sample Result:**  
     - Одежда — 89

---

### 🗂️ DATA MODEL
- 👉 [Physical data model of the e-commerce system](https://github.com/edmnikolaeva/SQL/blob/ecommerce_analytics/ER_web_store.png)
