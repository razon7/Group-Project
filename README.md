# Group Project Overview
## Communication Protocols
* Slack will be the primary communcation tool. Outside of our classes held on Mondays and Wednesdays, we intend to meet after class and on an as-needed basis each week. 
* All updates to the main branch within GitHub will require approval from a minimum of two team members. 

## Technologies and Platforms

### Data Cleaning and Analysis
* **QuickDBD** was used to create our database diagram and can be viewed [here](TBD link).
* **Python** along with the **Pandas library** will be used to clean any data and perform initial analysis. 

### Database Storage
* **Postgresql** is our chosen database.

### Machine Learning 
* **SckiKitLearn** is the ML library we intend to use. 

### Dashboard
* **Tableau** will be used to create and host our dashboard. 

## Selected Topic - College and Early Career Salary
College tuition costs are a hot topic these days. According to the Department of Education, the typical undergraduate student with loans graduates with nearly $25,000 in debt. Since 1980, the total cost of both four-year public and four-year private college has nearly tripled, even after accounting for inflation[^1]. Due to the Covid pandemic, federal student loan repayment has been paused since March 2020 and the Biden administration has attempted to enact a Federal Student Loan Relief program for low- to middle-income borrowers, forgiving up to $10,000 of existing post-high school educational debt. Some believe that the cost of a college education should not be the responsibility of the student alone, and others disagree. Regardless of what school of thought you subscribe to, college tuition costs are an important factor when considering where to go and what to study, while keeping a focus on what will someone earn once they graduate.

We believe that by studying these datasets, we can better understand how to optimize college expenses in relation to the early career salary. This data-driven research could provide another layer of insight to future college bound students, coupled with their intuition and/or personal experience. 

_Our initial focus will be to better understand our datasets, asking some basic questions, such as:_
* How many colleges are in each state?
* How many public, private, and for-profit colleges are in each state?
* What are the average tution costs by state of a two-year and four-year college?
* What states have the highest early career pay?

**We intend to use the following labels as our features:**
* State
* In-state Tuition
* Out-of-state Tuition
* Enrollment Size
* Degree Length
* School Type

Possible additional features:
* Room and Board Costs
* STEM Percent

**The output:**
* Early Career Salary

**At the end of this project, we seek to answer the following questions:**
* Does the college location (state) influence early career salary?
* Does the college tuition cost (in-state or out-of-state) influence early career salary?
* Does the college enrollment size influence early career salary?
* Does the degree length (two-year or four-year) influence early career salary?
* Does a public, private, or for-profit college influence early career salary?
* How does a two-year degree compare to a four-year degree with regards to early career salary? 
* How does in-state tuition costs compare to out-of-state with regards to early career salary?

## Data Sources
Our data is spread across three CSV files and can be found in the Resources folder housed on the main branch of this repository. These files were sourced from [Kaggle](https://www.kaggle.com/) and below is a breakdown of where the data originated.
* School name, tuition, fees, school type, degree length, state, and in-state vs out-of-state from [The Chronicle of Higher Education](https://www.chronicle.com/)
* Enrollment size comes from [TuitionTracker.org](https://www.tuitiontracker.org/)
* Potential salary data and percentage of STEM degrees comes from [payscale.com](https://www.payscale.com/)

--------------------------------------------
## Project Title (TBD)

## Assigned Roles - Week 1
* Billy - Project Manager (PM)
* David - Database (Circle)
* Jumoke - Machine Learning Model (Triangle)
* Rajkala - GitHub (Square)
* Kelly - Presentation (X)

## Deliverables - Week 1


### Presentation (30 points)

Team members have drafted their project, including the following:
- [x] Selected topic
- [x] Reason they selected the topic
- [x] Description of the source of data
- [x] Questions they hope to answer with the data

The content does not yet need to be in the form of a presentation. It can be text in the README.md.

### GitHub Repository (10 points)

Main Branch README should include:
- [x] Description of the communication protocols

Individual Branches should include:
- [x] At least one branch for each team member
- [ ] Each team member has at least four commits for the duration of the first segment

### Machine Learning Model (35 points)

Team members will be expected to present a provisional machine learning model that stands in for the final machine learning model and accomplishes the following:
- [ ] Takes in data from the provisional database
- [ ] Outputs label for input data

### Database Integration (25 points)

Team members will be expected to present a provisional database that stands in for the final database and accomplishes the following:
- [ ] Sample data that mimics the expected final database structure or schema
- [ ] Draft machine learning model is connected to the provisional database

### Dashboard (0 points)

There are no deliverables associated with the dashboard for this segment.



[^1]: [The White House Fact Sheet: President Biden Announces Student Loan Relief...](https://www.whitehouse.gov/briefing-room/statements-releases/2022/08/24/fact-sheet-president-biden-announces-student-loan-relief-for-borrowers-who-need-it-most/)