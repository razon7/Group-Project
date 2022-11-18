-- Create final data table for Machine Learning model
DROP TABLE college_statistics;

SELECT sp."Rank",
	sp."University_Name_Clean" as "University_Name",
	sp."State",
	rr."Region",
	rr."Division",
	sp."Early_Career_Pay",
	sp."Mid_Career_Pay",
	sp."Make_World_Better_Percent",
	sp."Stem_Percent",
	tc."Type",
	tc."Degree_Length",
	tc."Room_And_Board",
	tc."In_State_Tuition",
	tc."In_State_Total",
	tc."Out_Of_State_Tuition",
	tc."Out_Of_State_Total",
	ds."American_Indian_Alaska_Native_Diversity_Percent",
	ds."Asian_Diversity_Percent",
	ds."Black_Diversity_Percent",
	ds."Hispanic_Diversity_Percent",
	ds."Native_Hawaiian_Pacific_Islander_Diversity_Percent",
	ds."Two_Or_More_Races_Diversity_Percent",
	ds."Total_Minority_Diversity_Percent",
	ds."Non-Resident_Foreign_Diversity_Percent",
	ds."Unknown_Diversity_Percent",
	ds."White_Diversity_Percent",
	ds."Women_Diversity_Percent",
	ds."Men_Diversity_Percent"
INTO College_Statistics
FROM "Salary_Potential" as sp
INNER JOIN "Region_Reference" as rr
ON (sp."State" = rr."State")
LEFT JOIN "Tuition_Cost" as tc
ON (sp."University_Name_Clean" = tc."University_Name_Clean")
LEFT JOIN "Diversity_School" as ds
ON (sp."University_Name_Clean" = ds."University_Name_Clean")
WHERE (tc."Type" is not null)
ORDER BY sp."Rank", sp."State";

SELECT * FROM college_statistics