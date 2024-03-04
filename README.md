# Data-Driven-Health-Insurance-Management-Unifying-Insights-for-Optimal-Care

Project Introduction:
This project endeavors to address this challenge by implementing a comprehensive Business Intelligence (BI) solution designed to centralize, integrate, and analyze health insurance data from various sources. Leveraging a combination of cutting-edge technologies such as SQL Server Integration Services (SSIS), Azure Data Factory (ADF), and Power BI Desktop, the project aims to create a unified platform for data-driven decision-making, resource allocation, and strategic planning within the organization.

Project Overview:
The project aims to revolutionize the organization's approach to health insurance analytics by integrating disparate data sources, enabling insightful reporting, and fostering data-driven decision-making. Through strategic deployment and meticulous maintenance, the organization stands to gain significant value from its BI initiative, positioning itself for sustained growth and success in the competitive healthcare industry.

Data Source Description:
Description of the Microsoft Excel worksheet containing Health Insurance data.
Overview of the 5 Dimension Tables: DIM_CATEGORY, DIM_GENDER, DIM_LOCATION, DIM_HOSPITAL_TYPE, DIM_SURGERY.
Description of the Fact Table containing data from Sept 2016 till date.
FACT_SEPT2016_TILLDATE

Technology Stack:
Technologies and tools used in the project:
SSIS (SQL Server Integration Services)
Azure Data Factory (ADF)
Microsoft Power BI Desktop
MS-SQL Server
Azure SQL Server

Project Requirements:
Detailed breakdown of the project requirements:
Developing SSIS packages to transfer data from Excel to MS-SQL Server.
Utilizing lookup and filter activities in Azure Data Factory.
Transferring Fact Table data from on-premises SQL Server to Azure SQL using copy activity.
Connecting Azure SQL to Microsoft Power BI Desktop using Import mode.

Implementation Steps:
Step-by-step description of how each requirement was implemented:

SSIS Package Development:
Description of the SSIS package design.
Control flow task:
Truncate Tables Task:
Description: This task truncates the tables in the Health_Insurance database to ensure that data is not loaded multiple times during the package execution.

Purpose: Prevents data duplication and maintains data integrity by clearing existing records before loading new data.

![Control Task](https://github.com/nag335/Data-Driven-Health-Insurance-Management-Unifying-Insights-for-Optimal-Care/assets/97250565/a549e44a-1a99-4b04-9413-dfcf6dd37c5a)


Data flow task:
Data flow tasks for transferring data from Excel to MS-SQL Server.

![Fact2016SSIS](https://github.com/nag335/Data-Driven-Health-Insurance-Management-Unifying-Insights-for-Optimal-Care/assets/97250565/524ecc93-8c90-443f-b840-8fae69605780)


Azure Data Factory Activities:
Implementation of lookup activity for DIM table names.

![AzureDIm](https://github.com/nag335/Data-Driven-Health-Insurance-Management-Unifying-Insights-for-Optimal-Care/assets/97250565/d5a5a504-e055-4395-9aa2-75993c7cde2a)
Utilization of filter activity to filter DIM tables.
Usage of each loop and copy activity to transfer data from on-premises SQL Server to Azure SQL.

![AzureDIm](https://github.com/nag335/Data-Driven-Health-Insurance-Management-Unifying-Insights-for-Optimal-Care/assets/97250565/d5a5a504-e055-4395-9aa2-75993c7cde2a)

Copying Fact Table Data:
Details of the copy activity to transfer Fact Table data from on-premises SQL Server to Azure SQL.

![AzureFact](https://github.com/nag335/Data-Driven-Health-Insurance-Management-Unifying-Insights-for-Optimal-Care/assets/97250565/39a6abb4-29e2-44e1-833d-dc1a5cf82c5a)

Power BI Desktop Connection:
Steps to connect Azure SQL to Microsoft Power BI Desktop using Import mode.

![Get Data Connection](https://github.com/nag335/Data-Driven-Health-Insurance-Management-Unifying-Insights-for-Optimal-Care/assets/97250565/33b66022-7f5f-4078-bf34-f42feaaa9d5f)

![Import Azure](https://github.com/nag335/Data-Driven-Health-Insurance-Management-Unifying-Insights-for-Optimal-Care/assets/97250565/c540697b-ecbe-40b6-bc56-cb941eb535be)


Data Model and Schema:
Explanation of the data model and schema design:
The data model for the Health Insurance system consists of a star schema design, with a central fact table surrounded by dimension tables. This design facilitates efficient querying and analysis of health insurance data.

Relationship between Dimension Tables and the Fact Table:
The star schema design with clearly defined dimension tables and a central fact table provides a flexible and efficient structure for analyzing health insurance data, enabling stakeholders to derive valuable insights and make informed decisions.

Attributes and keys used for joining tables.
Attributes used for joining tables include primary keys (e.g., CategoryID, GenderID, LocationID, HospitalTypeID, SurgeryID) from the dimension tables and corresponding foreign keys in the fact table. Relationships between tables are established through these keys, allowing analysts to aggregate and analyze data across different dimensions.

![DataModeling](https://github.com/nag335/Data-Driven-Health-Insurance-Management-Unifying-Insights-for-Optimal-Care/assets/97250565/3777081f-30ec-41db-ad3a-505b1e5138fc)

Testing and Validation:
Description of testing procedures:
Unit Testing: Conduct comprehensive unit testing for SSIS packages and Azure Data Factory activities to ensure functionality and performance meet specified requirements.

Data Integrity Validation: Perform validation checks during the data transfer process to ensure data completeness, accuracy, and consistency between source and destination systems.

Regression Testing: Validate the end-to-end data integration process, including data extraction, transformation, loading, and reporting, to identify and address any issues or discrepancies.

### Problem Statement:
The problem statement entails developing a comprehensive Power BI report for health insurance data. The report must include Key Performance Indicators (KPIs) such as Total Policy, Total Paid Amount, Total Claim Amount, Total Hospitals, Total Deaths, and Total Undeaths, along with additional requirements like image incorporation, multiple pages, drill-through functionality, buttons, and role-level security (RLS) implementation.

### Solution for Power BI Report:
1. **Data Preparation:**
   - Imported the health insurance data from the Azure SQL Server into Power BI Desktop.

   ![Getdata](https://github.com/nag335/Data-Driven-Health-Insurance-Management-Unifying-Insights-for-Optimal-Care/assets/97250565/b3fef217-86aa-48db-bfae-a2ce8fb78f62)


   - Ensured that the necessary relationships are established between the fact table and dimension tables.
   ![DataModeling](https://github.com/nag335/Data-Driven-Health-Insurance-Management-Unifying-Insights-for-Optimal-Care/assets/97250565/8647848a-319e-4799-9218-d0d267ce196e)

2. **KPI Calculation:**
   - Create calculated measures for each KPI:
     - Total Policy: Count of distinct policies.
     - Total Paid Amount: Sum of the paid amounts.
     - Total Claim Amount: Sum of the claim amounts.
     - Total Hospitals: Count of distinct hospitals.
     - Total Deaths: Count of deaths.
     - Total Undeaths: Count of undeaths.
3. Conditional Column:
The conditional column "Age group" is a dynamic attribute generated within the health insurance dataset based on specific age thresholds. It categorizes individuals into distinct age groups—minor, senior, and adult—based on their age values.
Age Group = if (FACT_SEPT2016_TILLDATE[AGE]<=17,"Minor",IF(FACT_SEPT2016_TILLDATE[AGE]>=51,"Senior","Adult"))

4. **Page Design:**
- Page 1 (Image Page):
- This page serves as a visually appealing introduction to the Power BI report,  featuring the specified image relevant to the health insurance context.
![HomePage](https://github.com/nag335/Data-Driven-Health-Insurance-Management-Unifying-Insights-for-Optimal-Care/assets/97250565/ba1b829a-c42e-4f53-907a-37a6a692f660)

- Page 2 (Home Page):
- This page functions as the central hub of the Power BI report, presenting a comprehensive table with all the calculated Key Performance Indicators (KPIs) related to health insurance data.
![Home](https://github.com/nag335/Data-Driven-Health-Insurance-Management-Unifying-Insights-for-Optimal-Care/assets/97250565/285b5bd3-e810-4884-a0ac-42e5311c322f)

- Page 3 (Measures by Dimension):
- This page offers deeper insights into health insurance data by exploring various dimensions such as category, gender, location, hospital type, and surgery type.
![Measures Page](https://github.com/nag335/Data-Driven-Health-Insurance-Management-Unifying-Insights-for-Optimal-Care/assets/97250565/bfbe3f45-faaa-4274-9dba-f11d05e38fdf)

- Page 4 (Report Page):
- This page provides a detailed view of the health insurance data, presenting a comprehensive table with all the relevant information.
![All Details](https://github.com/nag335/Data-Driven-Health-Insurance-Management-Unifying-Insights-for-Optimal-Care/assets/97250565/b7e04681-01d5-4fb4-8db4-4360ecd886ef)


4. **Drill-Through Feature:**
   - Implemented drill-through functionality for all dimension names.
   - Users can click on a dimension value to drill down and see detailed information related to that dimension.

5. **Button Implementation:**
   - Clear Filters Button:
     The Clear Filters button enables users to reset or clear all applied filters within slicers quickly.
   By clicking on this button, users can remove any active filters applied to the dataset, returning the report to its default state.
   - Toggle Slicers Button:
     The Toggle Slicers button offers users the option to turn ON or OFF the slicers displayed within the report.
When activated, this button hides or shows the slicers present in the report interface, allowing users to maximize screen real estate and focus on visualizations or specific data elements.

6. **Role-Level Security (RLS):**
   - Implemented RLS based on the Hospital_Type dimension (Corporate and Government).
   - Defined security roles to restrict access to data based on the user's role or permissions.
   - Users will only see data related to hospitals they have access to based on their assigned roles.
![RLS](https://github.com/nag335/Data-Driven-Health-Insurance-Management-Unifying-Insights-for-Optimal-Care/assets/97250565/ed947735-ebe7-418f-8baf-b35d7b4ebc06)

7. **Testing and Validation:**
   - Thoroughly tested the Power BI report to ensure all KPIs, images, tables, charts, and functionalities are working as intended.
   - Validated data accuracy and consistency across different pages and drill-through actions.

Potential Insights and Actions:

Identifying Risk Patterns: Analysis of claim amounts and mortality rates can help identify high-risk populations or regions that require targeted intervention or risk mitigation strategies.
Optimizing Provider Networks: Understanding hospital utilization patterns can inform decisions related to network management, contract negotiations with healthcare providers, and strategic partnerships.
Improving Policy Offerings: Insights into policy issuance trends and claim distributions can guide the development of new insurance products, coverage options, and pricing strategies tailored to meet evolving customer needs.
Enhancing Care Coordination: Analysis of mortality and survival rates can highlight opportunities to improve care coordination, disease management programs, and patient outcomes through proactive interventions and healthcare interventions.
Ensuring Financial Sustainability: Monitoring paid amounts and claim distributions can help ensure the financial sustainability of the insurance company by identifying cost drivers, managing claims reserves, and optimizing risk exposure.
By leveraging these insights derived from the KPIs, stakeholders can make informed decisions, optimize business operations, and enhance the overall value proposition of the health insurance offerings.

Deployment Process:

Pre-Deployment Preparation: Conduct thorough testing of SSIS packages, Azure Data Factory pipelines and Power BI reports to ensure readiness for deployment.
Deployment Planning: Develop a deployment plan outlining the sequence of activities, roles and responsibilities, and contingency measures.
SSIS Package Deployment: Deploy SSIS packages to the appropriate environments (development, testing, production) using deployment utilities provided by SQL Server Data Tools.
ADF Pipeline Deployment: Publish Azure Data Factory pipelines to the Azure environment and configure connections to data sources and destinations.
Power BI Report Deployment: Publish Power BI reports to the Power BI service or on-premises Power BI Report Server, ensuring accessibility to authorized users.

Conclusion:
In conclusion, the implementation of the Business Intelligence (BI) solution for health insurance data integration marks a significant milestone in enhancing decision-making processes, operational efficiencies, and patient care within the organization. By leveraging technologies such as SSIS, Azure Data Factory, Power BI Desktop, MS-SQL Server, and Azure SQL Server, the project has successfully centralized and integrated disparate data sources, enabling stakeholders to derive actionable insights from comprehensive analytics.

The deployment of SSIS packages, Azure Data Factory pipelines, and Power BI reports has streamlined data transfer, facilitated insightful reporting, and empowered stakeholders with timely access to relevant information. The establishment of a robust data model and schema design, encompassing dimension tables and a central fact table, forms the foundation for multidimensional analysis and informed decision-making.
