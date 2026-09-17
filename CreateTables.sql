CREATE TABLE Patients (
    patient_id INTEGER PRIMARY KEY AUTOINCREMENT,
    patient_firstname VARCHAR(100),
    patient_surname VARCHAR(100),
    patient_age INTEGER,
    patient_gender VARCHAR(20)
);

CREATE TABLE patient_records (
    record_id INTEGER PRIMARY KEY AUTOINCREMENT,
    patient_id INTEGER,
    patient_bloodtype VARCHAR(10),
    patient_emergencycontact VARCHAR(50),

    FOREIGN KEY (patient_id)
        REFERENCES Patients(patient_id)
);

CREATE TABLE doctors (
    doctors_id INTEGER PRIMARY KEY AUTOINCREMENT,
    doctors_name VARCHAR(100),
    doctors_spec VARCHAR(100),
    doctors_number VARCHAR(20)
);

CREATE TABLE visits (
    visits_id INTEGER PRIMARY KEY AUTOINCREMENT,
    patient_id INTEGER,
    visits_date DATE,
    visits_time TIME,
    doctors_id INTEGER,

    FOREIGN KEY (patient_id)
        REFERENCES Patients(patient_id),

    FOREIGN KEY (doctors_id)
        REFERENCES doctors(doctors_id)
);

CREATE TABLE diagnosis (
    diagnosis_id INTEGER PRIMARY KEY AUTOINCREMENT,
    diagnosis_desc VARCHAR(255),
    prescription VARCHAR(255),
    visits_id INTEGER,

    FOREIGN KEY (visits_id)
        REFERENCES visits(visits_id)
);

CREATE TABLE tests (
    tests_id INTEGER PRIMARY KEY AUTOINCREMENT,
    test_name VARCHAR(100),
    test_price INTEGER,
    visits_id INTEGER,

    FOREIGN KEY (visits_id)
        REFERENCES visits(visits_id)
);

CREATE TABLE billing (
    billing_id INTEGER PRIMARY KEY AUTOINCREMENT,
    visits_id INTEGER,
    billing_amount DECIMAL(10,2),
    payment_status VARCHAR(50),
    payment_date DATE,

    FOREIGN KEY (visits_id)
        REFERENCES visits(visits_id)
);
