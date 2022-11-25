# College Costs and Career Pay 


### Team Members
| **Name** | **Primary Role** |
|----- | ----- |
| Billy Barlett | Dashboard Lead |
| Kelly Fangmann | Presentation Lead |
| Jumoke Hicok | Machine Learning Lead |
| Rajkala Pugazhendhi | EDA / GitHub Lead |
| David Schultz | Database Lead |

*While primary roles were established, we collaborated and participated on each part of the project.*


## Selected Topic - College and Early Career Salary
College tuition costs are a hot topic these days. According to the Department of Education, the typical undergraduate student with loans graduates with nearly $25,000 in debt. Since 1980, the total cost of both four-year public and four-year private college has nearly tripled, even after accounting for inflation[^1]. Due to the Covid pandemic, federal student loan repayment has been paused since March 2020 and the Biden administration has attempted to enact a Federal Student Loan Relief program for low- to middle-income borrowers, forgiving up to $10,000 of existing post-high school educational debt. Some believe that the cost of a college education should not be the responsibility of the student alone, and others disagree. Regardless of what school of thought you subscribe to, college tuition costs are an important factor when considering where to go and what to study, while keeping a focus on what will someone earn once they graduate.

We believe that by studying these datasets, we can better understand how to optimize college expenses in relation to the early career salary. This data-driven research could provide another layer of insight to future college bound students, coupled with their intuition and/or personal experience. 

_Our initial focus will be to better understand our datasets, asking some basic questions, such as:_
* How many colleges are in each state?
* How many public, private, and for-profit colleges are in each state?
* What are the average tuition costs by state of a two-year and four-year college?
* How does field of study influence early career pay?
* What states have the highest early career pay?
* What regions have the highest early careery pay?

**We intend to use the following labels as our features:**
* State
* Region
* In-state Tuition
* Out-of-state Tuition
* Enrollment Size
* Degree Length
* School Type

Possible additional features:
* Division (subcategory of Region)
* Room and Board Costs
* STEM Percent

**The output:**
* Early Career Salary

**At the end of this project, we seek to answer the following questions:**
* Does the college location (state, region, and/or division) influence early career pay?
* Does the college tuition cost (in-state or out-of-state) influence early career pay?
* Does the college enrollment size influence early career pay?
* How does field of study influence early career pay?
* Does a public, private, or for-profit college influence early career pay?
* How does in-state tuition costs compare to out-of-state with regards to early career pay?
* How does geographical region (and/or division) influence early career pay?

## Data Sources
Our data is spread across four CSV files and can be found in the Resources folder housed on the main branch of this repository. These files were sourced from [Kaggle](https://www.kaggle.com/) and below is a breakdown of where the data originated.
* School name, tuition, fees, school type, degree length, state, and in-state vs out-of-state comes from [The Chronicle of Higher Education](https://www.chronicle.com/).
* Enrollment size comes from [TuitionTracker.org](https://www.tuitiontracker.org/).
* Potential salary data, percentage of STEM degrees, and Make World Better percent comes from [payscale.com](https://www.payscale.com/).
* Region and division of states comes from [United States Census Bureau](https://www.census.gov/geographies/reference-maps/2010/geo/2010-census-regions-and-divisions-of-the-united-states.html).


## Presentation
Our presentation is hosted on Google Slides and can be viewed [here](https://docs.google.com/presentation/d/1GK0qrnXJ9t7PlQptir__Jj1SPL5RivTaPqMgYYJwcZw/edit?usp=sharing).


## Project Deliverables
| **File** | **Link** |
|----- | ---- |
| Presentation | [Google Slides](https://docs.google.com/presentation/d/1GK0qrnXJ9t7PlQptir__Jj1SPL5RivTaPqMgYYJwcZw/edit?usp=sharing)|
| Exploratory Analysis Code | [EDA_College_statistics](https://github.com/razon7/Group-Project/blob/main/EDA/EDA_College_Statistics.ipynb) |
| Machine Learning Code | [Machine_Learning](TBD ON LINK) |
| Database Integration | [University_Salary_ML_Table](https://github.com/razon7/Group-Project/blob/main/Database/University_Salary_ML_Table.sql) |
| Dashboard  | [Tableau Public](TBD ON Link) |

## Technologies and Platforms
![tech_platforms_algorithms](https://github.com/Kelfang/test/blob/main/tech_platforms_algorithms.png)

## Database 
PostgreSQL, via PGAdmin, is used to store the tables of data. We used SQLAlchemy as our Object Relational Mapper. 

Below is our entity relational diagram that outlines our datasets and assisted with our EDA process. 

The most common features within our datasets are **TB UPDATED WITH NEW DBD IMAGE BELOW**
![University_Salary_DBD](https://github.com/razon7/Group-Project/blob/main/Images/University_Salary_DBD.png)

## Exploratory Data Analysis 
After cleaning the data, which entailed matching and formatting the school names, we were left with 907 rows and 27 columns. Overall, the initial review showed that Mississippi had the lowest average of Early Career Pay while New York edged out California for the highest. Here are some highlights we found during the EDA process. 

* The visual below shows the average Early Career Pay by Division. The divisions are comprised of smaller groups with the regions, as defined by the U.S. Census Bureau. The Middle Atlantic includes New York and East South Central includes Mississippi. 
![avg_career_pay_by_division](https://github.com/Kelfang/test/blob/main/avg_career_pay_by_division.png)


* What we found most interesting was the correlation of **Stem Percent** (the percentage of students enrolled in STEM fields of study) to **Early Career Pay**. The higher the percentage, the higher the pay. In sharp contrast, the lower the **Make World Better Percent** (the percentage of students who identified themselves in fields of study to better the world around them) the lower the **Early Career Pay**. As you can see, these patterns exist across all regions of the United States.
![stem_vs_mwb_eda](https://github.com/Kelfang/test/blob/main/stem_vs_mwb_eda.png)

## Machine Learning

### Preliminary Data Preprocessing
* Assessed the data types
* Replaced the nulls with zero
* Dropped the unnecessary columns:
    * University Name
    * Rank
    * Mid Career Pay
    * Degree Length

* Pandas.get_dummies was used to convert the following to integers:
    * Division
    * State
    * Region
    * Type

### Feature Selection and Engineering Process - TB Updated
We elected to convert the target column values (Early Career Pay) to either “Low” (less than $45,000) or “Medium/High” for all other amounts.  
Of the dropped columns above we selected to remove Mid Career Pay and Rank for the initial phase of modeling. These features may be added back in pending further testing.  
While we were initially interested in the difference of Early Career Pay between two-year and four-year degrees, we only had six rows of data associated with two-year degrees. Therefore, we did not use the Degree Length column.

### Model Training and Testing - TB Updated if needed
 ![four_ml_models_tested](https://github.com/Kelfang/test/blob/main/four_ml_models_tested.png)

### Model Selection with Benefits and Limitations - TB Updated
TBD

### Model Optimization with Accuracy Score - Segment 2 vs. Segment 3 - TB Updated
TBD

## Dashboard - TB Updated
The interactive dashboard is created and hosted on Tableau Public. The direct link is [here](TBD on link).

### Interactive Elements
TBD

## Analysis 
TBD

### Improvements - TB Updated
* Collected more Early Career Pay on more schools, focusing on more two-year schools. By having more two-year data this could provided valuable information to those future students who are unsure of which degree length to select.?

### Recommendations for Additional Analysis - TB Updated
* Include the cost of living expenses by state so that it could be directly compared to Early Career Pay. In most cases higher pay can be found where the cost of living is higher.
* Unemployment rate (by state)?

 
--------------------------------------------
## WEEKLY ROLES AND RUBRIC
<details><summary>Week 3 Deliverables</summary>

--------------------------------------------
## Assigned Roles - Week 3
* Billy / David - Dashboard
* Jumoke / Rajkala - Machine Learning Model
* All - GitHub
* Kelly - Presentation

## Deliverables - Week 3
### Presentation (15 points)
#### Content

The presentation outlines the project, including the following:
- [X] Selected topic
- [X] Reason topic was selected
- [X] Description of the source of data
- [X] Questions the team hopes to answer with the data
- [X] Description of the data exploration phase of the project
- [X] Description of the analysis phase of the project
- [X] Technologies, languages, tools, and algorithms used throughout the project

#### Slides
Presentations are drafted in Google Slides.

### GitHub Repository (10 points)
#### Main Branch
All code in the main branch is production-ready.

The main branch should include:
- [X] All code necessary to perform exploratory analysis
- [X] Most code necessary to complete the machine learning portion of the project 

#### README.md
README.md should include:
- [X] Description of the communication protocols has been removed
- [X] Cohesive, structured outline of the project (this may include images, but they should be easy to follow and digest)
- [X] Link to Google Slides draft presentation

***The descriptions and explanations required in the project deliverables should also be in your README.md as part of your outline, unless otherwise noted.***

#### Individual Branches
Requirements for the individual branches follow:
- [X] At least one branch for each team member
- [X] Each team member has at least four commits for the duration of the second segment (12 total commits per person)

### Machine Learning Model (45 points)
The team members are expected to submit the code for the machine learning model, as well as the following:
- [X] Description of data preprocessing
- [X] Description of feature engineering and the feature selection, including the decision-making process
- [X] Description of how data was split into training and testing sets
- [X] Explanation of model choice, including limitations and benefits
- [] Explanation of changes in model choice (if changes occurred between the Segment 2 and Segment 3 deliverables)
- [] Description of how they have trained the model thus far, and any additional training that will take place
- [] Description of current accuracy score

***Additionally, the model obviously addresses the question or problem the team is solving.***

### Database Integration (0 points)
There are no deliverables for the database integration section of the project for this segment.


### Dashboard (30 points)
The dashboard presents a data story that is logical and easy to follow for someone unfamiliar with the topic. It includes the following:
- [] Images from the initial analysis
- [] Data (images or report) from the machine learning task
- [] At least one interactive element

</details>

<details><summary>Week 2 Deliverables</summary>

--------------------------------------------
## Assigned Roles - Week 2
* Billy - Dashboard (X)
* David - Database (Triangle)
* Jumoke / Rajkala - Machine Learning Model (Square)
* All - GitHub
* Kelly - Presentation (Circle)

## Deliverables - Week 2
### Presentation (15 points)
#### Content

The presentation outlines the project, including the following:
- [X] Selected topic
- [X] Reason topic was selected
- [X] Description of the source of data
- [X] Questions the team hopes to answer with the data
- [X] Description of the data exploration phase of the project
- [X] Description of the analysis phase of the project

#### Slides
Presentations are drafted in Google Slides.

### GitHub Repository (10 points)
#### Main Branch
All code in the main branch is production-ready.

The main branch should include:
- [X] Some code necessary to complete the machine learning portion of project

#### README.md
README.md should include:
- [X] Description of the communication protocols
- [X] Outline of the project (this may include images, but they should be easy to follow and digest)

#### Individual Branches
Requirements for the individual branches follow:
- [X] At least one branch for each team member
- [X] Each team member has at least four commits for the duration of the second segment (eight total commits per person)

### Machine Learning Model (30 points)
The team members are expected to submit the code for the machine learning model, as well as the following:
- [X] Description of preliminary data preprocessing
- [X] Description of preliminary feature engineering and preliminary feature selection, including the decision-making process
- [X] Description of how data was split into training and testing sets
- [X] Explanation of model choice, including limitations and benefits

### Database Integration (30 points)
The team members are expected to present a fully integrated database, including the following:
- [X] Database stores static data for use during the project
- [X] Database interfaces with the project in some format (e.g., scraping updates the database)
- [X] Includes at least two tables (or collections, if using MongoDB)
- [X] Includes at least one join using the database language (not including any joins in Pandas)
- [X] Includes at least one connection string (using SQLAlchemy or PyMongo)

ERD relationships must be provided with the SQL database.

### Dashboard (15 points)
A blueprint for the dashboard is created and includes all of the following:
- [X] Storyboard on a Google Slide(s)
- [X] Description of the tool(s) that will be used to create the final dashboard
- [X] Description of interactive element(s)

</details>

<details><summary>Week 1 Deliverables</summary>

--------------------------------------------
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
- [x] Each team member has at least four commits for the duration of the first segment

### Machine Learning Model (35 points)

Team members will be expected to present a provisional machine learning model that stands in for the final machine learning model and accomplishes the following:
- [x] Takes in data from the provisional database
- [x] Outputs label for input data

### Database Integration (25 points)

Team members will be expected to present a provisional database that stands in for the final database and accomplishes the following:
- [x] Sample data that mimics the expected final database structure or schema
- [x] Draft machine learning model is connected to the provisional database

### Dashboard (0 points)

There are no deliverables associated with the dashboard for this segment.

</details>


[^1]: [The White House Fact Sheet: President Biden Announces Student Loan Relief...](https://www.whitehouse.gov/briefing-room/statements-releases/2022/08/24/fact-sheet-president-biden-announces-student-loan-relief-for-borrowers-who-need-it-most/)

