USE VetClinic;
CREATE TABLE animal(
	animal_id INT AUTO_INCREMENT PRIMARY KEY, -- کلید اصلی که به‌طور خودکار افزایش می‌یابد
	name VARCHAR(100) NOT NULL,              -- نام حیوان (اجباری)
	breed VARCHAR(100) NOT NULL,            -- نژاد حیوان (مثلاً ژرمن شپرد)
	gender VARCHAR(10) NOT NULL,            -- جنسیت حیوان (مذکر یا مؤنث)
	species VARCHAR(50) NOT NULL,           -- گونه حیوان (مثلاً سگ، گربه)
	color VARCHAR(50),                      -- رنگ حیوان (اختیاری)
	birth_date DATE,                        -- تاریخ تولد حیوان
	weight DECIMAL(5, 2)                    -- وزن حیوان با دقت اعشار
);

CREATE TABLE pet_parent (
	parent_id INT AUTO_INCREMENT PRIMARY KEY, -- کلید اصلی و خودکار افزایش‌یابنده
	first_name VARCHAR(50) NOT NULL,        -- نام کوچک سرپرست
	last_name VARCHAR(50) NOT NULL,         -- نام خانوادگی سرپرست
	phone_number VARCHAR(20) NOT NULL,      -- شماره تلفن 
	visit_time TIME NOT NULL                -- زمان ملاقات
);

CREATE TABLE item(
	item_id INT AUTO_INCREMENT PRIMARY KEY, -- کلید اصلی که به‌طور خودکار افزایش می‌یابد
	name VARCHAR(100) NOT NULL,             -- نام قلم (مثل غذا، باند)
	type VARCHAR(50) NOT NULL,		-- نوع قلم (مثل دارو، تجهیزات)
	quantity INT NOT NULL,                  -- تعداد موجودی
	unit_price DECIMAL(10, 2) NOT NULL,     -- قیمت واحد
        quantity_purchased INT DEFAULT 0,       -- تعداد خریداری شده
	total_price DECIMAL(12, 2) AS (quantity_purchased * unit_price) STORED -- قیمت کل (محاسبه‌شده)
);

CREATE TABLE prescription (
    prescription_id INT NOT NULL,   -- شماره نسخه
    record_id INT NOT NULL,         -- کد پرونده از جدول record
    dosage VARCHAR(50) NOT NULL,    -- دز مصرف
    drug_type VARCHAR(100) NOT NULL, -- نوع دارو
    quantity INT NOT NULL,          -- تعداد دارو
    instructions TEXT,              -- دستورالعمل
    PRIMARY KEY (record_id, prescription_id)  -- کلید اصلی ترکیبی از record_id و prescription_id
);

CREATE TABLE service (
    service_id INT AUTO_INCREMENT PRIMARY KEY,      -- کلید اصلی که به‌طور خودکار افزایش می‌یابد
    service_name VARCHAR(255) NOT NULL,              -- نام خدمت (برای شناسایی خدمت)
    service_price DECIMAL(10, 2) NOT NULL,           -- قیمت هر خدمت
    start_date DATE NOT NULL,                        -- تاریخ شروع اعتبار
    end_date DATE,                                   -- تاریخ پایان اعتبار (اختیاری)
    quantity INT NOT NULL,                           -- تعداد هر خدمت
    total_cost DECIMAL(10, 2) AS (service_price * quantity) STORED  -- هزینه کل (محاسبه‌شده بر اساس تعداد خدمات)
);

CREATE TABLE vaccine(
    vaccine_id INT NOT NULL,
    animal_id INT NOT NULL,
    name VARCHAR(50),
    PRIMARY KEY (vaccine_id, animal_id)
);

CREATE TABLE receptionist (
    receptionist_id INT AUTO_INCREMENT PRIMARY KEY, -- کلید اصلی
    duties TEXT                                      -- وظایف
);

CREATE TABLE nurse (
    nurse_id INT AUTO_INCREMENT PRIMARY KEY,  -- کلید اصلی
    responsibilities TEXT                     -- مسئولیت‌ها
);

CREATE TABLE veterinarian (
    vet_id INT AUTO_INCREMENT PRIMARY KEY,    -- کلید اصلی
    specialty VARCHAR(100),                   -- تخصص
    license_number VARCHAR(50)                -- شماره پروانه
);

CREATE TABLE medical_record (
    record_id INT AUTO_INCREMENT PRIMARY KEY,  -- کلید اصلی
    treatment_date DATE,                       -- تاریخ درمان
    treatment_type VARCHAR(100),              -- نوع درمان
    treatment_details TEXT                    -- جزئیات درمان
);

CREATE TABLE salary (
    salary_id INT AUTO_INCREMENT PRIMARY KEY,        -- کلید اصلی و خودکار افزایش‌یابنده برای هر رکورد
    hourly_rate DECIMAL(10, 2) NOT NULL,             -- حقوق پایه ساعتی
    payment_date DATE NOT NULL,                      -- تاریخ پرداخت
    payment_period VARCHAR(50) NOT NULL,            -- دوره پرداخت (مثلاً ماهانه، هفتگی)
    total_payment DECIMAL(12, 2) AS (                -- مجموع پرداختی (محاسبه‌شده)
        hourly_rate * working_hours + (overtime_hours * overtime_rate) - deductions
    ) STORED,
    working_hours INT NOT NULL,                      -- تعداد ساعات کاری
    overtime_hours INT DEFAULT 0,                   -- تعداد ساعات اضافه‌کاری
    overtime_rate DECIMAL(10, 2) NOT NULL,           -- نرخ اضافه‌کاری
    deductions DECIMAL(10, 2) DEFAULT 0              -- کسورات قانونی
);

CREATE TABLE work_hours (
    work_id INT AUTO_INCREMENT PRIMARY KEY,        -- شناسه منحصر‌به‌فرد برای هر رکورد
    work_date DATE NOT NULL,                       -- تاریخ کاری
    shift_type ENUM('روز', 'شب', 'تعطیل') NOT NULL, -- نوع شیفت (روز، شب یا تعطیل)
    start_time TIME NOT NULL,                      -- ساعت شروع کار
    end_time TIME NOT NULL,                        -- ساعت پایان کار
    regular_hours DECIMAL(5, 2) AS (               -- ساعات کاری عادی
        LEAST(8, TIMESTAMPDIFF(MINUTE, start_time, end_time) / 60)
    ) STORED,
    overtime_hours DECIMAL(5, 2) AS (              -- ساعات اضافه‌کاری
        GREATEST(0, (TIMESTAMPDIFF(MINUTE, start_time, end_time) / 60) - 8)
    ) STORED,
    total_hours DECIMAL(5, 2) AS (                 -- مجموع ساعات کاری
        regular_hours + overtime_hours
    ) STORED
);


CREATE TABLE deductions (
	deduction_id INT NOT NULL,                   -- کد کسورات
    salary_id INT NOT NULL,                     -- کد حقوق
    deduction_type VARCHAR(100),                 -- نوع کسر
    amount DECIMAL(10, 2),                    -- مبلغ کسر
    PRIMARY KEY (deduction_id, salary_id)
);

CREATE TABLE purchase(
	item_id INT NOT NULL,  -- کد اقلام
    parent_id INT NOT NULL, -- کد سرپرست
    PRIMARY KEY (item_id, parent_id) -- کلید ترکیبی
);

CREATE TABLE appoinment(
	appoinment_id INT NOT NULL, -- کد قرار ملاقات
    animal_id INT NOT NULL, -- کد حیوان
    date DATE NOT NULL,  -- تاریخ 
    time TIME NOT NULL, -- زمان
    PRIMARY KEY (appoinment_id, animal_id) 
);

CREATE TABLE crew (
    crew_id INT AUTO_INCREMENT PRIMARY KEY,     -- شناسه خدمه (کلید اصلی و یکتا)
    first_name VARCHAR(50) NOT NULL,           -- نام کوچک
    last_name VARCHAR(50) NOT NULL,            -- نام خانوادگی
    birth_date DATE NOT NULL,   			   -- تاریخ تولد
	role VARCHAR(50) NOT NULL,                 -- سمت
    phone_number VARCHAR(20) NOT NULL,      -- شماره تلفن 
    education ENUM('دیپلم', 'کاردانی', 'کارشناسی', 'کارشناسی ارشد', 'دکتری') NOT NULL	 -- مدرک تحصیلی
);

CREATE TABLE Payment (
    payment_id INT AUTO_INCREMENT PRIMARY KEY, -- کلید اصلی پرداخت
    description TEXT NOT NULL,                 -- توضیحات (لیست خدمات ارائه‌شده)
    amount DECIMAL(10, 2) NOT NULL,            -- مبلغ پرداختی
    payment_time TIME NOT NULL,                -- زمان پرداخت
    payment_date DATE NOT NULL	               -- تاریخ پرداخت
);

CREATE TABLE works( 
    crew_id INT NOT NULL,  -- کد خدمه
    work_id INT NOT NULL,  -- شناسه
    PRIMARY KEY (crew_id, work_id)  -- کلید ترکیبی از crew_id و work_id
);
ALTER TABLE animal
ADD parent_id INT;

ALTER TABLE animal
ADD FOREIGN KEY (parent_id) REFERENCES pet_parent (parent_id);

ALTER TABLE payment
ADD item_id INT;

ALTER TABLE payment
ADD FOREIGN KEY (item_id) REFERENCES item(item_id);


ALTER TABLE payment
ADD parent_id INT;

ALTER TABLE payment
ADD FOREIGN KEY (parent_id) REFERENCES pet_parent (parent_id);


ALTER TABLE payment
ADD service_id INT;

ALTER TABLE payment
ADD FOREIGN KEY (service_id) REFERENCES service (service_id);


ALTER TABLE service
ADD appoinment_id INT;

ALTER TABLE service
ADD FOREIGN KEY (appoinment_id) REFERENCES appoinment (appoinment_id);


ALTER TABLE appoinment
ADD record_id INT;

ALTER TABLE appoinment
ADD FOREIGN KEY (record_id) REFERENCES medical_record (record_id);


ALTER TABLE appoinment
ADD vet_id INT;

ALTER TABLE appoinment
ADD FOREIGN KEY (vet_id) REFERENCES veterinarian  (vet_id);


ALTER TABLE work_hours
ADD salary_id INT;

ALTER TABLE work_hours
ADD FOREIGN KEY (salary_id) REFERENCES salary (salary_id);


ALTER TABLE medical_record
ADD animal_id INT;

ALTER TABLE medical_record
ADD FOREIGN KEY (animal_id) REFERENCES animal (animal_id);


ALTER TABLE medical_record
ADD vet_id INT;

ALTER TABLE medical_record
ADD FOREIGN KEY (vet_id) REFERENCES veterinarian (vet_id);


ALTER TABLE veterinarian
ADD crew_id INT;

ALTER TABLE veterinarian
ADD FOREIGN KEY (crew_id) REFERENCES crew (crew_id);

ALTER TABLE nurse
ADD crew_id INT;

ALTER TABLE nurse
ADD FOREIGN KEY (crew_id) REFERENCES crew (crew_id);

ALTER TABLE receptionist
ADD crew_id INT;

ALTER TABLE receptionist
ADD FOREIGN KEY (crew_id) REFERENCES crew (crew_id);

ALTER TABLE appoinment
ADD CONSTRAINT animal_id
FOREIGN KEY (animal_id) REFERENCES animal (animal_id);

ALTER TABLE prescription
ADD CONSTRAINT record_id
FOREIGN KEY (record_id) REFERENCES medical_record (record_id);

ALTER TABLE deductions
ADD CONSTRAINT salary_id
FOREIGN KEY (salary_id) REFERENCES salary (salary_id);

ALTER TABLE vaccine
ADD FOREIGN KEY (animal_id) REFERENCES animal (animal_id);

ALTER TABLE purchase
ADD CONSTRAINT item_id
FOREIGN KEY (item_id) REFERENCES item (item_id);

ALTER TABLE purchase
ADD CONSTRAINT parent_id
FOREIGN KEY (parent_id) REFERENCES pet_parent (parent_id);

ALTER TABLE works
ADD CONSTRAINT work_id
FOREIGN KEY (work_id) REFERENCES work_hours (work_id);