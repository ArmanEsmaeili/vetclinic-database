USE VetClinic;

-- اطلاعات  حیوانات
INSERT INTO animal (name, breed, gender, species, color, birth_date, weight, parent_id)
VALUES 
('Dog1', 'German Shepherd', 'Male', 'Dog', 'Brown', '2023-01-01', 30.5, 1),
('Mina', 'Persian', 'Female', 'Cat', 'White', '2021-06-15', 5.2, 3),
('Naser', 'British', 'Male', 'Cat', 'Grey', '2020-04-13', 6.9, 4);

-- اطلاعات سرپرستان
INSERT INTO pet_parent (first_name, last_name, phone_number, visit_time)
VALUES
('Ali', 'Rezaei', '09123456789', '10:00:00'),
('Mohammad', 'Hashemi', '09123456790', '08:30:00'),
('Zahra', 'Sadeghi', '09123456791', '09:00:00');

-- اطلاعات خدمه 
INSERT INTO crew (first_name, last_name, birth_date, role, phone_number, education)
VALUES
('Ali', 'Ahmadi', '1980-05-15', 'Veterinarian', '09123456789', 'دکتری'),
('Sara', 'Khanjani', '1990-07-25', 'Nurse', '09123456788', 'کارشناسی'),
('Reza', 'Moeini', '1985-02-20', 'Receptionist', '09123456787', 'کارشناسی ارشد');

-- اطلاعات اقلام 
INSERT INTO item (name, type, quantity, unit_price)
VALUES
('Dog Food', 'Food', 100, 5000.00),
('Bandages', 'Equipment', 50, 3000.00);

-- اطلاعات خدمات
INSERT INTO service (service_name, service_price, start_date, end_date, quantity)
VALUES
('Vaccination', 15000.00, '2024-01-01', '2024-12-31', 10),
('Grooming', 25000.00, '2024-01-01', '2024-12-31', 5);

-- اطلاعات واکسن
INSERT INTO vaccine (vaccine_id, animal_id, name)
VALUES
(1, 7, 'Rabies'),
(2, 11, 'Distemper');

-- اطلاعات دامپزشکان
INSERT INTO veterinarian (specialty, license_number, crew_id)
VALUES
('Ophthalmology', '8897654321', '1');

-- اطلاعات پرستاران
INSERT INTO nurse (responsibilities, crew_id)
VALUES
('Assisting in Surgeries and Procedures', '2');

-- اطلاعات کارمندان پذیرش
INSERT INTO receptionist(duties, crew_id)
VALUES
('Greeting Clients, Scheduling Appointments, Answering Phone Calls, Client Communication', '3')

-- پرونده پزشکی
INSERT INTO medical_record (treatment_date, treatment_type, treatment_details, animal_id, vet_id)
VALUES
('2024-11-10', 'Checkup', 'Routine checkup with vaccination', 11, 1),
('2024-11-11', 'Surgery', 'Minor surgery for sterilization', 7, 1);

-- قرار ملاقات
INSERT INTO appoinment (appoinment_id, animal_id, date, time, record_id)
VALUES
(769, 7, '2024-11-12', '10:00:00', 10),
(888, 11, '2024-11-13', '08:30:00', 9);

-- پرداختی
INSERT INTO payment (description, amount, payment_time, payment_date, item_id, parent_id, service_id)
VALUES
('Payment for Dog Food and Vaccination', 20000.00, '12:00:00', '2024-11-14', 1, 1, 1),
('Payment for Bandages and Grooming', 40000.00, '15:00:00', '2024-11-14', 2, 3, 2);

-- این ستون را حذف کردم اضافی بود
ALTER TABLE work_hours 
DROP COLUMN employee_id;

-- ساعت کاری
INSERT INTO work_hours (work_id, work_date, shift_type, start_time, end_time) 
VALUES 
(1, '2024-11-01', 'روز', '08:00:00', '16:00:00'), 
(2, '2024-11-02', 'شب', '20:00:00', '04:00:00');


-- کار می‌کند
INSERT INTO works (crew_id, work_id) 
VALUES (1, 1), (2, 2);

-- حقوق
INSERT INTO salary (hourly_rate, payment_date, payment_period, working_hours, overtime_hours, overtime_rate, deductions)
VALUES (25.00, '2024-11-30', 'ماهانه', 160, 10, 35.00, 0);  

-- کسورات اضافه کردم
UPDATE salary
SET deductions = 350  
WHERE salary_id = 1;

-- کسورات
INSERT INTO deductions (deduction_id, salary_id, deduction_type, amount)
VALUES 
(1, 1, 'مالیات', 200),  
(2, 1, 'بیمه', 150);   

-- خرید
INSERT INTO purchase(item_id, parent_id)
VALUES
(1, 1),
(2, 3);

-- نسخه
INSERT INTO prescription (prescription_id, record_id, dosage, drug_type, quantity, instructions)
VALUES 
(1, 10, '50mg', 'Antibiotic', 30, 'Take one tablet twice a day after meals'),
(2, 9, '5mg', 'Painkiller', 20, 'Take one tablet every 4 hours if needed');


