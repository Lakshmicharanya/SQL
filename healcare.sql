CREATE DATABASE healthcare_chatbot;

USE healthcare_chatbot;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE symptoms (
    symptom_id INT AUTO_INCREMENT PRIMARY KEY,
    symptom_name VARCHAR(100) NOT NULL,
    response TEXT NOT NULL
);
CREATE TABLE doctors (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    doctor_name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    symptom VARCHAR(100) NOT NULL
);


CREATE TABLE chat_history (
    chat_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    user_message TEXT NOT NULL,
    bot_response TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
USE healthcare_chatbot;

INSERT INTO symptoms (symptom_name, response) VALUES
('headache', 'Headache can have several common causes. Rest, stay hydrated, and monitor your symptoms. If it is severe or persistent, consult a healthcare professional.'),
('fever', 'Fever can occur with infections and other conditions. Stay hydrated and rest. If the fever is high or persistent, seek medical attention.'),
('cough', 'A cough can occur due to infections, allergies, or irritation. Drink enough fluids and rest. Consult a healthcare professional if it is severe or persistent.'),
('cold', 'For common cold symptoms, rest, drink plenty of fluids, and monitor your condition.'),
('stomach pain', 'Stomach pain can have many causes. If the pain is severe or persistent, seek medical advice.'),
('sore throat', 'A sore throat may occur with infections or irritation. Stay hydrated and rest.'),
('vomiting', 'Vomiting can cause dehydration. Take small amounts of fluids frequently. Seek medical attention if it is severe or persistent.'),
('diarrhea', 'Diarrhea can cause dehydration. Drink plenty of fluids and seek medical attention if it is severe or persistent.');


INSERT INTO doctors
(doctor_name, specialization, phone, symptom)
VALUES
('Anil Kumar', 'General Physician', '9000000001', 'fever'),
('Priya Sharma', 'General Physician', '9000000002', 'headache'),
('Rahul Reddy', 'Pulmonologist', '9000000003', 'cough'),
('Sneha Rao', 'ENT Specialist', '9000000004', 'cold'),
('Kiran Patel', 'Gastroenterologist', '9000000005', 'stomach pain'),
('Meena Devi', 'ENT Specialist', '9000000006', 'sore throat'),
('Arjun Singh', 'General Physician', '9000000007', 'vomiting'),
('Kavya Reddy', 'General Physician', '9000000008', 'diarrhea');
USE healthcare_chatbot;
SELECT * FROM doctors;
SELECT * FROM symptoms;

CREATE TABLE appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    doctor_id INT NOT NULL,
    appointment_date DATE NOT NULL,
    appointment_time TIME NOT NULL,
    status VARCHAR(20) DEFAULT 'Booked',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);
DESCRIBE appointments;