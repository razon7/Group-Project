-- Create University_Salary_Database schema

CREATE TABLE "Diversity_School" (
    "University_Name" VARCHAR(100) NOT NULL,
    "University_Name_Clean" VARCHAR(100)  NOT NULL,
    "Total_Enrollment" INT NULL,
	"State" VARCHAR(20) NOT NULL,
	"American_Indian_Alaska_Native_Diversity_Percent" DOUBLE PRECISION NULL,
    "Asian_Diversity_Percent" DOUBLE PRECISION NULL,
	"Black_Diversity_Percent" DOUBLE PRECISION NULL,
	"Hispanic_Diversity_Percent" DOUBLE PRECISION NULL,
	"Native_Hawaiian_Pacific_Islander_Diversity_Percent" DOUBLE PRECISION NULL,
	"Two_Or_More_Races_Diversity_Percent" DOUBLE PRECISION NULL,
	"Total_Minority_Diversity_Percent" DOUBLE PRECISION NULL,
	"Non-Resident_Foreign_Diversity_Percent" DOUBLE PRECISION NULL,
	"Unknown_Diversity_Percent" DOUBLE PRECISION NULL,
	"White_Diversity_Percent" DOUBLE PRECISION NULL,
	"Women_Diversity_Percent" DOUBLE PRECISION NULL,
	"Men_Diversity_Percent" DOUBLE PRECISION NULL
);

CREATE TABLE "Salary_Potential" (
    "Rank" int NULL,
    "University_Name" VARCHAR(100) NOT NULL,
    "State" VARCHAR(20) NOT NULL,
    "Early_Career_Pay" INT NULL,
    "Mid_Career_Pay" INT NULL,
    "Make_World_Better_Percent" INT NULL,
    "Stem_Percent" INT NULL,
	"University_Name_Clean" VARCHAR(100) NOT NULL,
    CONSTRAINT "pk_Salary_Potential" PRIMARY KEY (
        "University_Name_Clean"
     )
);

CREATE TABLE "Tuition_Cost" (
    "Name" VARCHAR(100) NOT NULL,
	"University_Name_Clean" VARCHAR(100) NOT NULL,
    "State" VARCHAR(20) NOT NULL,
    "State_Code" VARCHAR(5) NULL,
    "Type" VARCHAR(15) NULL,
    "Degree_Length" VARCHAR(10) NULL,
    "Room_And_Board" INT NULL,
    "In_State_Tuition" INT NULL,
    "In_State_Total" INT NULL,
    "Out_Of_State_Tuition" INT NULL,
    "Out_Of_State_Total" INT NULL
);

CREATE TABLE "Region_Reference" (
    "State" VARCHAR(20) NOT NULL,
    "Region" VARCHAR(20) NOT NULL,
    "Division" VARCHAR(20) NOT NULL,
    CONSTRAINT "pk_Region_Reference" PRIMARY KEY (
        "State"
     )
);

ALTER TABLE "Salary_Potential" ADD CONSTRAINT "fk_Salary_Potential_State" FOREIGN KEY("State")
REFERENCES "Region_Reference" ("State");

ALTER TABLE "Tuition_Cost" ADD CONSTRAINT "fk_Tuition_Cost_State" FOREIGN KEY("State")
REFERENCES "Region_Reference" ("State");
