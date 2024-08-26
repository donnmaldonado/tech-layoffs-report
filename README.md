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
* Overview: The first page of the report paints a broad picture of tech layoff metrics such as industries, employees, and companies affected.
* Top 5 Companies Affected: The second page of the report dives deeper into the companies responsible for the most employees laid off.
* Locations most Affected: The third page of the report aims at given geographical context behind the layoffs and allows the viewer to easily look at metrics for the 5 most affected cities in the US.

Design
---
![Screenshot 2024-08-14 at 2 09 05 PM](https://github.com/user-attachments/assets/c3a5d873-ce1d-4f95-9dd6-25bd8e56796a)

Links
---
[Data Source](https://opendata.suffolkcountyny.gov/datasets/a857361de9c1403187f2d3129390f1d4_0/explore)

[Dashboard available on Tableau Public](https://public.tableau.com/app/profile/donnoban.maldonado/viz/CompensationExpendituresBreakdownSuffolkCountyNY/Dashboard1)

