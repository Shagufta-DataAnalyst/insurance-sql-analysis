-- 1. Total number of records
SELECT COUNT(*) AS total_records FROM insurance_data;

-- 2. Average insurance charges
SELECT AVG(charges) AS avg_charges FROM insurance_data;

-- 3. Gender-wise average charges
SELECT sex, AVG(charges) AS avg_charges
FROM insurance_data
GROUP BY sex;

-- 4. Smoker vs Non-Smoker average charges
SELECT smoker, AVG(charges) AS avg_charges
FROM insurance_data
GROUP BY smoker;

-- 5. Region-wise average charges
SELECT region, AVG(charges) AS avg_charges
FROM insurance_data
GROUP BY region;

-- 6. Age-wise average charges
SELECT age, AVG(charges) AS avg_charges
FROM insurance_data
GROUP BY age
ORDER BY age;

-- 7. Highest insurance charges record
SELECT *
FROM insurance_data
ORDER BY charges DESC
LIMIT 1;

-- 8. Minimum insurance charges record
SELECT *
FROM insurance_data
ORDER BY charges ASC
LIMIT 1;

-- 9. BMI category-wise average charges
SELECT 
    CASE
        WHEN bmi < 18.5 THEN 'Underweight'
        WHEN bmi BETWEEN 18.5 AND 24.9 THEN 'Normal'
        WHEN bmi BETWEEN 25 AND 29.9 THEN 'Overweight'
        ELSE 'Obese'
    END AS bmi_category,
    AVG(charges) AS avg_charges
FROM insurance_data
GROUP BY bmi_category;

-- 10. Children vs charges
SELECT children, AVG(charges) AS avg_charges
FROM insurance_data
GROUP BY children
ORDER BY children;

-- 11. Smoking impact by gender
SELECT sex, smoker, AVG(charges) AS avg_charges
FROM insurance_data
GROUP BY sex, smoker;

-- 12. Top 5 people with highest BMI
SELECT *
FROM insurance_data
ORDER BY bmi DESC
LIMIT 5;

-- 13. Average BMI by gender
SELECT sex, AVG(bmi) AS avg_bmi
FROM insurance_data
GROUP BY sex;

-- 14. High BMI vs charges
SELECT bmi, charges
FROM insurance_data
WHERE bmi > 30
ORDER BY bmi DESC;

-- 15. Elder (50+) average charges
SELECT AVG(charges) AS avg_charges_over_50
FROM insurance_data
WHERE age > 50;

-- 16. Non-smokers with more than 2 children
SELECT AVG(charges) AS avg_charges
FROM insurance_data
WHERE smoker = 'no' AND children > 2;

-- 17. Region-wise smoker count
SELECT region, COUNT(*) AS smoker_count
FROM insurance_data
WHERE smoker = 'yes'
GROUP BY region;

-- 18. Gender-wise smoker percentage
SELECT sex,
       COUNT(*) AS total,
       SUM(CASE WHEN smoker = 'yes' THEN 1 ELSE 0 END) AS smokers,
       (SUM(CASE WHEN smoker = 'yes' THEN 1 ELSE 0 END) / COUNT(*)) * 100 AS smoker_percentage
FROM insurance_data
GROUP BY sex;

-- 19. Charges above 20,000
SELECT *
FROM insurance_data
WHERE charges > 20000;

-- 20. Obese + smoker customers
SELECT *
FROM insurance_data
WHERE bmi >= 30 AND smoker = 'yes';
