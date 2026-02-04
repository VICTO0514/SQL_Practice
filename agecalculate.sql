USE testdb;

CREATE TABLE candidates(
candidate_id INT AUTO_INCREMENT PRIMARY KEY,
candidate_name VARCHAR(50),
date_of_birth DATE
);

INSERT INTO candidates (candidate_name, date_of_birth)
VALUES ('Ravi', '1998-05-10'),('Kumar', '2000-01-25');

ALTER TABLE candidates ADD COLUMN age TINYINT UNSIGNED;

ALTER TABLE candidates ADD COLUMN exact_age VARCHAR(50);

UPDATE candidates SET exact_age = CONCAT(
TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()), ' years ',
TIMESTAMPDIFF(MONTH, date_of_birth, CURDATE()) % 12, ' months ',
DATEDIFF( CURDATE(), 
DATE_ADD( date_of_birth, 
INTERVAL TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) YEAR )
), ' days'
);

SELECT * FROM candidates;
