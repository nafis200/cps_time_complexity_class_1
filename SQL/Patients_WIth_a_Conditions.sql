CREATE TABLE Patients (
    patient_id INT,
    patient_name VARCHAR(50),
    conditions VARCHAR(100)
);

INSERT INTO Patients (patient_id, patient_name, conditions) VALUES
(1, 'Daniel', 'YFEV COUGH'),
(2, 'Alice', ''),
(3, 'Bob', 'DIAB100 MYOP'),
(4, 'George', 'ACNE DIAB100'),
(5, 'Alain', 'DIAB201');


SELECT *
FROM Patients
WHERE conditions LIKE 'DIAB1%'
   OR conditions LIKE '% DIAB1%';