# 💻 Web Scraping & Laptop Market Analysis (Jumia Uganda) (Day_5)

## Project Overview
In this project I have demonstrated web scraping techniques to collect real-time laptop pricing data from Jumia Uganda marketplace, followed by comprehensive data cleaning, feature extraction, and market analysis to understand pricing determinants and consumer preferences in the Ugandan laptop market.

## 🎯 Objective
I have Analyzed laptop market dynamics by scraping product data from Jumia Uganda to identify pricing patterns, hardware specifications impact on pricing, and market segmentation based on product features.

## 📊 The Data Source
- **Platform:** Jumia Uganda (jumia.ug)
- **Section:** Laptops category
- **Collection Method:** Web scraping using Python (BeautifulSoup, requests)
- **Scope:** 50 pages of product listings
- **Raw Data Collected:**
  - Product names/titles
  - Current prices (in UGX)
  - Old/discounted prices (in UGX)
  - Discount percentages

## 🔧 Data Cleaning Process (Stage 1)

### 1. Initially Collecting data
- Scraped 50 pages of laptop listings
- Handled pagination and rate limiting (1-second delays between requests)
- Extracted product information using CSS selectors

### 2. Cleaning Text and Currency from price columns
- **Currency Conversion:** Converted (UGX) to (USD) using exchange rate (1 USD = 3,750 UGX)
- **Price Cleaning:**
  - Removed the 'UGX' currency symbols
  - Stripped commas and also special characters
  - Converted the price datatype from (string) to (float)
- **Data Type Standardization:** I have ensured numeric columns were properly typed

### 3. Filtering and Validation of Data
- Removed products with invalid price data (containing '-' characters)
- Filtered out unrealistic specifications like (>100GB RAM)
- Dropped rows with missing critical values like (RAM, storage, storage type)

### 4. Extracting Feature from Product Titles
I have used regex-based parsing to extract hardware specifications:
- **RAM:** Patterns like "8GB RAM", "16GB RAM"
- **Storage:** Patterns like "256GB", "512GB", "1TB" (converted TB to GB)
- **Storage Type:** Identified "SSD" or "HDD" mentions
- **CPU:** Extracted Intel (i3, i5, i7) and AMD Ryzen variants
- **Model/Brand:** Attempted extraction but dropped due to (high missing values)

### 5. Data Quality Assurance
- Checked for missing values across all extracted features
- Removed columns with excessive missing data (>50% missing)
- Final dataset: Cleaned and filtered laptop specifications

## 📈 Analysis Process (Stage 2)

### Step 1: Exploratory Data Analysis (EDA)
- **Descriptive Statistics:** I have used summary statistics for price distributions
- **Data Overview:** Understand the dataset structure and completeness

### Step 2: Feature Engineering
- I have created (USD) price columns for analysis
- categorized products by (RAM capacity, storage size, and type)
- and prepared data for grouping and aggregation

### Step 3: Statistical Analysis
- **(Price by RAM) Analysis:** grouped price by RAM size to analyze average prices
- **(Price by Storage Type) Analysis:** compared SSD vs HDD pricing
- **Correlation Analysis:** Examined relationships between specifications and pricing

### Step 4: Visualization
- Box plots showing price distributions by RAM capacity
- Box plots for storage capacity vs price
- Correlation heatmaps for numerical features

## 📊 Key Results

### Price Distribution Summary
```
Price Statistics (USD):
- Mean Price: ~$450
- Price Range: $200 - $2,000+
- Most Common Range: $300 - $600
```

### RAM Impact on Pricing
| RAM Size | Average Price (USD) | Max Price (USD) | Min Price (USD) |
|----------|-------------------|-----------------|-----------------|
| 4GB     | $320             | $450           | $200           |
| 8GB     | $420             | $800           | $250           |
| 16GB    | $650             | $1,200         | $400           |
| 32GB+   | $950             | $2,000+        | $600           |

### Storage Type Analysis
| Storage Type | Average Price (USD) | Observations |
|--------------|-------------------|--------------|
| SSD         | $520             | Higher premium for SSD |
| HDD         | $380             | More budget-friendly |

### Correlation Findings
- **RAM vs Price:** Strong positive correlation (r ≈ 0.65)
- **Storage vs Price:** Moderate positive correlation (r ≈ 0.45)
- **Storage Type:** SSD products command 35% price premium over HDD

### Market Insights
- **Price Segmentation:** Clear tiers based on hardware specifications
- **Consumer Preferences:** Higher RAM configurations show premium pricing
- **Storage Trends:** SSD adoption driving price differentiation
- **Market Range:** Broad spectrum from budget ($200) to premium ($2000+) laptops

## 🔍 Data Cleaning Details

### Missing Values Handling

#### Data Quality Issues Resolved
- Inconsistent product naming conventions
- Mixed currency formats
- Special characters in price strings
- Unrealistic hardware specifications
- Encoding issues in scraped text

## 🎯 Conclusion

### Technical Achievements
- Successfully scraped and processed 800+ laptop listings
- Implemented robust data cleaning pipeline
- Developed regex-based feature extraction system
- Created comprehensive market analysis

### Business Insights
- **Market Segmentation:** Clear price tiers based on RAM and storage specifications
- **Consumer Trends:** Growing preference for higher RAM configurations
- **Pricing Strategy:** SSD premium pricing indicates value perception
- **Market Opportunity:** Broad price range suggests diverse consumer segments

### Recommendations
- **For Retailers:** Focus on RAM and SSD as key selling points
- **For Consumers:** Clear understanding of specification-value relationships
- **For Analysts:** Web scraping + feature extraction = powerful market research tool

## 🛠️ Tools Used
- **Python Libraries:** pandas, numpy, matplotlib, seaborn, requests, BeautifulSoup, re
- **Data Processing:** Regex pattern matching, data cleaning pipelines
- **Analysis:** Statistical analysis, correlation studies
- **Visualization:** Box plots, distribution analysis

## 📁 Files in This Project
- `web_scraping.ipynb` - Main analysis notebook
- `jumia_products.csv` - Raw scraped data
- `cleaned_jumia_products.csv` - cleaned data after scraping
- `README.md` - This documentation file

## ⏱️ Total time spent
- **Web Scraping:** 2 hours
- **Data Cleaning:** 3 hours
- **Feature Extraction:** 2 hours
- **Analysis & Visualization:** 2 hours
- **Documentation:** 1 hour
- **Total:** 10 hours in defferent 3 days

---
