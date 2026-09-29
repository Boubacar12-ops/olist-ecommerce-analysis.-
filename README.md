# Brazilian E-Commerce Business Performance Analysis

Independent portfolio project analyzing the [Olist Brazilian E-Commerce Public Dataset](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce) on Kaggle.

## Business Problem
A fictional retail company has thousands of transactions but no clear view of what drives sales. Management needs to understand total revenue, top products, top sellers, top customers, and delivery performance to make better business decisions. This is an independent portfolio project; I did not work for a real company.

## Tools Used
SQL (SQLite), Power BI, Excel

## Data Cleaning
- 9 related tables covering orders, order items, payments, reviews, products, customers, sellers, and geolocation.
- Removed 261,831 duplicate rows from the geolocation table (1,000,164 → 738,333 remaining).
- Checked every table for blank cells; documented columns with missing data (e.g., review comments, delivery dates, product category on some products). These blanks did not affect the revenue, seller, customer, or delivery-time calculations.
- All analysis queries are in `olist_project1_analysis.sql`.

## Key Findings
- **Total revenue** (delivered orders only): **$13,221,498.11**
- **Total orders**: 96K &nbsp;|&nbsp; **Total customers**: 99K
- **Top product category**: beleza_saude (health & beauty), $1,233,131.72 in revenue
- **Top seller**: seller ID 4869f7a5…, $226,987.93 in revenue
- **Top customer**: $13,440.00 in total spending
- **Average delivery time**: 12.56 days

## Dashboard
See the screenshots in this repo for the Power BI dashboard, including revenue and order totals, top sellers, top product categories, and revenue by year.

## Recommendations
- Focus marketing and inventory on top-performing categories like beleza_saude and relogios_presentes.
- Reward top sellers to keep them active on the platform.
- Investigate why delivery averages 12.56 days and identify ways to reduce it.

## Files
- `olist_project1_analysis.sql` — SQL queries for all key findings above
- `Olist_Dashboard.pbix` — Power BI dashboard
- Screenshots — dashboard images
