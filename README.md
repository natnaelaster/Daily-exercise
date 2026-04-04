# 📊 Data Analysis Portfolio: Daily Exercise Projects

🚀 **About This Repository**

This repository showcases my journey in data analysis through daily hands-on projects. Each project demonstrates practical application of data science techniques across various domains, from e-commerce analytics to predictive modeling. The projects follow a structured approach: data collection/acquisition, cleaning, exploratory analysis, visualization, and actionable insights.

**Portfolio Overview:**
- **5 Comprehensive Projects** covering web scraping, sales analysis, customer segmentation, inventory optimization, and predictive modeling
- **Technologies Used:** Python (Pandas, NumPy, Matplotlib, Seaborn, Scikit-learn), SQL, Tableau, BeautifulSoup
- **Total Datasets Processed:** 400,000+ records across multiple domains
- **Key Skills Demonstrated:** Data cleaning, statistical analysis, machine learning, business intelligence

---

## 📈 Project Portfolio

### 1. 🛒 E-Commerce Sales Performance Dashboard (Day 1)
**Objective:** Analyze online retail transaction data to identify sales trends, product performance, and geographic insights for business optimization.

**Data Source:**
- Online Retail II dataset (400,000+ transactions from 2009-2011)
- Features: Invoice details, customer IDs, product descriptions, quantities, prices, countries

**Data Cleaning Process:**
- Handled negative quantities (returns/cancellations representing >2% of data value)
- Removed invalid transactions and missing customer IDs
- Standardized date formats for time-series analysis
- Cleaned product descriptions and handled encoding issues

**Analysis Process:**
1. Monthly sales trend analysis with seasonality identification
2. Product performance ranking by revenue contribution
3. Geographic revenue distribution analysis
4. Customer purchase pattern analysis

**Key Results:**
- **Seasonal Trends:** November-December account for 25%+ of total annual sales
- **Geographic Concentration:** 84% of revenue from United Kingdom market
- **Product Performance:** Top 5 products contribute 7% of total revenue
- **Return Analysis:** Identified and quantified return patterns affecting revenue

**Conclusion:** The analysis revealed critical seasonal patterns and market concentration that should drive inventory planning and marketing strategies. The UK market dominance suggests opportunities for international expansion while seasonal spikes indicate need for capacity planning.

---

### 2. 👥 Customer Segmentation & RFM Analysis (Day 2)
**Objective:** Segment customer base using RFM (Recency-Frequency-Monetary) analysis to enable targeted marketing and customer retention strategies.

**Data Source:**
- E-commerce transaction dataset with customer purchase history
- Features: Customer IDs, purchase dates, transaction amounts, product details

**Data Cleaning Process:**
- Removed transactions with missing customer IDs
- Handled cancelled orders and returns appropriately
- Standardized date formats for recency calculations
- Aggregated transaction-level data to customer-level metrics

**Analysis Process:**
1. **RFM Calculation:**
   - Recency: Days since last purchase (using max invoice date as reference)
   - Frequency: Total number of purchases per customer
   - Monetary: Total spending per customer
2. **Customer Segmentation:** Created 4 strategic segments using RFM quartiles
3. **Segment Analysis:** Profiled each segment's characteristics and value

**Key Results:**
- **Segment Distribution:**
  - New/Casual: 2,308 customers (largest group)
  - Champions: 1,319 customers (high-value loyal)
  - Loyal Customers: 448 customers
  - At Risk: 264 customers (high spenders needing re-engagement)
- **RFM Insights:** Clear differentiation in customer value and engagement levels

**Conclusion:** The segmentation revealed a healthy influx of new customers but highlighted the critical need to retain high-value "At Risk" customers. Marketing strategies should focus on conversion of new customers and re-engagement of at-risk high spenders through personalized campaigns.

---

### 3. 📦 Product Performance & Inventory Optimization (Day 3)
**Objective:** Conduct comprehensive product analysis to optimize inventory levels, identify declining products, and support data-driven replenishment decisions.

**Data Source:**
- 5 years of e-commerce transaction data
- Features: Product codes, descriptions, quantities, dates, prices

**Data Cleaning Process:**
- Aggregated transactions by StockCode/Description
- Handled missing inventory data appropriately
- Standardized product naming and categorization
- Removed outlier transactions affecting analysis

**Analysis Process:**
1. **Product KPIs:** Total revenue and units sold per SKU
2. **Sales Velocity:** Units sold per day active, categorized as Slow/Medium/Fast moving
3. **Inventory Analysis:** Turnover rates, safety stock, reorder points, EOQ calculations
4. **Risk Assessment:** Stockout risk based on demand variability (CV analysis)
5. **Trend Analysis:** Seasonal patterns and declining product identification

**Key Results:**
- **Revenue Distribution:** Confirmed 80/20 rule (Pareto Principle) - top 20% products drive 80% revenue
- **Movement Classification:** Products categorized by sales velocity for differentiated replenishment
- **Declining Products:** Identified 12 SKUs showing significant sales decline
- **Seasonality:** 8 product categories with clear seasonal demand patterns
- **Inventory Metrics:** Safety stock and reorder points calculated for risk mitigation

**Conclusion:** The analysis provided actionable inventory optimization strategies with clear prioritization of high-velocity products and identification of at-risk SKUs. Seasonal patterns and velocity classifications enable more efficient supply chain management and reduced carrying costs.

---

### 4. 🏥 Medical Cost Prediction with Linear Regression (Day 4)
**Objective:** Build a predictive model for medical insurance costs using demographic and lifestyle factors to support risk assessment and premium pricing.

**Data Source:**
- Medical insurance dataset (1,338 observations)
- Features: Age, sex, BMI, children, smoker status, region, charges

**Data Cleaning Process:**
- Removed outliers (top 10% of charges) to focus on typical cases
- Standardized column names and data types
- Handled categorical variables appropriately
- Verified no missing values in dataset

**Analysis Process:**
1. **Exploratory Data Analysis:** Distribution analysis, correlation studies, categorical comparisons
2. **Feature Engineering:** One-hot encoding for categorical variables
3. **Model Development:** Linear regression with train-test split (80-20)
4. **Evaluation:** Mean Absolute Error (MAE) comparison with baseline
5. **Feature Importance:** Coefficient analysis for predictive factors

**Key Results:**
- **Model Performance:**
  - Baseline MAE: $5,690.80 (mean prediction)
  - Training MAE: $4,475.28
  - Test MAE: $4,251.22
- **Feature Importance (by coefficient magnitude):**
  - Smoker status: ~$6,822 impact (strongest predictor)
  - Region: $580 to -$557 impact
  - Sex: ~$277 impact
  - Age, BMI, Children: Smaller but significant effects

**Conclusion:** The model demonstrated strong predictive power with significant improvement over baseline predictions. Smoking status emerged as the dominant cost driver, validating its use in insurance risk assessment. The model provides insurers with data-driven pricing tools while highlighting key behavioral factors influencing healthcare costs.

---

### 5. 💻 Web Scraping & Laptop Market Analysis (Day 5)
**Objective:** Scrape and analyze laptop pricing data from Jumia marketplace to understand market dynamics and price determinants in the Ugandan market.

**Data Source:**
- Web scraped from Jumia Uganda (jumia.ug) laptops section
- 50 pages of product listings collected
- Raw features: Product names, prices, old prices, discounts

**Data Cleaning Process:**
- Currency conversion (UGX to USD at 1:3750 rate)
- Text cleaning: Removed currency symbols, commas, special characters
- Data type conversions: String to numeric for prices
- Handled missing values and invalid entries
- Removed products with unrealistic specifications (>100GB RAM)

**Analysis Process:**
1. **Feature Extraction:** Regex-based parsing of product specifications from titles
   - RAM extraction (4GB, 8GB, 16GB, etc.)
   - Storage capacity (256GB, 512GB, 1TB, etc.)
   - Storage type (SSD vs HDD)
   - CPU type (i3, i5, i7, Ryzen variants)
2. **Data Filtering:** Removed columns with high missing values (CPU, model)
3. **Statistical Analysis:** Price distributions by specifications
4. **Correlation Analysis:** Relationships between specs and pricing

**Key Results:**
- **Price Ranges:** Laptops from ~$200 to $2000+ depending on specifications
- **RAM Impact:** Clear price differentiation by RAM capacity (4GB vs 16GB+)
- **Storage Analysis:** SSD vs HDD pricing patterns identified
- **Market Insights:** Competitive pricing structure based on hardware specifications
- **Correlation Findings:** Strong positive correlation between RAM/storage and price

**Conclusion:** The analysis revealed clear market segmentation based on hardware specifications, with RAM and storage type being key price drivers. The web scraping approach successfully captured real-time market data, providing insights into consumer preferences and competitive positioning in the Ugandan laptop market.

---

## 🛠️ Technical Stack & Skills Demonstrated

**Programming & Analysis:**
- **Python:** Pandas, NumPy, Matplotlib, Seaborn, Scikit-learn, BeautifulSoup
- **Data Manipulation:** Advanced data cleaning, feature engineering, aggregation
- **Statistical Analysis:** Correlation analysis, distribution analysis, outlier detection
- **Machine Learning:** Linear regression, model evaluation, feature importance

**Visualization & BI:**
- **Tableau:** Interactive dashboards, advanced visualizations
- **Matplotlib/Seaborn:** Statistical plots, distribution analysis

**Data Engineering:**
- **Web Scraping:** BeautifulSoup, requests, regex parsing
- **SQL:** Data querying and aggregation
- **Data Processing:** ETL processes, data transformation pipelines

**Key Competencies:**
- **Data Cleaning:** Handling missing values, outliers, data type conversions
- **Exploratory Analysis:** Statistical summaries, correlation analysis, pattern identification
- **Business Intelligence:** KPI development, trend analysis, actionable insights
- **Machine Learning:** Model development, evaluation, interpretation
- **Visualization:** Effective communication of complex data insights

---

## 📊 Overall Conclusions & Learning Outcomes

**Business Impact Insights:**
- **Revenue Optimization:** Identified seasonal patterns and product concentration effects across multiple domains
- **Customer Strategy:** Developed segmentation frameworks for targeted marketing and retention
- **Inventory Efficiency:** Created data-driven replenishment strategies reducing carrying costs
- **Risk Assessment:** Built predictive models for insurance pricing and healthcare cost management
- **Market Intelligence:** Captured real-time pricing data for competitive analysis

**Technical Growth:**
- **Data Pipeline Development:** From raw data acquisition to actionable insights
- **Analytical Thinking:** Structured problem-solving approach across diverse business contexts
- **Tool Proficiency:** Mastered Python data stack and business intelligence tools
- **Domain Knowledge:** Applied analytics to e-commerce, healthcare, and retail sectors

**Professional Development:**
- **Project Management:** Consistent delivery of analysis projects with clear documentation
- **Communication:** Transformed complex data into business-relevant recommendations
- **Continuous Learning:** Progressive complexity from basic analysis to advanced modeling

---

## 📞 Contact & Portfolio Links

**Email:** natnaelaster42@gmail.com  
**LinkedIn:** [Your LinkedIn Profile]  
**GitHub:** https://github.com/natnaelaster  
**Tableau Public:** [Your Tableau Profile]  

**Live Portfolio:** [Portfolio Website URL]

---

*This portfolio represents a comprehensive demonstration of data analysis capabilities, from foundational data wrangling to advanced predictive modeling. Each project showcases practical application of analytical techniques to solve real business problems.*

Each project folder contains:

Jupyter Notebook with complete analysis

Dataset information and sources

Visualizations and dashboards

Business recommendations and insights

