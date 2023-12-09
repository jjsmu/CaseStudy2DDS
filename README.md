```

```
# CaseStudy2DDS

Case Study 02

## Zoom Link
<a href="#">Link to Case Study 2 Zoom Presentation Video</a>

## Executive Summary
Purpose and Context: DDSAnalytics, a firm known for its expertise in talent management solutions tailored for Fortune 100 companies, focuses on the continuous cycle of developing and maintaining its workforce. The company encompasses aspects in strategic workforce planning, implementing employee training initiatives, spotting employees with high potential, and tackling the issue of voluntary employee turnover, commonly known as "attrition". DDSAnalytics plans to integrate data science into its talent management strategies, and as a primary step to this integration, the company's leadership is applying data science to predict employee attrition. They have assigned the task of analyzing current employee data to your data science team.

Key Findings and Facts: It highlights the most important findings or data points from the report.

Conclusions: It summarizes the conclusions drawn from the findings and analysis.

Recommendations: If applicable, it includes the main recommendations or action items proposed in the document.

## Introduction

Frito-Lay, a division of PepsiCo, has a rich heritage dating back to the 1930s, stemming from the merger of The Frito Company and H.W. Lay & Company. This merger created a snack food giant with a diverse portfolio of beloved brands like Fritos, Lay's, Cheetos, Doritos, and Tostitos. The company's significant growth led to a merger with Pepsi-Cola in 1965, forming PepsiCo. Today, Frito-Lay is a market leader with a strong commitment to sustainability and innovation. It continually invests in technology to enhance its manufacturing processes, ensuring wide accessibility to its products. Frito-Lay's ongoing success is marked by its extensive range of products and its strategic vision for future growth and sustainability.


## Code book

Introduction and Background:

To conduct a comprehensive data analysis on the provided dataset (CaseStudy2-data.csv) for identifying factors leading to attrition, we must follow a structured approach using R. Here's a breakdown of the steps we took :

1. Data Exploration and Preprocessing:
Load the dataset into R.
Perform initial exploratory data analysis (EDA) to understand the structure, missing values, and basic statistics.
Preprocess the data by handling missing values, outliers, and potentially normalizing or transforming features if necessary.

2. Feature Engineering:
Create derived attributes if needed. This involves understanding the business context and the potential factors that could lead to attrition.
For example, combining 'years at company' and 'job role' to see if long-term employees in certain roles are more likely to leave.

3. Identifying Top Factors for Attrition:
Use statistical tests and visualization to identify key factors that contribute to turnover. This could include chi-square tests for categorical variables, t-tests for continuous variables, or ANOVA where applicable.
Correlation analysis might also be helpful to see the strength and direction of relationships between variables.
Role-Specific Trends Analysis:

Perform subgroup analyses for different job roles to identify any specific trends (e.g., job satisfaction levels, average tenure before leaving, etc.).
Visualization of these trends will be crucial for easy interpretation and presentation.

4. Building a Predictive Model for Attrition:
Split the data into training and test sets.
Train a predictive model (like logistic regression, decision trees, or random forest) to predict attrition.
Evaluate the model using appropriate metrics (accuracy, precision, recall, F1 score, ROC curve).

5. Developing an RShiny App:
Design and develop a RShiny application to visualize the data and the findings from the analysis.
The app should allow users to interactively explore different variables and their impact on attrition.

6. Documentation and Reporting:
Dataset Description:

Three (3) Data set provided by Frito-Lay, Inc. 
| Column Name | Description | Data Type | Notes |
|-------------|-------------|-----------|-------|
| 1   | CaseStudy2-data.csv | CSV File      | 136KB |
| 2   | CaseStudy2CompSet No Attrition.csv | CSV File      | 47KB |
| 3   | CaseStudy2CompSet No Salary.csv | CSV File      | 46KB |

- CaseStudy2-data.csv contains a total 870 entries with 36 variables of type integer, character class (as of 11/28/2023)
- CaseStudy2CompSet No Attrition.csv contains a total 300 entries with 35 variables of type integer, character class (as of 11/28/2023)
- CaseStudy2CompSet No Salary.csv contains a total 300 entries with 35 variables of type integer, character class (as of 11/28/2023). 

Describe the dataset in general terms, including the size (number of records and variables), the type of data (e.g., survey, transactional), and the period it covers.

Mention any data transformations or preprocessing steps applied.

Variable Descriptions:

List each variable included in your dataset.
For each variable, provide:

| Column Name | Description | Data Type | Notes |
|-------------|-------------|-----------|-------|
| ID   | Table Identification | Integer      | Primary Key, Unique |
| Age   | Current Age | Integer      | Notes |
| Attrition   | Employee Attrition  | Character      | Yes, No |
| BusinessTravel | Business Travel Frequency | Character      | Rarely, Frequently |
| DailyRate   | Employee Per Diem | Integer      | Notes |
| Department   | Department | Character      | Research & Development, Sales, Human Resources|
| DistanceFromHome   | Distance from Home | Integer      | Imperial Units |
| Education   | Description | Integer      | Level 1, 2, 3, 4, 5 |
| EducationField   | Description | Character      | Life Science, Human Res., Marketing, Medical, Other, Technical Degree|
| EmployeeCount   | Employee Status | Integer      | Status |
| EmployeeNumber   | Employee Identifcation | Integer      | No. 1-870 |
| EnvironmentSatisfaction   | Environmental Satisfaction | Integer      | Scale 1 - 4 |
| Gender   | Gender Identity | Character      | Male, Female |
| HourlyRate   | Hourly Rate | Integer      | USD |
| JobInvolvement   | Job Involvement | Integer      | Scale 1 - 4 |
| JobLevel   | Job Level Difficulty | Integer      | Level 1 - 5 |
| JobRole   | Job Role | Character      | Research, Sales, Directorate, Lab Tech, Healthcare, Manager, HR  |
| JobSatisfaction   | Job Satisfaction | Integer      | Scale 1 - 4 |
| MaritalStatus   | Marital Status | Character      | Divorced, Single, Married |
| MonthlyIncome   | Monthly Income | Integer      | USD |
| MonthlyRate   | Monthly Rate | Integer      | USD |
| NumCompaniesWorked   | Number of Companies Worked | Integer | Work History |
| Over18   | Over 18 | Character      | Yes, No |
| OverTime   | Over Time | Character      | Yes, No |
| PercentSalaryHike   | Percent Salary Hike | Integer      | (%) Percentage |
| PerformanceRating   | Performance Rating | Integer      | Scale 1 - 4 |
| RelationshipSatisfaction   | Relationship Satisfaction | Integer      | Scale 1 - 4 |
| StandardHours   | Standard Hours | Integer      | Standard 80, Overtime |
| StockOptionLevel   | Stock Option Level | Integer      | Level 0 - 3 |
| TotalWorkingYears | Total Working Years | Integer      | Employee Lifetime |
| TrainingTimesLastYear   | Training Times Last Year | Integer      | Company Sponsored Training |
| WorkLifeBalance   | Work Life Balance | Integer      | Scale 1 - 4 |
| YearsAtCompany   | Years At Company | Integer      | Company Tenure |
| YearsInCurrentRole   | Years in Current Role | Integer      | Total Time working in Job Role |
| YearsSinceLastPromotion   | Years since last promotion | Integer      | Last promotion year |
| YearsWithCurrManager   | Years with current Manager | Integer     | Length of Job Role |
| CurrManager   | NaN | NaN      | NaN |

A detailed description (what it represents, how it was measured).
The variable type (e.g., numeric, categorical).
The units of measurement (if applicable).
Any coding information (e.g., 1 = Male, 2 = Female for a gender variable).
Information on how missing values are represented.
Any derived or calculated variables should be clearly explained (how they were derived, formulas used).

Data Cleaning and Preprocessing:
Document any data cleaning or preprocessing steps (e.g., handling of missing data, data filtering, normalization).
Explain why these steps were necessary and how they were performed.
Analytical Methods:

Detail the statistical methods and algorithms used for data analysis.
Include any assumptions made by the analytical methods.
If applicable, explain the rationale for choosing these methods.
Sample Code and Examples:

Provide sample code snippets to illustrate how the data can be loaded, processed, and analyzed.
Include comments in the code for clarity.
Results and Interpretation (if applicable):

Summarize key findings and how they relate to the variables in your codebook.
If the codebook is part of a larger report or publication, this section might refer to that document for more details.
Versioning and Updates:

Include information about the version of the dataset and codebook.
Document any updates or changes made to the dataset or analytical methods over time.
Contact Information:

Provide contact information for the individual(s) responsible for the data and codebook, in case there are questions or the need for further clarification.
References and Acknowledgments:

Cite any external sources used in the data collection or analysis.
Acknowledge contributors or funding sources.
Remember, the key goal of a codebook is to make your data understandable and usable by others (including your future self). It should be detailed enough that someone else could replicate your analyses without needing additional information.

