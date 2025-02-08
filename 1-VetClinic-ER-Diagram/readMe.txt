The provided ER (Entity-Relationship) diagram represents the schema for managing a system, possibly related to a veterinary service, medical facility, or another complex system. Below is an explanation of the entities, relationships, and attributes in the ER diagram:

Entities and Their Attributes
حیوان (Animal):

Attributes: شناسه حیوان (Animal ID), جنس (Gender), وزن (Weight), گونه (Species), رنگ (Color), سن (Age), و غیره.
Represents animals registered in the system.
خدمات (Services):

Attributes: شناسه خدمات (Service ID), نوع خدمت (Service Type), هزینه خدمت (Service Cost), موجودیت (Availability), و غیره.
Represents the services offered by the system.
پرونده پزشکی (Medical Record):

Attributes: شناسه پرونده (Record ID), تاریخ ثبت (Registration Date), نوع بیماری (Disease Type), درمان‌ها (Treatments), و غیره.
Represents medical records associated with animals.
قرار ملاقات (Appointment):

Attributes: شناسه ملاقات (Appointment ID), تاریخ ملاقات (Appointment Date), زمان ملاقات (Appointment Time), وضعیت (Status), و غیره.
Represents appointments scheduled in the system.
نسخه (Prescription):

Attributes: شناسه نسخه (Prescription ID), تاریخ نسخه (Prescription Date), توضیحات (Description), داروها (Medications), و غیره.
Represents prescriptions issued for animals.
اقلام (Items):

Attributes: شناسه کالا (Item ID), نام کالا (Item Name), نوع کالا (Item Type), هزینه (Cost), و غیره.
Represents items available for purchase or use in the system.
پرداختی (Payment):

Attributes: شناسه پرداخت (Payment ID), نوع پرداخت (Payment Type), مبلغ (Amount), تاریخ (Date), و غیره.
Represents payment records for services, items, or other costs.
کارمند پذیرش (Receptionist):

Attributes: شناسه کارمند (Employee ID), نام (Name), نقش (Role), تلفن (Phone), و غیره.
Represents reception staff managing appointments and other administrative tasks.
دامپزشک (Veterinarian):

Attributes: شناسه دامپزشک (Veterinarian ID), نام (Name), تخصص (Specialization), و غیره.
Represents veterinarians providing medical care to animals.
پرستار (Nurse):

Attributes: شناسه پرستار (Nurse ID), نام (Name), وظایف (Duties), و غیره.
Represents nurses assisting veterinarians or working independently in the facility.
ساعات کاری (Working Hours):

Attributes: شناسه ساعات (Hours ID), ساعت شروع (Start Time), ساعت پایان (End Time), تاریخ (Date), و غیره.
Represents the working hours of employees.
حقوق (Salary):

Attributes: شناسه حقوق (Salary ID), مبلغ پایه (Base Salary), اضافه‌کاری (Overtime), کسورات (Deductions), و غیره.
Represents the salary details of employees.
کسورات (Deductions):

Attributes: شناسه کسورات (Deduction ID), نوع (Type), مبلغ (Amount), و غیره.
Represents deductions applied to salaries.

Relationships and Their Cardinality
حیوان - خدمات (Animal - Services):

Relationship: دارد (Has)
Cardinality: One animal can avail multiple services; each service can be associated with multiple animals (N:N).
حیوان - پرونده پزشکی (Animal - Medical Record):

Relationship: دارد (Has)
Cardinality: One animal can have multiple medical records, but each record is for a single animal (1:N).
پرونده پزشکی - نسخه (Medical Record - Prescription):

Relationship: ثبت می‌شود (Is Recorded)
Cardinality: One medical record can have multiple prescriptions; each prescription is linked to one medical record (1:N).
قرار ملاقات - حیوان (Appointment - Animal):

Relationship: دارد (Has)
Cardinality: One appointment can include one or multiple animals (N:1).
کارمند پذیرش، پرستار، دامپزشک - خدمات (Receptionist, Nurse, Veterinarian - Services):

Relationship: کار می‌کند (Works On)
Cardinality: Each service can involve multiple employees, and each employee can provide multiple services (M:N).
پرداختی - خرید (Payment - Purchase):

Relationship: پرداخت می‌شود (Is Paid)
Cardinality: Each payment is related to one or multiple purchases, and each purchase requires at least one payment (1:N).
ساعات کاری - پرستار، دامپزشک، کارمند پذیرش (Working Hours - Employees):

Relationship: کار می‌کند (Works)
Cardinality: Each employee can have multiple working hours records, and each record is associated with one employee (1:N).
حقوق - کسورات (Salary - Deductions):

Relationship: دارد (Has)
Cardinality: One salary can have multiple deductions; each deduction belongs to one salary (1:N).
