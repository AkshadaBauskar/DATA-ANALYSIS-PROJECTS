# Google Playstore Analysis  

## Objective  

Conduct an exploratory data analysis (EDA) of the Google Playstore dataset to uncover insights into app categories, installs, user ratings, pricing models, and factors influencing app success. This analysis helps app developers, marketers, and businesses understand key trends in the Android app ecosystem and make data-driven decisions.  

## Problem Statement  

The Google Playstore hosts millions of apps across diverse categories, catering to billions of users worldwide. With intense competition, identifying the factors that drive app success is crucial.  

Key questions addressed in this project:  
- Which app categories dominate in terms of installs and revenue potential?  
- How do user ratings vary across paid vs free apps?  
- What role do features such as size, reviews, and pricing play in app popularity?  
- Are there seasonal or categorical trends in app performance?  

By answering these questions, the analysis enables app publishers to optimize strategies for engagement, pricing, and category focus.  

## Project Overview  

This project performs data cleaning, feature engineering, and EDA on the Google Playstore dataset to:  
- Identify category-wise performance of apps.  
- Examine relationships between installs, ratings, size, and price.  
- Compare free vs paid apps and their success metrics.  
- Generate insights on app distribution and monetization trends.  

## Data Description  

The dataset contains metadata of apps published on Google Playstore. Key fields include:  
- **App**: App name  
- **Category**: Category under which the app is listed  
- **Rating**: Average user rating (1–5 scale)  
- **Reviews**: Number of user reviews  
- **Size**: App size in MB  
- **Installs**: Number of downloads/installs  
- **Type**: Free or Paid  
- **Price**: Price of the app (if paid)  
- **Content Rating**: Age group suitability  
- **Genres**: Sub-category or genre of the app  
- **Last Updated**: Date of last update  
- **Current Ver / Android Ver**: Versioning and Android compatibility  

## Key Insights  

- **Top Categories**: Games, Tools, and Entertainment dominate installs, while productivity apps lead in higher ratings.  
- **Free vs Paid Apps**: Free apps constitute the majority with higher installs, while paid apps show higher average ratings but lower adoption.  
- **Correlation**: Strong positive correlation between installs and reviews; larger apps tend to have lower installs compared to lightweight apps.  
- **Ratings**: Most apps cluster around high ratings (4.0–4.5), but niche categories show higher variance.  
- **Monetization**: Categories like Medical and Business have higher average prices, targeting specific user segments.  

## Requirements  

This project uses the following Python libraries:  
```bash
pip install pandas numpy matplotlib seaborn
