-- Create University_Salary_Database schema

CREATE TABLE "Diversity_School" (
    "UniversityName" text   NOT NULL,
    "TotalEnrollment" int   NOT NULL,
    "StateName" text NOT NULL,
    "Category" text   NOT NULL,
    "Enrollment" int   NOT NULL
);

CREATE TABLE "Salary_Potential" (
    "Rank" int   NOT NULL,
    "UniversityName" text   NOT NULL,
    "StateName" text   NOT NULL,
    "EarlyCareerPay" float   NOT NULL,
    "MidCareerPay" float   NOT NULL,
    "MakeWorldBetterPercent" float   NOT NULL,
    "StemPercent" float   NOT NULL,
    CONSTRAINT "pk_Salary_Potential" PRIMARY KEY (
        "UniversityName"
     )
);

CREATE TABLE "Tuition_Cost" (
    "UniversityName" text   NOT NULL,
    "StateName" text   NOT NULL,
    "StateCode" text   NOT NULL,
    "Type" text   NOT NULL,
    "DegreeLength" text   NOT NULL,
    "RoomBoard" float   NOT NULL,
    "InStateTuition" float   NOT NULL,
    "InStateTotal" float   NOT NULL,
    "OutStateTuition" float   NOT NULL,
    "OutStateTotal" float   NOT NULL
);

CREATE TABLE "Region_Reference" (
    "StateName" text   NOT NULL,
    "Region" text   NOT NULL,
    "Division" text   NOT NULL,
    CONSTRAINT "pk_Region_Reference" PRIMARY KEY (
        "StateName"
     )
);

ALTER TABLE "Diversity_School" ADD CONSTRAINT "fk_Diversity_School_UniversityName" FOREIGN KEY("UniversityName")
REFERENCES "Salary_Potential" ("UniversityName");

ALTER TABLE "Salary_Potential" ADD CONSTRAINT "fk_Salary_Potential_StateName" FOREIGN KEY("StateName")
REFERENCES "Region_Reference" ("StateName");

ALTER TABLE "Tuition_Cost" ADD CONSTRAINT "fk_Tuition_Cost_UniversityName" FOREIGN KEY("UniversityName")
REFERENCES "Salary_Potential" ("UniversityName");

ALTER TABLE "Tuition_Cost" ADD CONSTRAINT "fk_Tuition_Cost_State" FOREIGN KEY("StateName")
REFERENCES "Region_Reference" ("StateName");
