-- Create Database
CREATE DATABASE insurance_project;
USE insurance_project;

-- Create Table
CREATE TABLE insurance_data (
    age INT,
    sex VARCHAR(10),
    bmi DECIMAL(5,2),
    children INT,
    smoker VARCHAR(5),
    region VARCHAR(15),
    charges DECIMAL(10,2)
);

Dataset loaded using MySQL Workbench Import Wizard.