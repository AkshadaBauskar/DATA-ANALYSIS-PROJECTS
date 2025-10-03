# ✈️ Flight Price Analysis — Exploratory Data Analysis (EDA)

## 🎯 Objective  
Perform an exploratory data analysis (EDA) on flight booking and pricing data to uncover factors that influence airfare, helping travelers, airlines, and aggregators understand pricing dynamics and optimize strategies.  

---

## ❓ Problem Statement  
Airline ticket pricing is highly dynamic, influenced by multiple factors such as airline, travel class, route, stops, duration, and time of booking. With thousands of flights operating daily, analyzing this data is essential to:  

- Identify pricing patterns across different airlines and routes.  
- Understand the impact of stops, duration, and timings on airfare.  
- Compare economy and business class fares.  
- Extract actionable insights for pricing optimization and better travel planning.  

---

## 📝 Project Overview  
This project involves:  

- **Data Cleaning** → Handling missing values, formatting dates, and encoding categorical fields.  
- **Feature Engineering** → Extracting journey day/month, departure/arrival hours, total travel duration, and stop counts.  
- **Exploratory Data Analysis** → Visualizing trends and relationships among features and airfare.  
- **Insights Generation** → Understanding factors like airline choice, travel class, and stopovers that affect flight price.  

The workflow is documented in a Jupyter Notebook (`Flight_Price_EDA.ipynb`).  

---

## 📂 Data Description  
The dataset contains flight booking records with the following features:  

- **Airline** → Flight carrier name.  
- **Date_of_Journey** → Travel date.  
- **Source** → Departure city.  
- **Destination** → Arrival city.  
- **Route** → Flight path with stopovers.  
- **Dep_Time / Arrival_Time** → Scheduled departure and arrival times.  
- **Duration** → Total travel time.  
- **Total_Stops** → Number of stops (Non-stop, 1-stop, etc.).  
- **Additional_Info** → Miscellaneous details about the flight.  
- **Price** → Ticket price (target variable).  

---

## 🔍 Analysis Summary  
- **Airline-wise Pricing** → Premium airlines charge higher fares compared to budget carriers.  
- **Stops vs Price** → Non-stop flights are costlier; multi-stop flights reduce cost but increase duration.  
- **Duration vs Price** → Longer flight durations generally correlate with higher prices.  
- **Route Analysis** → Certain city pairs show significant price variability.  
- **Travel Class** → Business class fares are significantly higher than economy.  

---

## 💡 Key Insights  
- Jet Airways Business has the **highest fares**, while low-cost airlines like Indigo are more affordable.  
- **Non-stop flights** are consistently more expensive.  
- Routes such as **Delhi → Cochin** show the widest price ranges.  
- **Longer travel durations** drive up ticket costs.  
- Business class clearly caters to a different pricing segment.  

---

## ⚙️ Requirements  
```bash
pip install pandas numpy matplotlib seaborn
