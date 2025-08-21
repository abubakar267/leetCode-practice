-- Last updated: 22/08/2025, 04:56:01
# Write your MySQL query statement below

select patient_id,patient_name,conditions from Patients
where conditions REGEXP '(^| )DIAB1'