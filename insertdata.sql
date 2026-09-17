INSERT INTO Patients
(patient_firstname, patient_surname, patient_age, patient_gender)
VALUES
('Juan', 'Dela Cruz', 25, 'Male'),
('Maria', 'Santos', 34, 'Female'),
('Carlos', 'Reyes', 41, 'Male'),
('Angela', 'Garcia', 29, 'Female'),
('Mark', 'Cruz', 52, 'Male'),
('Sofia', 'Mendoza', 18, 'Female'),
('Daniel', 'Torres', 63, 'Male'),
('Patricia', 'Ramos', 45, 'Female'),
('Miguel', 'Aquino', 37, 'Male'),
('Christine', 'Navarro', 56, 'Female');

INSERT INTO patient_records
(patient_id, patient_bloodtype, patient_emergencycontact)
VALUES
(1, 'O+', '09171234567'),
(2, 'A+', '09181234567'),
(3, 'B+', '09191234567'),
(4, 'AB+', '09201234567'),
(5, 'O-', '09211234567'),
(6, 'A-', '09221234567'),
(7, 'B-', '09231234567'),
(8, 'O+', '09241234567'),
(9, 'A+', '09251234567'),
(10, 'B+', '09261234567');

INSERT INTO doctors
(doctors_name, doctors_spec, doctors_number)
VALUES
('Dr. John Ramirez', 'Cardiologist', '09170001111'),
('Dr. Maria Lopez', 'Pediatrician', '09170002222'),
('Dr. Robert Garcia', 'General Physician', '09170003333'),
('Dr. Anna Fernandez', 'Dermatologist', '09170004444'),
('Dr. Michael Santos', 'Neurologist', '09170005555');

INSERT INTO visits
(patient_id, visits_date, visits_time, doctors_id)
VALUES
(1, '2026-09-01', '09:00:00', 3),
(2, '2026-09-01', '10:00:00', 1),
(3, '2026-09-02', '09:30:00', 3),
(4, '2026-09-02', '11:00:00', 4),
(5, '2026-09-03', '13:00:00', 1),
(6, '2026-09-03', '14:00:00', 2),
(7, '2026-09-04', '09:00:00', 5),
(8, '2026-09-04', '10:30:00', 3),
(9, '2026-09-05', '13:30:00', 4),
(10, '2026-09-05', '15:00:00', 1),
(1, '2026-09-10', '09:00:00', 3),
(3, '2026-09-11', '10:00:00', 1);

INSERT INTO diagnosis
(diagnosis_desc, prescription, visits_id)
VALUES
('Common cold', 'Paracetamol 500mg', 1),
('Hypertension', 'Amlodipine 5mg', 2),
('Gastritis', 'Omeprazole 20mg', 3),
('Acne vulgaris', 'Topical adapalene', 4),
('High blood pressure', 'Losartan 50mg', 5),
('Mild asthma', 'Salbutamol inhaler', 6),
('Migraine', 'Ibuprofen 400mg', 7),
('Flu', 'Paracetamol 500mg', 8),
('Skin allergy', 'Cetirizine 10mg', 9),
('Hypertension', 'Amlodipine 10mg', 10),
('Common cold', 'Paracetamol 500mg', 11),
('Chest pain', 'Aspirin 81mg', 12);

INSERT INTO tests
(test_name, test_price, visits_id)
VALUES
('Complete Blood Count', 500, 1),
('Blood Pressure Monitoring', 200, 2),
('Stool Examination', 350, 3),
('Skin Examination', 300, 4),
('Lipid Profile', 800, 5),
('Chest X-Ray', 700, 6),
('MRI Scan', 4500, 7),
('Complete Blood Count', 500, 8),
('Allergy Test', 1200, 9),
('ECG', 1000, 10),
('Urinalysis', 300, 11),
('ECG', 1000, 12);

INSERT INTO billing
(visits_id, billing_amount, payment_status, payment_date)
VALUES
(1, 1000.00, 'Paid', '2026-09-01'),
(2, 1500.00, 'Paid', '2026-09-01'),
(3, 850.00, 'Paid', '2026-09-02'),
(4, 700.00, 'Paid', '2026-09-02'),
(5, 1800.00, 'Pending', NULL),
(6, 1200.00, 'Paid', '2026-09-03'),
(7, 5500.00, 'Pending', NULL),
(8, 1000.00, 'Paid', '2026-09-04'),
(9, 1600.00, 'Paid', '2026-09-05'),
(10, 2000.00, 'Pending', NULL),
(11, 800.00, 'Paid', '2026-09-10'),
(12, 1800.00, 'Pending', NULL);
