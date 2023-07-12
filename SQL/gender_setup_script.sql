ALTER TABLE amazon.amzn_survey
ADD column `id` int(10) unsigned primary KEY AUTO_INCREMENT;

SELECT *
FROM amazon.amzn_survey
WHERE Search_Result_Exploration = "Multiple pages";

SELECT *
FROM amazon.amzn_survey
WHERE Gender = "Female"
AND Browsing_Frequency = "Few times a month";

SELECT *
FROM amazon.amzn_survey
WHERE Gender = "Male"
AND Browsing_Frequency = "Few times a month";

SELECT *
FROM amazon.amzn_survey
WHERE Gender = "Male"
AND Browsing_Frequency = "Few times a month";

SELECT 
	age, 
    Purchase_Frequency,
    Review_Left,
    Service_Appreciation,
    Improvement_Areas,
    id,
    CASE
		WHEN age <= 25 THEN 'Young'
        WHEN age <= 55 THEN 'Mid'
        ELSE 'Elder'
	END AS age_group
FROM amazon.amzn_survey;
