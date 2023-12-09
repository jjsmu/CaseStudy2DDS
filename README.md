```

```
# CaseStudy2DDS

Case Study 02

## Zoom Link
<a href="#">Link to Case Study 2 Zoom Presentation Video</a>

## Executive Summary
Purpose and Context: DDSAnalytics, a firm known for its expertise in talent management solutions tailored for Fortune 100 companies, focuses on the continuous cycle of developing and maintaining its workforce. The company encompasses aspects in strategic workforce planning, implementing employee training initiatives, spotting employees with high potential, and tackling the issue of voluntary employee turnover, commonly known as "attrition". DDSAnalytics plans to integrate data science into its talent management strategies, and as a primary step to this integration, the company's leadership is applying data science to predict employee attrition. Our team has been assigned the task of analyzing current employee data to Frito-Lay, Inc. with the CEO and CFO senior executive team leadership.

Key Findings and Facts: Exploratory data analysis on factors of wealth and education indicates positively skewed distribution which 

Conclusions: Despite the unremarkable findings regarding the predominant factors that lead to higher turnover rates or attrition, for example, income or educational gaps with respect to job satisfaction, our exploratory data analysis for major trends like education level or salary suggests they are relatively mild in comparison to the impact on employee retention. In other words, the exploratory data analysis performed on the distribution of monthly income was not evident enough to suggest that money is the exact cause for attrition. Furthermore, additional research supporting our study has revealed relatively similar distributions with respect to job satisfaction across the entire spectrum of salary income. This may suggest that most employees are either content or discontent regardless of their pay. On the other hand, our research has observed a noticeable deviation from the level of job satisfaction with respect to particular job roles, especially among women, in Healthcare, Human Resources and Customer Sales. This could potentially indicate the amount of difficulty many employees must undertake when specializing in client-facing roles. However, further analysis has revealed

Recommendations: DDS Analytics has provided a list of recommendations for further study. Our recommendations were developed...
  1.
  2.
  3.

## Introduction

Frito-Lay, a division of PepsiCo, Inc., has a rich heritage dating back to the 1930s, stemming from the merger of The Frito Company and H.W. Lay & Company. This merger created a snack food giant with a diverse portfolio of beloved brands like Fritos, Lay's, Cheetos, Doritos, and Tostitos. The company's significant growth led to a merger with Pepsi-Cola in 1965, forming PepsiCo. Today, Frito-Lay is a market leader with a strong commitment to sustainability and innovation. It continually invests in technology to enhance its manufacturing processes, ensuring wide accessibility to its products. Frito-Lay's ongoing success is marked by its extensive range of products and its strategic vision for future growth and sustainability.


## Code book

Introduction and Background:

To conduct a comprehensive data analysis on the provided dataset (CaseStudy2-data.csv) for identifying factors leading to attrition, we must follow a structured approach using R. Here's a breakdown of the steps we took :

1. Data Exploration and Preprocessing:
Load the three (3) datasets into R from AWS S3 bucket (casestudy2) using aws.s3 libraries or locally from the provide folder labeled data.
Perform initial exploratory data analysis (EDA) to understand the structure using tidyverse, missing values, and basic statistics using ggplot. Note: In our case, all data observations were preserved, with very little manipulation.
Preprocess the data by handling missing values, outliers, and potentially normalizing or transforming features if necessary.

2. Feature Engineering:
Creation of derived attributes as needed. This involves understanding the business context and the potential factors that could lead to attrition. (e.g. Years In Current Role and Percent Salary Hike to determine employee workplace upward mobility).

3. Identifying Top Factors for Attrition:
Use of statistical tests and visualization to identify key factors that contribute to turnover. This includes the 6-step Hypothesis testing and Welch's t-test for continuous variables like Monthly Income and Monthly Rate, or ANOVA where applicable.
Correlation analysis might also be helpful to see the strength and direction of relationships between variables.

4. Role-Specific Trends Analysis:
Perform subgroup analyses for different job roles to identify any specific trends (e.g., job satisfaction levels, average tenure before leaving, etc.).
Visualization of these trends will be crucial for easy interpretation and presentation.

5. Building a Predictive Model for Attrition:
Split the data into 70/30 training and test sets.
Train a predictive model using logistic regression, KNN and Naive Bayes to predict attrition.
Evaluate the model using appropriate metrics (accuracy, precision, recall, F1 score, ROC curve).

6. Developing an RShiny App:
Design and develop a RShiny application to visualize the data and the findings from the analysis.
The app should allow users to interactively explore different variables and their impact on attrition.

7. Documentation and Reporting:

Dataset and description: 
Three (3) Data set provided by Frito-Lay, Inc. 

| Column Name | Description | Data Type | Notes |
|-------------|-------------|-----------|-------|
| 1   | CaseStudy2-data.csv | CSV File      | 136KB |
| 2   | CaseStudy2CompSet No Attrition.csv | CSV File      | 47KB |
| 3   | CaseStudy2CompSet No Salary.csv | CSV File      | 46KB |

- CaseStudy2-data.csv contains a total 870 entries with 36 variables of type integer, character class (as of 11/28/2023)
- CaseStudy2CompSet No Attrition.csv contains a total 300 entries with 35 variables of type integer, character class (as of 11/28/2023)
- CaseStudy2CompSet No Salary.csv contains a total 300 entries with 35 variables of type integer, character class (as of 11/28/2023). 


Variable Descriptions:

| Column Name | Description | Data Type | Notes |
|-------------|-------------|-----------|-------|
| ID   | Table Identification | Integer      | Primary Key, Unique |
| Age   | Current Age | Integer      | Notes |
| Attrition   | Employee Attrition  | Character      | Yes, No |
| BusinessTravel | Business Travel Frequency | Character      | Rarely, Frequently |
| DailyRate   | Employee Per Diem | Integer      | Notes |
| Department   | Department | Character      | Research & Development, Sales, Human Resources|
| DistanceFromHome   | Distance from Home | Integer      | Unit of measurement |
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

8. Contact Information: 
Please contact information for the individual(s) responsible for the data and codebook, in case there are questions or the need for further clarification directly through GitHub.

9. References and Acknowledgments:

APA Citation:

FactSet.(2023). Merrill Edge – Profile: PEP – PEPSICO, INC. – Stock Story, Merrill Edge. Accessed 8 December 2023.       olui2.fs.ml.com/RIStocksUI/RIStocksStory.aspx?Symbol=PEP#/stock-story/PEP/0.

OpenAI.(2023). ChatGPT response to query on Frito-Lay. ChatGPT.

FritoLay Logo [Online Image]. (2023). Logos | FritoLay. fritolay.com/logos

pep+ logo [Online Image]. (2023). Media | pep+ logo. pepsico.com/mediadownload-item/pep-logo
pepsiCo, Inc. (PEP) (2023). Profile, Summary. Yahoo!Finance. finance.yahoo.com/quote/PEP?p=PEP


