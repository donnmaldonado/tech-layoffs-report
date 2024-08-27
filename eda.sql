USE layoffs_db;

-- EXPLORATORY DATA ANALYSIS

-- 1. Highest laid off and laid off percentage values?
SELECT MAX(total_laid_off), MAX(percentage_laid_off)
FROM layoffs;

-- 2. How many companies went out of business
SELECT COUNT(*)
FROM layoffs
WHERE percentage_laid_off = 1;

-- 3. What industry laid off the most people?
SELECT industry, SUM(total_laid_off) as total_laid_off
FROM layoffs
GROUP BY industry
ORDER BY total_laid_off DESC;

-- 4. What type of stage laid off the most people?
SELECT stage, SUM(total_laid_off) as total_laid_off
FROM layoffs
GROUP BY stage
ORDER BY total_laid_off DESC;

-- 5. What countries had the most layoffs?
SELECT country, SUM(total_laid_off) as total_laid_off
FROM layoffs
GROUP BY country
ORDER BY total_laid_off DESC;

-- 6. Which years had the most layoffs?
SELECT YEAR(date), SUM(total_laid_off) as total_laid_off
FROM layoffs
GROUP BY YEAR(date)
ORDER BY total_laid_off DESC;

-- 7. What cities faced the most layoffs?
SELECT location, SUM(total_laid_off) as total_laid_off
FROM layoffs
GROUP BY location
ORDER BY total_laid_off DESC;

-- 8. How many industries were affected?
SELECT COUNT(DISTINCT(industry))
FROM layoffs;

