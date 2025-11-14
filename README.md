<img width="1920" height="1020" alt="image" src="https://github.com/user-attachments/assets/288ece9a-4421-4b5c-8521-b8757df90478" />#  Insurance Cost Analysis Using SQL

SQL project to analyze medical insurance charges and find major cost influencing factors

Insurance Cost Analysis Using SQL

A data analysis project to understand how different factors such as age, gender, BMI, smoking habits, children, and region affect the medical insurance cost. The goal of this project is to practice SQL skills and derive meaningful insights from real-world structured data.

# ✨ Project Objectives

To clean and structure insurance data using SQL

To analyze key factors influencing insurance charges

To identify patterns and high-risk customer groups

To practice SQL queries used in data analyst interviews

#  📊 Dataset Description

The dataset contains the following columns:

| Column Name | Description |
|------------|-------------|
| **age** | Age of the person |
| **sex** | Male / Female |
| **bmi** | Body Mass Index |
| **children** | Number of dependent children |
| **smoker** | Yes / No |
| **region** | Region of residence |
| **charges** | Medical insurance cost |


# Data Analysis Concepts

🧹 Step 1: Data Cleaning

Basic cleaning queries:

SELECT * FROM insurance;

SELECT COUNT(*) FROM insurance;


Check missing or invalid data:

SELECT * FROM insurance
WHERE age IS NULL OR bmi IS NULL OR charges IS NULL;

🧪 Step 2: Exploratory Analysis (EDA)

Key analysis queries used:

➤ 1. Gender-wise average charges
SELECT sex, AVG(charges) AS avg_charges
FROM insurance
GROUP BY sex;

➤ 2. Smoker vs Non-smoker charges
SELECT smoker, AVG(charges)
FROM insurance
GROUP BY smoker;

➤ 3. Region-wise charges
SELECT region, AVG(charges)
FROM insurance
GROUP BY region;

➤ 4. BMI category analysis
SELECT bmi_category, AVG(charges)
FROM insurance
GROUP BY bmi_category;

➤ 5. Age vs charges
SELECT age, AVG(charges)
FROM insurance
GROUP BY age
ORDER BY age;

# 📈 Insights & Findings

(Replace these with your actual results)

Smokers are the highest paying group and pay 3–4x more than non-smokers.

Higher BMI leads to higher insurance cost, especially in the obese category.

Females/Males may have slightly different cost patterns depending on dataset.

Charges increase with age, especially after 40+.

Region does not affect cost strongly, but one region shows slightly higher average.

People with more children sometimes have higher cost, depending on dataset.

🧾 Conclusion

This project helped in understanding how lifestyle, demographic factors, and habits affect healthcare cost.
It also demonstrates essential SQL skills:

Data cleaning

Grouping & aggregations

Pattern recognition

Business insights generation

Useful for Data Analyst and Business Analyst interviews.






