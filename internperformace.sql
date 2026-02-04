CREATE TABLE intern_performace(
intern_id INT AUTO_INCREMENT PRIMARY KEY,
intern_name VARCHAR(50) NOT NULL,
batch VARCHAR(20) NOT NULL,
location ENUM('Chennai','Marupadi','Peravurani','Srivilliputhur','Surandai','Tenkasi','Vellore')NOT NULL,
performance ENUM('Top','Good','Average') NOT NULL
);

INSERT INTO intern_performace(intern_name,batch,location,performance)
VALUES ('Victoria','Jan-May 26','Srivilliputhur','Top'),
('Aishwarya','Jan-May 26','Tenkasi','Top'),
('Mayan','Jan-May 26','Vellore','Good'),
('Priya','Jan-May 26','Peravurani','Good'),
('Ram','Jan-May 26','Surandai','Good'),
('Suseetha','Jan-May 26','Marupadi','Top'),
('Megan','Jan-May 26','Chennai','Average');

SELECT * FROM intern_performace WHERE location='Chennai';

SELECT * FROM intern_performace WHERE location='Srivilliputhur' AND performance='Top';

SELECT * FROM intern_performace WHERE performance='Top' OR performance='Good';

SELECT * FROM intern_performace WHERE NOT location='Chennai';

SELECT * FROM intern_performace WHERE intern_name LIKE 'V%';
SELECT * FROM intern_performace WHERE batch LIKE '%May%';
SELECT * FROM intern_performace WHERE intern_name LIKE '%a';

SELECT * FROM intern_performace ORDER BY intern_name ASC;



