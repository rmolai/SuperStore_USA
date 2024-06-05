# Data Portfolio: Superstore Sales Analysis

![superstore-animated-diagram](assets/images/superstore_to_powerbi.gif)

# Table of contents

- [Objective](#objective)
- [Data Source](#data-source)
- [Stages](#stages)
- [Design](#design)
  - [Dashboard Components](#dashboard-components)
  - [Mockup](#mockup)
  - [Tools](#tools)
- [Development](#development)
  - [Pseudocode](#pseudocode)
  - [Data Exploration](#data-exploration)
  - [Data Cleaning](#data-cleaning)
  - [Transform the Data](#transform-the-data)
  - [Create the SQL View](#create-the-sql-view)
- [Testing](#testing)
  - [Data Quality Tests](#data-quality-tests)
- [Visualization](#visualization)
  - [Results](#results)
  - [DAX Measures](#dax-measures)
- [Analysis](#analysis)
  - [Findings](#findings)
  - [Validation](#validation)
  - [Discovery](#discovery)
- [Recommendations](#recommendations)
  - [Potential ROI](#potential-roi)
  - [Potential Courses of Actions](#potential-courses-of-actions)
- [Conclusion](#conclusion)

# Objective

- **Key Pain Point:**
  The sales team needs detailed insights into the performance of different product categories, segments, and regions to optimize sales strategies and improve profitability.

- **Ideal Solution:**
  Create an interactive dashboard that provides comprehensive insights into sales performance, including:
  - Sales revenue
  - Profit margins
  - Customer segments
  - Regional performance

This will help the sales team make data-driven decisions to enhance sales strategies and profitability.

## User Story

As a Sales Manager, I want to use a dashboard that provides detailed insights into sales performance across various product categories, segments, and regions. This will help me identify trends and opportunities to optimize sales strategies and improve overall profitability.

# Data Source

- **What data is needed to achieve our objective?**
  - Sales data
  - Product data
  - Customer data
  - Regional data

- **Where is the data coming from?**
  - The data is sourced from the Superstore dataset, which includes information on sales, products, customers, and regions.

# Stages

- Design
- Development
- Testing
- Analysis

# Design

## Dashboard Components

To understand what the dashboard should contain, we need to determine the key questions it should answer:

1. What are the total sales and profit for each product category?
2. Which regions are generating the highest sales and profit?
3. What are the sales and profit trends over time?
4. How do different customer segments contribute to sales and profit?

## Dashboard Mockup

- **What should it look like?**

The following visuals may be appropriate to answer our questions:
1. Bar Chart: Total sales and profit by product category
2. Map: Sales and profit by region
3. Line Chart: Sales and profit trends over time
4. Pie Chart: Sales and profit by customer segment

![Dashboard-Mockup](assets/images/superstore_dashboard_mockup.png)

## Tools

| Tool       | Purpose                                   |
|------------|-------------------------------------------|
| Excel      | Exploring the data                        |
| SQL Server | Cleaning, testing, and analyzing the data |
| Power BI   | Visualizing the data via interactive dashboards |
| GitHub     | Hosting the project documentation and version control |
| Mockup AI  | Designing the wireframe/mockup of the dashboard |

# Development

## Pseudocode

1. Load the data
2. Explore the data in Excel
3. Load the data into SQL Server
4. Clean the data with SQL
5. Test the data with SQL
6. Visualize the data in Power BI
7. Generate insights based on the analysis
8. Write the documentation and commentary
9. Publish the data to GitHub Pages

## Data Exploration Notes

Initial observations about the dataset:

1. The dataset includes multiple columns related to sales, products, customers, and regions.
2. Some columns may contain null values or inconsistent data that need to be cleaned.
3. We have more data than needed, so unnecessary columns should be removed.

## Data Cleaning

### Expected Clean Data

- Only relevant columns should be retained.
- All data types should be appropriate for the contents of each column.
- No column should contain null values, ensuring complete data for all records.

| Property        | Description |
|-----------------|-------------|
| Number of Rows  | Varies      |
| Number of Columns | 4         |

### Expected Schema

| Column Name       | Data Type | Nullable |
|-------------------|-----------|----------|
| Order_ID          | VARCHAR   | NO       |
| Product_Category  | VARCHAR   | NO       |
| Sales             | FLOAT     | NO       |
| Profit            | FLOAT     | NO       |

### Cleaning Steps

1. Remove unnecessary columns.
2. Rename columns using aliases.
3. Ensure all columns have appropriate data types.
4. Remove rows with null values.

```sql
/*
# 1. Select the required columns
# 2. Rename columns using aliases
*/

SELECT
    Order_ID AS order_id,
    Product_Category AS product_category,
    Sales AS sales,
    Profit AS profit
FROM
    superstore_sales
