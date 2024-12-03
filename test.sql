-- Active: 1731632520587@@127.0.0.1@3306@chinook

SELECT * FROM customers;

SELECT `Address`, `Company`, `City` FROM customers;

SELECT * FROM customers WHERE `City` = 'Oslo'

SELECT * FROM customers WHERE `id` = 10

DELETE FROM customers WHERE id = 10

INSERT INTO customers (`Address`, `City`, `Company`, `Country`, `Email`, `Fax`, `FirstName`, `LastName`, `Phone`, `PostalCode`, `State`, `SupportRep_id`)
VALUES ('alokdia', 'magura', 'BTEb', 'bangladesh', 'md@gmail.com', '+1234567', 'Md Akash', 'Hosen', '01771444665', '7600', 'khulna', 9);


UPDATE albums set `Title`='Bigs twos' WHERE id=5

CREATE TABLE practices(
    `id` INT (10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR (100) NOT NULL,
    `email` VARCHAR (50) NULL,
    `salary` DECIMAL (20) UNSIGNED,
    `designation` VARCHAR (200) NOT NULL
)

INSERT INTO practices (`name`, `email`, `salary`, `designation`) VALUES
('John Doe', 'john.doe@example.com', 50000, 'Software Engineer'),
('Jane Smith', 'jane.smith@example.com', 60000, 'Project Manager'),
('Alex Johnson', 'alex.johnson@example.com', 55000, 'Data Analyst'),
('Emily Davis', 'emily.davis@example.com', 70000, 'Team Lead'),
('Michael Brown', 'michael.brown@example.com', 45000, 'Web Developer'),
('Sarah Wilson', 'sarah.wilson@example.com', 48000, 'Graphic Designer'),
('David Martinez', 'david.martinez@example.com', 52000, 'Marketing Specialist'),
('Emma Garcia', 'emma.garcia@example.com', 62000, 'HR Manager'),
('Daniel Thomas', 'daniel.thomas@example.com', 53000, 'Accountant'),
('Sophia Taylor', 'sophia.taylor@example.com', 58000, 'Content Writer'),
('Olivia Moore', 'olivia.moore@example.com', 60000, 'SEO Specialist'),
('William Martin', 'william.martin@example.com', 50000, 'Network Engineer'),
('Isabella Jackson', 'isabella.jackson@example.com', 65000, 'UI/UX Designer'),
('James White', 'james.white@example.com', 49000, 'IT Support Specialist'),
('Charlotte Harris', 'charlotte.harris@example.com', 54000, 'Data Scientist'),
('Benjamin Clark', 'benjamin.clark@example.com', 72000, 'DevOps Engineer'),
('Ava Lewis', 'ava.lewis@example.com', 56000, 'Software Tester'),
('Lucas Walker', 'lucas.walker@example.com', 47000, 'Social Media Manager'),
('Mia Hall', 'mia.hall@example.com', 61000, 'Recruitment Specialist'),
('Ethan Allen', 'ethan.allen@example.com', 75000, 'System Architect'),
('Harper Young', 'harper.young@example.com', 43000, 'Junior Developer'),
('Alexander King', 'alexander.king@example.com', 63000, 'Product Manager'),
('Amelia Wright', 'amelia.wright@example.com', 58000, 'Operations Manager'),
('Henry Scott', 'henry.scott@example.com', 67000, 'Cloud Engineer'),
('Ella Green', 'ella.green@example.com', 46000, 'Event Coordinator'),
('Noah Adams', 'noah.adams@example.com', 71000, 'AI Specialist'),
('Liam Baker', 'liam.baker@example.com', 50000, 'Technical Writer'),
('Emma Gonzalez', 'emma.gonzalez@example.com', 62000, 'Legal Advisor'),
('Logan Nelson', 'logan.nelson@example.com', 45000, 'Support Engineer'),
('Mason Perez', 'mason.perez@example.com', 49000, 'Research Analyst');
 