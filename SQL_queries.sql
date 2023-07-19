SELECT PatientID, bmi, bloodpressure, diabetic
FROM insurance_data;
INSERT insurance_data bmi, bloodpressure, diabetic
INTO Health_Related_Conditions;


CREATE TABLE Claims (PatientID INT PRIMARY KEY,
claim numeric);

SELECT PatientID, claim
FROM insurance_data;
INSERT PatientID, claim
INTO Claims;

SELECT * FROM patient_basic_profile
LEFT JOIN claims
on patient_basic_profile.PatientID = claims.PatientID
ORDER BY Claim DESC;


SELECT * FROM health_related_conditions
LEFT JOIN claims
on health_related_conditions.PatientID = claims.PatientID
ORDER BY Claim DESC;

