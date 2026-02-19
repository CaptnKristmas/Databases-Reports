# my-ddl.sql

## DO NOT RENAME OR OTHERWISE CHANGE THE SECTION TITLES OR ORDER.
## The autograder will look for specific code sections. If it can't find them, you'll get a "0"

## I SUGGEST THAT YOU COPY SQL from Homework 6 into the various sections below.
## THEN complete the additional/new sections unique to Homework 7.

# Code specifications.
# 0. Where there a conflict between the problem statement in the google doc and this file, this file wins.
# 1. Complete all sections below.
# 2. Table names must MATCH EXACTLY to schemas provided.
# 3. Define primary keys in each table as appropriate.
# 4. Define foreign keys connecting tables as appropriate.
# 5. Assign ID to skills, people, roles manually (you must pick the ID number!)
# 6. Assign ID in the peopleskills and peopleroles automatically (use auto_increment)
# 7. Data types: ONLY use "int", "varchar(255)", "varchar(4096)" or "date" as appropriate.

# Section 1
# Drops all tables.  This section should be amended as new tables are added.

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS peopleskills;
DROP TABLE IF EXISTS peopleroles;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS skills;
DROP TABLE IF EXISTS roles;
SET FOREIGN_KEY_CHECKS=1;
commit;

# Section 2
# Create skills( id, name, description, tag, url, time_commitment)
# ID, name, description and tag cannot be NULL. Other fields can default to NULL.
# tag is a skill category grouping.  You can assign it based on your skill descriptions.
# time committment offers some sense of how much time was required (or will be required) to gain the skill.
# You can assign the skill descriptions.  Please be creative!

CREATE TABLE skills (
    skills_id int,
    skills_name varchar(256) NOT NULL,
    description varchar(4096) NOT NULL,
    tag varchar(256) NOT NULL,
    url varchar(256),
    time_commitment varchar(256),
    PRIMARY KEY (skills_id)
);

# Section 3
# Populate skills
# Populates the skills table with eight skills, their tag fields must exactly contain “Skill 1”, “Skill 2”, etc.
# You can assign skill names.  Please be creative!

INSERT INTO skills (skills_id, skills_name, description, tag, url, time_commitment)
VALUES
(1, 'Embedded Systems Programming', 'Developing firmware and control logic for microcontrollers such as Arduino and STM32.', 'Skill 1', 'https://www.arduino.cc', 'Approx. 95 hours'),
(2, 'UI/UX Design', 'Designing user-friendly and visually appealing interfaces using Figma and usability testing.', 'Skill 2', 'https://www.figma.com', 'Approx. 85 hours'),
(3, 'API Development', 'Building RESTful APIs with Node.js and Express to support client-server applications.', 'Skill 3', 'https://expressjs.com', 'Approx. 100 hours'),
(4, 'DevOps Fundamentals', 'Understanding CI/CD pipelines, containerization, and deployment automation using Docker and GitHub Actions.', 'Skill 4', 'https://www.docker.com', 'Approx. 120 hours'),
(5, 'Data Engineering', 'Building ETL pipelines and managing large datasets using Python, SQL, and Apache Airflow.', 'Skill 5', 'https://airflow.apache.org', 'Approx. 140 hours'),
(6, 'Digital Forensics', 'Recovering and analyzing data from digital devices to support investigations.', 'Skill 6', 'https://www.sans.org', 'Approx. 110 hours'),
(7, 'Blockchain Development', 'Creating and deploying smart contracts using Solidity and Ethereum frameworks.', 'Skill 7', 'https://ethereum.org', 'Approx. 160 hours'),
(8, 'Quantum Computing Basics', 'Understanding qubits, superposition, and quantum gates using IBM Qiskit.', 'Skill 8', 'https://qiskit.org', 'Approx. 130 hours');

# Section 4
# Create people( id,first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
# ID cannot be null, Last name cannot be null, date joined cannot be NULL.
# All other fields can default to NULL.

CREATE TABLE people (
    people_id int,
    people_first_name varchar(256),
    people_last_name varchar(256) NOT NULL,
    email varchar(256),
    linkedin_url varchar(256),
    headshot_url varchar(256),
    discord_handle varchar(256),
    brief_bio varchar(4096),
    date_joined date NOT NULL,
    PRIMARY KEY (people_id)
);

# Section 5
# Populate people with 10 people.
# Their last names must exactly be “Person 1”, “Person 2”, etc.
# Other fields are for you to assign.

INSERT INTO people (people_id, people_first_name, people_last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
VALUES
(1, 'Ava', 'Person 1', 'ava.person1@example.com', 'https://www.linkedin.com/in/avaperson1', 'https://example.com/headshots/ava.jpg', 'AvaP#1024', 'A software engineering student passionate about web accessibility and front-end frameworks.', '2024-01-15'),
(2, 'Liam', 'Person 2', 'liam.person2@example.com', 'https://www.linkedin.com/in/liamperson2', 'https://example.com/headshots/liam.jpg', 'LiamTech#2098', 'Focused on backend systems and API performance optimization using Node.js and PostgreSQL.', '2024-02-10'),
(3, 'Sophia', 'Person 3', 'sophia.person3@example.com', 'https://www.linkedin.com/in/sophiaperson3', 'https://example.com/headshots/sophia.jpg', 'SophiaDev#3021', 'A data scientist exploring deep learning models for healthcare analytics.', '2024-03-05'),
(4, 'Noah', 'Person 4', 'noah.person4@example.com', 'https://www.linkedin.com/in/noahperson4', 'https://example.com/headshots/noah.jpg', 'NoahNet#4420', 'Enthusiastic about cybersecurity and ethical hacking with experience in CTF competitions.', '2024-03-25'),
(5, 'Emma', 'Person 5', 'emma.person5@example.com', 'https://www.linkedin.com/in/emmaperson5', 'https://example.com/headshots/emma.jpg', 'EmmaCode#5583', 'UX researcher with a focus on improving user satisfaction through human-centered design.', '2024-04-18'),
(6, 'Oliver', 'Person 6', 'oliver.person6@example.com', 'https://www.linkedin.com/in/oliverperson6', 'https://example.com/headshots/oliver.jpg', 'OliverAI#6342', 'AI enthusiast working on natural language processing and conversational systems.', '2024-05-10'),
(7, 'Isabella', 'Person 7', 'isabella.person7@example.com', 'https://www.linkedin.com/in/isabellaperson7', 'https://example.com/headshots/isabella.jpg', 'BellaCloud#7124', 'Cloud infrastructure engineer specializing in AWS and container orchestration.', '2024-06-02'),
(8, 'Ethan', 'Person 8', 'ethan.person8@example.com', 'https://www.linkedin.com/in/ethanperson8', 'https://example.com/headshots/ethan.jpg', 'EthanData#8390', 'Database administrator passionate about query optimization and data normalization.', '2024-07-01'),
(9, 'Mia', 'Person 9', 'mia.person9@example.com', 'https://www.linkedin.com/in/miaperson9', 'https://example.com/headshots/mia.jpg', 'MiaML#9482', 'Research assistant exploring reinforcement learning for robotics control.', '2024-08-14'),
(10, 'Lucas', 'Person 10', 'lucas.person10@example.com', 'https://www.linkedin.com/in/lucasperson10', 'https://example.com/headshots/lucas.jpg', 'LucasDev#1010', 'Full-stack developer creating end-to-end applications with React and Flask.', '2024-09-20');

# Section 6
# Create peopleskills( id, skills_id, people_id, date_acquired )
# None of the fields can ba NULL. ID can be auto_increment.

CREATE TABLE peopleskills (
    peopleskills_id int AUTO_INCREMENT,
    skills_id int NOT NULL,
    people_id int NOT NULL,
    date_acquired date NOT NULL,
    PRIMARY KEY (peopleskills_id),
    FOREIGN KEY (skills_id) REFERENCES skills(skills_id),
    FOREIGN KEY (people_id) REFERENCES people(people_id)
);

# Section 7
# Populate peopleskills such that:
# Person 1 has skills 1,3,6;
# Person 2 has skills 3,4,5;
# Person 3 has skills 1,5;
# Person 4 has no skills;
# Person 5 has skills 3,6;
# Person 6 has skills 2,3,4;
# Person 7 has skills 3,5,6;
# Person 8 has skills 1,3,5,6;
# Person 9 has skills 2,5,6;
# Person 10 has skills 1,4,5;
# Note that no one has yet acquired skills 7 and 8.

INSERT INTO peopleskills (skills_id, people_id, date_acquired)
VALUES
-- Person 1
(1, 1, '2024-02-01'),
(3, 1, '2024-03-10'),
(6, 1, '2024-05-12'),

-- Person 2
(3, 2, '2024-02-22'),
(4, 2, '2024-03-15'),
(5, 2, '2024-04-05'),

-- Person 3
(1, 3, '2024-03-02'),
(5, 3, '2024-04-09'),

-- Person 5
(3, 5, '2024-04-25'),
(6, 5, '2024-06-01'),

-- Person 6
(2, 6, '2024-05-15'),
(3, 6, '2024-05-28'),
(4, 6, '2024-06-20'),

-- Person 7
(3, 7, '2024-06-05'),
(5, 7, '2024-07-10'),
(6, 7, '2024-08-01'),

-- Person 8
(1, 8, '2024-07-05'),
(3, 8, '2024-07-15'),
(5, 8, '2024-08-02'),
(6, 8, '2024-08-25'),

-- Person 9
(2, 9, '2024-08-10'),
(5, 9, '2024-08-20'),
(6, 9, '2024-09-05'),

-- Person 10
(1, 10, '2024-09-01'),
(4, 10, '2024-09-10'),
(5, 10, '2024-09-22'); 

# Section 8
# Create roles( id, name, sort_priority )
# sort_priority is an integer and is used to provide an order for sorting roles

CREATE TABLE roles (
    role_id int,
    role_name varchar(256),
    sort_priority int,
    PRIMARY KEY (role_id)
);

# Section 9
# Populate roles
# Designer, Developer, Recruit, Team Lead, Boss, Mentor
# Sort priority is assigned numerically in the order listed above (Designer=10, Developer=20, Recruit=30, etc.)

INSERT INTO roles (role_id, role_name, sort_priority)
VALUES
(1, 'Designer', 10),
(2, 'Developer', 20),
(3, 'Recruit', 30),
(4, 'Team Lead', 40),
(5, 'Boss', 50),
(6, 'Mentor', 60);


# Section 10
# Create peopleroles( id, people_id, role_id, date_assigned )
# None of the fields can be null.  ID can be auto_increment

CREATE TABLE peopleroles (
    peopleroles_id int AUTO_INCREMENT,
    people_id int NOT NULL,
    role_id int NOT NULL,
    date_assigned date NOT NULL,
    PRIMARY KEY (peopleroles_id),
    FOREIGN KEY (people_id) REFERENCES people(people_id),
    FOREIGN KEY (role_id) REFERENCES roles(role_id)
);

# Section 11
# Populate peopleroles
# Person 1 is Developer 
# Person 2 is Boss, Mentor
# Person 3 is Developer and Team Lead
# Person 4 is Recruit
# person 5 is Recruit
# Person 6 is Developer and Designer
# Person 7 is Designer
# Person 8 is Designer and Team Lead
# Person 9 is Developer
# Person 10 is Developer and Designer

INSERT INTO peopleroles (people_id, role_id, date_assigned)
VALUES
(1, 2, '2024-01-20'),
(2, 5, '2024-02-15'),
(2, 6, '2024-03-01'),
(3, 2, '2024-03-10'),
(3, 4, '2024-03-25'),
(4, 3, '2024-04-05'),
(5, 3, '2024-04-15'),
(6, 2, '2024-05-01'),
(6, 1, '2024-05-10'),
(7, 1, '2024-06-01'),
(8, 1, '2024-06-15'),
(8, 4, '2024-07-01'),
(9, 2, '2024-07-10'),
(10, 2, '2024-08-01'),
(10, 1, '2024-08-15');
COMMIT;