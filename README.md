# Tech Layoffs Report

Summary
---
End-to-end project culminating in an interactive multi-page report to facilitate viewing and analyzing of recent layoffs in the tech industry.

Process
---
Data is downloaded as CSV file to local storage and then pushed into an AWS RDS instance of MySQL using MySQL Workbench.

Data is then duplicated in a staging table for preprocessing using SQL in MySQL Workbench.

Preprocessing involved cleaning data to remove duplicates, deal with redunencies in naming convention, and deal with nulls.

Data is then moved from staging table into final table.

Lastly, the AWS RDS instance is then connected to Looker where the data is visualized in 3 interactive report pages.


Report
---
**1. Overview:**  Paints a broad picture of tech layoff metrics such as industries, employees, and companies affected.
**2. Top 5 Companies Affected:** Dives deeper into the companies responsible for the most employees laid off.
**3. Locations most Affected:** Aims at given geographical context behind the layoffs and allows the viewer to easily look at metrics for the 5 most affected cities in the US.

Design
---
![Page 1](https://github.com/user-attachments/assets/c3a5d873-ce1d-4f95-9dd6-25bd8e56796a)
![Page 2](https://github.com/user-attachments/assets/b0917e8a-0761-4746-8498-0107eadf117e)
![Page 3](https://github.com/user-attachments/assets/df91a58f-ecb3-46a9-a5e2-fc5e44129f9a)


Links
---
[Dashboard](https://lookerstudio.google.com/reporting/3027e197-b2bb-485d-aa40-9fe468352925)

[Data Source](https://www.kaggle.com/datasets/swaptr/layoffs-2022)


