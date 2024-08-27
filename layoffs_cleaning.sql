USE layoffs_db;

-- Data Cleaning -- 
-- 1. Remove Duplicates
-- 2. Standardize the Data
-- 3. Null Values or blank values
-- 4. Remove Any Columns
	
-- Creating and populating staging table
CREATE TABLE layoffs_staging
LIKE layoffs;

INSERT layoffs_staging
SELECT *
FROM layoffs;

-- 1. CHECKING FOR DUPLICATES
WITH duplicate_cte AS 
(
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY company) AS row_num
FROM layoffs_staging
)

SELECT * 
FROM duplicate_cte 
WHERE row_num > 1;
-- 1.A. It appears that using replace when populating our table has eliminated all duplicates

-- 2. Standardize data

-- Remove whitespaces
UPDATE layoffs_staging
SET company = TRIM(company);

-- Checking industries for redundancies
SELECT DISTINCT industry
FROM layoffs_staging
ORDER BY industry;

-- Checking location for redundancies
SELECT DISTINCT location
FROM layoffs_staging
ORDER BY location;

-- Checking country for redundancies
SELECT DISTINCT country
FROM layoffs_staging
ORDER BY country;

-- 3. Dealing with Nulls
SELECT COUNT(*)
FROM layoffs_staging
WHERE total_laid_off IS NULL
AND percentage_laid_off  IS NULL;

DELETE
FROM layoffs_staging
WHERE total_laid_off IS NULL
AND percentage_laid_off IS NULL;
-- 3.A Removed records with blanks in both total_laid_off and percentage_laid_off

-- Moving data from staging table back to main table
DROP TABLE IF EXISTS layoffs;

CREATE TABLE layoffs
LIKE layoffs_staging;

INSERT layoffs
SELECT *
FROM layoffs_staging;

DROP TABLE layoffs_staging;