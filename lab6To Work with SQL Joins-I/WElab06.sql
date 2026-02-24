use cw_hms;
SELECT  doctor.doc_name, doctor.specialization, COUNT(DISTINCT appointment.patient_id) AS total_patients
FROM  doctor
LEFT JOIN  appointment ON doctor.doc_id = appointment.doc_id
GROUP BY   doctor.doc_id, doctor.doc_name, doctor.specialization;
# Week Exercise 1

SELECT patient.patient_id, patient.p_name, patient.city, appointment.appointment_id, appointment.appointment_date
FROM   patient
LEFT JOIN 
    appointment ON patient.patient_id = appointment.patient_id;
#Week Exercise 2

SELECT patient.patient_id,  patient.p_name,  patient.city
FROM     patient
LEFT JOIN    appointment ON patient.patient_id = appointment.patient_id
WHERE     appointment.appointment_id IS NULL;
#week exericse 3

SELECT  patient.p_name, doctor.doc_name, appointment.appointment_date, bill.amount AS bill_amount
FROM     patient
INNER JOIN     appointment ON patient.patient_id = appointment.patient_id
INNER JOIN     doctor ON appointment.doc_id = doctor.doc_id
INNER JOIN     bill ON appointment.appointment_id = bill.appointment_id;
#Week Exericse 4

SELECT  doctor.doc_name,  doctor.specialization, SUM(bill.amount) AS total_revenue
FROM     doctor
LEFT JOIN    appointment ON doctor.doc_id = appointment.doc_id
LEFT JOIN    bill ON appointment.appointment_id = bill.appointment_id
GROUP BY     doctor.doc_id, doctor.doc_name, doctor.specialization;
# Week Exericse 5

SELECT    doctor.doc_name, doctor.specialization, COUNT(DISTINCT appointment.patient_id) AS total_patients
FROM     doctor
LEFT JOIN     appointment ON doctor.doc_id = appointment.doc_id
GROUP BY    doctor.doc_id, doctor.doc_name, doctor.specialization
ORDER BY   total_patients DESC
LIMIT 3;
#Week Exerrcise 6

SELECT    doctor.doc_name,    doctor.specialization,    SUM(bill.amount) AS total_revenue
FROM     doctor
LEFT JOIN    appointment ON doctor.doc_id = appointment.doc_id
LEFT JOIN    bill ON appointment.appointment_id = bill.appointment_id
GROUP BY    doctor.doc_id, doctor.doc_name, doctor.specialization
ORDER BY    total_revenue DESC
LIMIT 1;
#Week Exercise 7

SELECT    patient.p_name, patient.city,    COUNT(DISTINCT appointment.doc_id) AS total_doctors_visited
FROM     patient
INNER JOIN    appointment ON patient.patient_id = appointment.patient_id
GROUP BY    patient.patient_id, patient.p_name, patient.city
HAVING     COUNT(DISTINCT appointment.doc_id) > 1;
#Week Exericse 8

SELECT    patient.p_name,    patient.city,    SUM(bill.amount) AS total_bill
FROM     patient
INNER JOIN    bill ON patient.patient_id = bill.patient_id
GROUP BY    patient.patient_id, patient.p_name, patient.city
HAVING     SUM(bill.amount) > 10000;
#Week Exercise 9

SELECT    patient.city,    SUM(bill.amount) AS total_revenue
FROM     patient
INNER JOIN    bill ON patient.patient_id = bill.patient_id
GROUP BY     patient.city;
#Week Exericse 10