use  cw_hms;
select patient.p_name, appointment.appointment_date
from patient 
inner join appointment
on patient.patient_id = appointment.patient_id;
#calss activity 1

select doctor.doc_name, appointment.appointment_date
from doctor
inner join appointment
on doctor.doc_id = appointment.doc_id;
#class activity 2

select patient.p_name, doctor.doc_name
from appointment
inner join patient
	on appointment.patient_id = patient.patient_id
inner join doctor
	on doctor.doc_id = appointment.doc_id;
#class activity 3

select appointment.appointment_date, patient.city
from appointment
inner join patient
on appointment.patient_id = patient.patient_id;
#class activity 4

select patient.p_name, bill.amount
from patient
inner join bill
on patient.patient_id = bill.patient_id;
#activity 5

select patient.p_name, appointment.appointment_id
from patient
left join appointment
on patient.patient_id = appointment.patient_id;
#activity 6

select patient.p_name, doctor.doc_name, appointment_date
from appointment
inner join doctor
on appointment.doc_id = doctor.doc_id
inner join patient
on appointment.patient_id = patient.patient_id;
#Class Activity 7

select patient.p_name, doctor.doc_name, bill.amount
from appointment
inner join doctor
on appointment.doc_id = doctor.doc_id
inner join bill	 
on appointment.appointment_id = bill.appointment_id
inner join patient
on appointment.patient_id = patient.patient_id;
#Class Activity 8

select doctor.specialization, count(appointment.appointment_id) as total_appointments
from doctor
left join appointment
on doctor.doc_id = appointment.doc_id
group by doctor.specialization;
#Class Activity 9

select patient.p_name
from appointment
inner join patient
    on appointment.patient_id = patient.patient_id
inner join doctor
    on appointment.doc_id = doctor.doc_id
where doctor.specialization = 'Cardiologist';
#Class Activity 10

SELECT patient.city, COUNT(appointment.appointment_id) AS total_visits
FROM   patient
LEFT JOIN appointment
ON  patient.patient_id = appointment.patient_id
GROUP BY 
    patient.city;
# Class Activity 11

SELECT  doctor.doc_name, patient.p_name
FROM 
    doctor
INNER JOIN 
    appointment ON doctor.doc_id = appointment.doc_id
INNER JOIN 
    patient ON appointment.patient_id = patient.patient_id
WHERE 
    patient.city = 'Karachi';
#Class Activity 12

SELECT  patient.p_name, patient.city, appointment.appointment_date
FROM  patient
INNER JOIN 
    appointment ON patient.patient_id = appointment.patient_id
WHERE 
    appointment.appointment_date > '2026-02-05';
#Class Activity 13

SELECT doctor.doc_name, doctor.specialization, COUNT(appointment.appointment_id) AS total_appointments
FROM  doctor
LEFT JOIN 
    appointment ON doctor.doc_id = appointment.doc_id
GROUP BY 
    doctor.doc_id, doctor.doc_name, doctor.specialization
HAVING 
    COUNT(appointment.appointment_id) > 1;
#Class Activity 14

SELECT  patient.p_name, COUNT(appointment.appointment_id) AS total_appointments
FROM  patient
LEFT JOIN 
    appointment ON patient.patient_id = appointment.patient_id
GROUP BY 
    patient.patient_id, patient.p_name;
#Class Activity 15