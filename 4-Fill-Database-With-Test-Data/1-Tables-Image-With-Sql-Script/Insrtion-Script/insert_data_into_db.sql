-- اطلاعات  حیوانات
INSERT INTO animal (name, breed, gender, species, color, birth_date, weight, parent_id)
VALUES 
('Dog1', 'German Shepherd', 'Male', 'Dog', 'Brown', '2023-01-01', 30.5, 1),
('Mina', 'Persian', 'Female', 'Cat', 'White', '2021-06-15', 5.2, 3),
('Naser', 'British', 'Male', 'Cat', 'Grey', '2020-04-13', 6.9, 4),
('Buddy', 'Golden Retriever', 'Male', 'Dog', 'Golden', '2022-02-10', 28.3, 2),
('Luna', 'Sphynx', 'Female', 'Cat', 'Pink', '2021-03-15', 4.5, 13),
('Charlie', 'Beagle', 'Male', 'Dog', 'Tricolor', '2023-04-20', 15.0, 5),
('Daisy', 'Siamese', 'Female', 'Cat', 'Seal Point', '2020-05-25', 3.8, 6),
('Rocky', 'Boxer', 'Male', 'Dog', 'Brindle', '2022-06-30', 25.0, 7),
('Molly', 'Persian', 'Female', 'Cat', 'White', '2021-07-10', 5.5, 8),
('Bailey', 'Bulldog', 'Male', 'Dog', 'White', '2023-08-18', 20.0, 9),
('Lily', 'Maine Coon', 'Female', 'Cat', 'Brown', '2019-09-05', 6.3, 10),
('Max', 'Dachshund', 'Male', 'Dog', 'Black and Tan', '2022-10-12', 9.0, 11),
('Chloe', 'Ragdoll', 'Female', 'Cat', 'Blue', '2020-11-22', 7.2, 12);


-- اطلاعات سرپرستان
INSERT INTO pet_parent (first_name, last_name, phone_number, visit_time)
VALUES
('Ali', 'Rezaei', '09123456789', '10:00:00'),
('Mohammad', 'Hashemi', '09123456790', '08:30:00'),
('Zahra', 'Sadeghi', '09123456791', '09:00:00'),
('John', 'Doe', '09123456792', '08:00:00'),
('Jane', 'Smith', '09123456793', '09:15:00'),
('Emily', 'Brown', '09123456794', '10:30:00'),
('Michael', 'Johnson', '09123456795', '11:45:00'),
('Chris', 'Lee', '09123456796', '12:00:00'),
('Sarah', 'Taylor', '09123456797', '01:00:00'),
('David', 'Wilson', '09123456798', '02:15:00'),
('Emma', 'Moore', '09123456799', '03:30:00'),
('Daniel', 'Harris', '09123456800', '04:45:00'),
('Sophia', 'Martin', '09123456801', '05:00:00');

-- اطلاعات خدمه 
INSERT INTO crew (first_name, last_name, birth_date, role, phone_number, education)
VALUES
('Ali', 'Ahmadi', '1980-05-15', 'Veterinarian', '09123456789', 'دکتری'),
('Sara', 'Khanjani', '1990-07-25', 'Nurse', '09123456788', 'کارشناسی'),
('Reza', 'Moeini', '1985-02-20', 'Receptionist', '09123456787', 'کارشناسی ارشد'),
('Hassan', 'Tabatabaei', '1982-01-20', 'Veterinarian', '09123456802', 'دکتری'),
('Neda', 'Karimian', '1991-02-28', 'Nurse', '09123456803', 'کارشناسی'),
('Saeed', 'Rostami', '1986-03-15', 'Receptionist', '09123456804', 'کارشناسی ارشد'),
('Maryam', 'Shahidi', '1993-04-22', 'Veterinarian', '09123456805', 'دکتری'),
('Ahmad', 'Ebrahimi', '1988-05-30', 'Nurse', '09123456806', 'کارشناسی'),
('Zahra', 'Taheri', '1992-06-18', 'Receptionist', '09123456807', 'کارشناسی ارشد'),
('Behzad', 'Khosravi', '1984-07-25', 'Veterinarian', '09123456808', 'دکتری'),
('Fariba', 'Mansouri', '1989-08-14', 'Nurse', '09123456809', 'کارشناسی'),
('Kamran', 'Daryaei', '1990-09-10', 'Receptionist', '09123456810', 'کارشناسی ارشد'),
('Simin', 'Pourmand', '1987-10-05', 'Veterinarian', '09123456811', 'دکتری');

-- اطلاعات اقلام 
INSERT INTO item (name, type, quantity, unit_price)
VALUES
('Dog Food', 'Food', 100, 5000.00),
('Bandages', 'Equipment', 50, 3000.00),
('Cat Litter', 'Supplies', 150, 2500.00),
('Thermometer', 'Equipment', 40, 1200.00),
('Leash', 'Accessories', 80, 1800.00),
('Collar', 'Accessories', 100, 1500.00),
('Bird Seed', 'Food', 200, 3000.00),
('Fish Tank Cleaner', 'Supplies', 60, 2200.00),
('Hamster Wheel', 'Toys', 70, 3500.00),
('Rabbit Hutch', 'Furniture', 30, 50000.00),
('Reptile Heat Lamp', 'Equipment', 25, 4500.00),
('Aquarium Filter', 'Equipment', 35, 4000.00);

-- اطلاعات خدمات
INSERT INTO service (service_name, service_price, start_date, end_date, quantity)
VALUES
('Vaccination', 15000.00, '2024-01-01', '2024-12-31', 10),
('Grooming', 25000.00, '2024-01-01', '2024-12-31', 5),
('Dental Cleaning', 20000.00, '2024-02-01', '2024-12-31', 8),
('Nail Clipping', 8000.00, '2024-02-01', '2024-12-31', 20),
('Bathing', 10000.00, '2024-02-01', '2024-12-31', 25),
('Hair Trimming', 12000.00, '2024-02-01', '2024-12-31', 15),
('Health Screening', 18000.00, '2024-02-01', '2024-12-31', 12),
('Behavior Training', 22000.00, '2024-02-01', '2024-12-31', 7),
('Grooming Package', 30000.00, '2024-02-01', '2024-12-31', 5),
('Emergency Care', 50000.00, '2024-02-01', '2024-12-31', 3),
('Nutrition Consultation', 15000.00, '2024-02-01', '2024-12-31', 10),
('Vaccination Booster', 17000.00, '2024-02-01', '2024-12-31', 9);

-- اطلاعات واکسن
INSERT INTO vaccine (vaccine_id, animal_id, name)
VALUES
(1, 7, 'Rabies'),
(2, 11, 'Distemper'),
(3, 12, 'Feline Immunodeficiency Virus'),
(4, 30, 'Canine Parainfluenza'),
(5, 12, 'Feline Calicivirus'),
(6, 23, 'Canine Distemper'),
(7, 24, 'Feline Panleukopenia'),
(8, 25, 'Canine Adenovirus'),
(9, 26, 'Feline Respiratory Virus'),
(10, 27, 'Canine Coronavirus'),
(11, 28, 'Feline Bordetella'),
(12, 29, 'Canine Rabies');


-- اطلاعات دامپزشکان
INSERT INTO veterinarian (specialty, license_number, crew_id)
VALUES
('Ophthalmology', '8897654321', '1'),
('Dermatology', '8897654322', '4'),
('Neurology', '8897654324', '7'),
('Oncology', '8897654326', '10'),
('Orthopedics', '8897654329', '13');

-- اطلاعات پرستاران
INSERT INTO nurse (responsibilities, crew_id)
VALUES
('Assisting in Surgeries and Procedures', '2'),
('Monitoring vital signs and administering medications', '5'),
('Providing post-operative care and instructions to pet owners', '8'),
('Maintaining cleanliness and sterilization of medical equipment', '11');

-- nurse_id Dropped چون crew_id داریم

ALTER TABLE nurse
DROP COLUMN nurse_id;


-- اطلاعات کارمندان پذیرش
INSERT INTO receptionist(duties, crew_id)
VALUES
('Greeting Clients, Scheduling Appointments, Answering Phone Calls, Client Communication', '3'),
('Greeting clients and handling check-ins/check-outs', '6'),
('Coordinating with veterinarians and medical staff', '9'),
('Assisting clients with form completions and documentation', '12');

-- اطلاعات recieptionist_id حذف شد چون vrew_id داریم دیگه!

ALTER TABLE receptionist
DROP COLUMN receptionist_id;

-- اطلاعات پرونده پزشکی 
INSERT INTO medical_record (treatment_date, treatment_type, treatment_details, animal_id, vet_id)
VALUES
('2024-11-10', 'Checkup', 'Routine checkup with vaccination', 11, 1),
('2024-11-11', 'Surgery', 'Minor surgery for sterilization', 7, 1),
('2024-02-15', 'Vaccination', 'Annual rabies vaccination', 12, 4),
('2024-02-16', 'Dental Cleaning', 'Routine dental check and cleaning', 23, 7),
('2024-03-10', 'Surgery', 'Spaying procedure', 24, 10),
('2024-03-12', 'Checkup', 'General health examination', 25, 13),
('2024-04-05', 'Emergency Care', 'Injury treatment after accident', 26, 10),
('2024-04-18', 'Behavior Training', 'Aggression management sessions', 27, 7),
('2024-05-20', 'Nail Clipping', 'Regular nail trimming', 28, 4),
('2024-05-22', 'Bathing', 'Full body grooming and bathing', 29, 1),
('2024-06-10', 'Vaccination Booster', 'Booster dose for initial vaccination', 30, 4),
('2024-06-15', 'Health Screening', 'Comprehensive health screening', 31, 7),
('2024-06-20', 'Allergy Testing', 'Testing for common pet allergens', 32, 10);

-- وت آیدی رو از خارجی بودن دراوردم و از جدول دامپزشک مقادیر کرو آیدی رو با نام vet_id وارد دو جدول ملاقات و پرونده پزشکی کردم
ALTER TABLE medical_record
DROP FOREIGN KEY medical_record_ibfk_2;

ALTER TABLE appoinment
DROP FOREIGN KEY appoinment_ibfk_2;

ALTER TABLE veterinarian
DROP COLUMN vet_id;

ALTER TABLE appointment
ADD CONSTRAINT fk_appointment_vet
FOREIGN KEY (vet_id) REFERENCES veterinarian(crew_id)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE medical_record
ADD CONSTRAINT fk_medicalrecord_vet
FOREIGN KEY (vet_id) REFERENCES veterinarian(crew_id)
ON DELETE CASCADE ON UPDATE CASCADE;


-- قرار ملاقات
INSERT INTO appointment (appoinment_id, animal_id, date, time, record_id)
VALUES
(769, 7, '2024-11-12', '10:00:00', 10),
(888, 11, '2024-11-13', '08:30:00', 9),
(770, 7, '2024-02-16', '11:00:00', 10),
(889, 11, '2024-02-17', '09:30:00', 9),
(890, 12, '2024-03-11', '14:00:00', 33),
(891, 23, '2024-03-13', '10:30:00', 34),
(892, 24, '2024-04-06', '16:00:00', 35),
(893, 27, '2024-04-19', '13:45:00', 38),
(894, 28, '2024-05-21', '08:15:00', 39),
(895, 29, '2024-05-23', '15:30:00', 40),
(896, 30, '2024-06-11', '12:00:00', 41),
(897, 32, '2024-06-16', '10:45:00', 43);

-- پرداختی
INSERT INTO payment (description, amount, payment_time, payment_date, item_id, parent_id, service_id)
VALUES
('Payment for Dog Food and Vaccination', 20000.00, '12:00:00', '2024-11-14', 1, 1, 1),
('Payment for Bandages and Grooming', 40000.00, '15:00:00', '2024-11-14', 2, 3, 2),
('Payment for Cat Litter and Dental Cleaning', 25000.00, '10:00:00', '2024-02-17', 3, 4, 3),
('Payment for Thermometer and Surgery', 45000.00, '11:30:00', '2024-03-12', 4, 5, 4),
('Payment for Leash and Checkup', 22000.00, '14:15:00', '2024-03-14', 5, 6, 5),
('Payment for Collar and Emergency Care', 20000.00, '16:45:00', '2024-04-07', 6, 7, 6),
('Payment for Bird Seed and Behavior Training', 28000.00, '09:30:00', '2024-04-20', 7, 8, 7),
('Payment for Fish Tank Cleaner and Nail Clipping', 27000.00, '12:00:00', '2024-05-22', 8, 9, 8),
('Payment for Hamster Wheel and Bathing', 31000.00, '13:30:00', '2024-05-24', 9, 10, 9),
('Payment for Rabbit Hutch and Vaccination Booster', 52000.00, '10:45:00', '2024-06-12', 10, 11, 10),
('Payment for Reptile Heat Lamp and Health Screening', 29000.00, '15:00:00', '2024-06-17', 11, 12, 11),
('Payment for Aquarium Filter and General Services', 35000.00, '11:15:00', '2024-07-01', 12, 13, 12);

-- این ستون را حذف کردم اضافی بود
ALTER TABLE work_hours 
DROP COLUMN employee_id;

-- ساعت کاری
INSERT INTO work_hours (work_id, work_date, shift_type, start_time, end_time) 
VALUES 
(1, '2024-11-01', 'روز', '08:00:00', '16:00:00'), 
(2, '2024-11-02', 'شب', '20:00:00', '04:00:00'),
(3, '2024-07-01', 'روز', '08:00:00', '16:00:00'), 
(4, '2024-07-02', 'شب', '20:00:00', '04:00:00'),
(5, '2024-07-03', 'روز', '08:30:00', '16:30:00'),
(6, '2024-07-04', 'شب', '20:30:00', '04:30:00'),
(7, '2024-07-05', 'روز', '09:00:00', '17:00:00'),
(8, '2024-07-06', 'شب', '21:00:00', '05:00:00'),
(9, '2024-07-07', 'روز', '07:30:00', '15:30:00'),
(10, '2024-07-08', 'شب', '19:30:00', '03:30:00'),
(11, '2024-07-09', 'روز', '08:15:00', '16:15:00'),
(12, '2024-07-10', 'شب', '20:45:00', '04:45:00');


-- کار می‌کند
INSERT INTO works (crew_id, work_id) 
VALUES 
(1, 1),(2, 2),(4, 3),(5, 4),(6, 5),(7, 6),(8, 7),(9, 8),(10, 9),(11, 10),(12, 11),(13, 12);

-- حقوق
INSERT INTO salary (hourly_rate, payment_date, payment_period, working_hours, overtime_hours, overtime_rate, deductions)
VALUES (25.00, '2024-11-30', 'ماهانه', 160, 10, 35.00, 0),
(30.00, '2024-07-31', 'ماهانه', 160, 12, 40.00, 100),
(28.50, '2024-08-31', 'ماهانه', 160, 10, 35.00, 150),
(32.00, '2024-09-30', 'ماهانه', 160, 8, 38.00, 120),
(29.00, '2024-10-31', 'ماهانه', 160, 15, 45.00, 200),
(31.50, '2024-11-30', 'ماهانه', 160, 9, 42.00, 180),
(27.00, '2024-12-31', 'ماهانه', 160, 11, 37.00, 130),
(33.00, '2025-01-31', 'ماهانه', 160, 7, 39.00, 160),
(26.50, '2025-02-28', 'ماهانه', 160, 14, 44.00, 170),
(34.00, '2025-03-31', 'ماهانه', 160, 13, 41.00, 190),
(25.00, '2025-04-30', 'ماهانه', 160, 10, 35.00, 140);

-- برای حقوق کسورات اد کردم
UPDATE salary
SET deductions = 350  
WHERE salary_id = 1;

-- کسورات
INSERT INTO deductions (deduction_id, salary_id, deduction_type, amount)
VALUES 
(1, 1, 'مالیات', 200),  
(2, 1, 'بیمه', 150),
(3, 2, 'مالیات', 50),  
(4, 2, 'بیمه', 50),
(5, 3, 'مالیات', 150),  
(6, 4, 'بیمه', 70),
(7, 4, 'مالیات', 50),  
(8, 5, 'بیمه', 200),
(9, 6, 'مالیات', 180),  
(10, 7, 'بیمه', 130),
(11, 8, 'مالیات', 90),  
(12, 8, 'بیمه', 70),
(13, 9, 'بیمه', 100),
(14, 9, 'بیمه', 70),
(15, 10, 'بیمه', 190),
(16, 11, 'بیمه', 80),
(17, 11, 'بیمه', 60);

-- خرید
INSERT INTO purchase(item_id, parent_id)
VALUES
(1, 1),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10),
(10, 11),
(11, 12),
(12, 13);

-- نسخه
INSERT INTO prescription (prescription_id, record_id, dosage, drug_type, quantity, instructions)
VALUES 
(1, 10, '50mg', 'Antibiotic', 30, 'Take one tablet twice a day after meals'),
(2, 9, '5mg', 'Painkiller', 20, 'Take one tablet every 4 hours if needed'),
(3, 9, '100mg', 'Antibiotic', 20, 'Administer twice daily after meals'),
(4, 10, '10ml', 'Vaccine', 1, 'Inject subcutaneously as per schedule'),
(5, 33, '5mg', 'Painkiller', 15, 'Give once every 6 hours as needed'),
(6, 34, '2ml', 'Steroid', 10, 'Inject intramuscularly once daily'),
(7, 35, '250mg', 'Antibiotic', 25, 'Administer orally every 8 hours'),
(8, 36, '50mg', 'Anti-inflammatory', 30, 'Give once daily with food'),
(9, 37, '20mg', 'Antibiotic', 10, 'Inject intravenously as directed'),
(10, 40, '500mg', 'Antibiotic', 40, 'Administer twice daily after meals'),
(11, 41, '15mg', 'Painkiller', 20, 'Give every 4 hours as needed'),
(12, 42, '100ml', 'Antiseptic', 5, 'Use for cleaning wounds twice daily');


