# 🍷 Wine Quality Analysis — Exploratory Data Analysis (EDA)

## 🎯 Objective  
Perform an exploratory data analysis (EDA) on red and white wine datasets to uncover the chemical and sensory factors that influence wine quality ratings. This analysis helps winemakers, distributors, and researchers understand which attributes most strongly affect perceived quality.

---

## ❓ Problem Statement  
Wine quality is determined by a mix of physicochemical properties (like acidity, sugar, and alcohol content) and sensory evaluations.  
To ensure consistency and improve production, wineries must identify which variables contribute the most to higher quality scores.  

Key questions explored in this project include:  
- Which chemical properties most influence wine quality?  
- How do alcohol levels and acidity correlate with quality ratings?  
- Are there differences in patterns between red and white wines?  
- Can visualizations reveal thresholds or ranges that distinguish good wines from poor ones?  

---

## 📝 Project Overview  
This project involves:  

- **Data Cleaning** → Handling missing values, checking distributions, and normalizing formats.  
- **Exploratory Data Analysis** → Visualizing relationships between wine attributes and quality.  
- **Feature Insights** → Understanding the impact of acidity, residual sugar, alcohol, and chlorides.  
- **Correlation Analysis** → Identifying the strongest positive and negative correlations with wine quality.  

All analysis is documented in the Jupyter Notebook (`Wine_Quality_EDA.ipynb`).  

---

## 📂 Data Description  
The dataset includes physicochemical test results and quality ratings for red and white wines.  

Key features include:  

- **Fixed Acidity** → Tartaric acid (g/dm³).  
- **Volatile Acidity** → Acetic acid (g/dm³), higher values = vinegar taste.  
- **Citric Acid** → Adds freshness and flavor.  
- **Residual Sugar** → Amount of sugar left after fermentation.  
- **Chlorides** → Salt content.  
- **Free Sulfur Dioxide** → SO₂ in free form.  
- **Total Sulfur Dioxide** → Free + bound SO₂.  
- **Density** → Water density correlation.  
- **pH** → Acidity/basicity level.  
- **Sulphates** → Adds wine preservation and flavor.  
- **Alcohol** → Alcohol content (% by volume).  
- **Quality** → Sensory score (0–10 scale).  

---

## 🔍 Analysis Summary  
- **Correlation Heatmap** → Shows which features correlate most with wine quality.  
- **Alcohol vs Quality** → Higher alcohol content is strongly linked to higher quality.  
- **Acidity Trends** → Volatile acidity negatively impacts quality; balanced pH is crucial.  
- **Sugar & Density** → Minimal direct impact but useful in distinguishing wine types.  
- **Red vs White** → White wines tend to score higher on average in this dataset.  

---

## 💡 Key Insights  
- **Alcohol** is the most important positive driver of wine quality.  
- **Volatile Acidity** has a strong negative impact (higher vinegar taste = lower quality).  
- Wines with **balanced sulphates and chlorides** perform better in ratings.  
- Quality distribution is skewed, with most wines scoring between **5 and 7**.  

---

## ⚙️ Requirements  

```bash
pip install pandas numpy matplotlib seaborn
