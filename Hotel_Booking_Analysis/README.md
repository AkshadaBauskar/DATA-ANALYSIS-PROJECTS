# Hotel Booking Analysis

**Objective**: Conduct an in-depth analysis of booking data for Atliq Grands, a hotel chain, to uncover insights into occupancy patterns, revenue trends, customer preferences, and platform performance. This analysis aims to support Atliq Grands in optimizing operations, enhancing customer satisfaction, and maximizing revenue.

## Problem Statement
Atliq Grands operates luxury and business hotels across major Indian cities, including Mumbai, Delhi, Bangalore, and Hyderabad. The company leverages multiple booking platforms to attract a diverse clientele. To remain competitive, Atliq Grands needs a data-driven approach to understand:
- Which booking platforms drive the most revenue
- Seasonal trends in occupancy rates
- Revenue patterns across different room types and cities
- Factors influencing customer satisfaction
By addressing these questions, Atliq Grands can fine-tune its strategy, optimize resource allocation, and target high-value booking channels.

## Project Overview

This project is a data analysis of Atliq Grands’ booking data, focusing on identifying and visualizing trends in revenue, occupancy, customer ratings, and platform performance. The project includes data cleaning, exploratory data analysis (EDA), and insights generation to aid in strategic decision-making for Atliq Grands.

## Data Description

The data comprises multiple datasets from Atliq Grands' booking database, covering hotel properties, room categories, booking transactions, and customer ratings. Here’s a breakdown of the datasets:

1. **dim_date.csv**: Date-related information, including day type (weekend or weekday), week number, and month.
2. **dim_hotels.csv**: Details about each hotel property, including property name, category (Luxury or Business), and city.
3. **dim_rooms.csv**: Room classifications (Standard, Elite, Premium, Presidential) and room category codes.
4. **fact_aggregated_bookings.csv**: Aggregated booking data with successful bookings, capacity, and occupancy rates.
5. **fact_bookings.csv**: Detailed booking transactions with revenue, booking status, and platform information.
6. **new_data_august.csv**: Data for bookings in August, added for extended analysis of monthly trends.

Each dataset was cleaned and processed as necessary for accurate analysis and visualization.

## Analysis Summary

The analysis covers the following areas:
1. **Booking Platform Performance**: Identification of platforms contributing the highest revenue and booking volume.
2. **Occupancy Rates by Room Type and City**: Analysis of occupancy trends across room categories (e.g., Standard, Elite) and cities.
3. **Monthly Revenue Trends**: Month-by-month revenue tracking to identify high-demand periods.
4. **Customer Ratings**: Average customer satisfaction ratings per city and room type to pinpoint areas for service improvement.

## Key Insights

- **Most Popular Booking Platforms**: The largest share of revenue is generated from platforms like *Makeyourtrip* and *Logtrip*, while offline bookings remain a smaller fraction.
- **Revenue and Occupancy Trends by City**: **Mumbai** shows the highest revenue contribution, followed closely by **Bangalore**. **Delhi** has the highest average occupancy, with a notable weekend demand spike.
- **Occupancy Patterns**: The occupancy rates are higher on weekends than weekdays, indicating a significant opportunity to optimize weekday occupancy with targeted promotions.
- **Customer Ratings**: **Delhi** leads in average customer ratings, suggesting strong customer satisfaction, while **Bangalore** shows potential for improvement in service quality.

These insights offer a foundation for making data-backed business decisions on marketing, resource allocation, and customer engagement.

## Requirements

This analysis requires the following Python libraries:
- `pandas`
- `numpy`
- `matplotlib`
- `seaborn`

You can install them with:
```bash
pip install pandas numpy matplotlib seaborn
