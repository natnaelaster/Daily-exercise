# Medical Cost Prediction with Linear Regression

## Project Description
This project aims to predict individual medical costs for health insurance using machine learning techniques. By analyzing demographic and lifestyle factors, I build a predictive model to estimate insurance charges, helping insurers assess risk and set premiums more accurately.

## Data Description
The dataset (`insurance.csv`) contains 1,338 observations with the following features:
- **age**: Age of the individual (numeric)
- **sex**: Gender (categorical: male/female)
- **bmi**: Body Mass Index (numeric)
- **children**: Number of children covered by insurance (numeric)
- **smoker**: Smoking status (categorical: yes/no)
- **region**: Residential region in the US (categorical: northeast, northwest, southeast, southwest)
- **charges ($)**: Medical costs billed by health insurance (numeric, target variable)

The data includes a mix of categorical and numerical variables, with no missing values.

## Goal of the Project
The primary goal is to develop a linear regression model that accurately predicts medical insurance costs based on available demographic and behavioral features. This involves:
- Exploratory data analysis to understand relationships between features and costs
- Feature engineering and selection
- Model training and evaluation
- Interpretation of feature importance

## Methods Used
1. **Data Wrangling**: Loaded and cleaned the data, rounding charges to 2 decimal places and renaming the target column.
2. **Exploratory Data Analysis (EDA)**:
   - Distribution analysis of charges using histograms
   - Box plots to compare charges across categorical variables (smoker, region, sex)
   - Scatter plots to examine relationships between numerical variables (age, bmi, children) and charges
   - Correlation heatmap for numerical features
3. **Feature Selection**: Selected all available features (age, sex, bmi, children, smoker, region) for modeling.
4. **Model Development**:
   - Train-test split (80-20)
   - Baseline model using mean prediction
   - Linear regression pipeline with one-hot encoding for categorical variables
5. **Evaluation**: Mean Absolute Error (MAE) on training and test sets
6. **Feature Importance**: Analyzed coefficients to understand which features most influence predictions

## Final Results
- **Baseline MAE**: $9,038.35 (predicting using training set mean)
- **Training MAE**: $4,151.56
- **Test MAE**: $4,225.23
- **Feature Importances** (top factors by absolute coefficient value):
  - Smoker status (yes/no): ~$11,827 impact (strongest predictor)
  - Region (northeast, southwest, etc.): $709 to -$537 impact
  - Number of children: $439 impact
  - BMI: $339 impact
  - Age: $259 impact
  - Sex (male/female): ~$127 impact

The model shows significant improvement over the baseline, with lower MAE on both training and test sets, indicating strong predictive power using all features.

## Business Impacts
- **Risk Assessment**: Insurers can better assess individual risk profiles, leading to more accurate premium pricing.
- **Cost Management**: Helps identify high-cost groups (e.g., smokers) for targeted wellness programs or premium adjustments.
- **Decision Making**: Provides data-driven insights for underwriting and claims management.
- **Potential Savings**: More precise predictions could reduce over/under-pricing, benefiting both insurers and policyholders.

## Technologies Used
- Python (pandas, matplotlib, seaborn, scikit-learn, category_encoders)
- Jupyter Notebook for analysis and visualization

## Files
- `insurance_cost_prediction.ipynb`: Main analysis notebook
- `insurance.csv`: Dataset
- `README.md`: This file