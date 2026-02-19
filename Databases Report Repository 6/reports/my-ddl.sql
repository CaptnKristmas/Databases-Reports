# my-ddl.sql

## DO NOT RENAME OR OTHERWISE CHANGE THE SECTION TITLES OR ORDER.
## The autograder will look for specific code sections. If it can't find them, you'll get a "0"

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
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS skills;
SET FOREIGN_KEY_CHECKS=1;

# Section 2
# Create skills( id,name, description, tag, url, time_commitment)
# ID, name, description and tag cannot be NULL. Other fields can default to NULL.
# tag is a skill category grouping.  You can assign it based on your skill descriptions.
# time committment offers some sense of how much time was required (or will be required) to gain the skill.
# You can assign the skill descriptions.  Please be creative!

CREATE TABLE skills (
    id int,
    name varchar(255) NOT NULL,
    description varchar(4096) NOT NULL,
    tag varchar(255) NOT NULL,
    url varchar(255),
    time_commitment varchar(255),
    PRIMARY KEY (id)
);


# Section 3
# Populate skills
# Populates the skills table with eight skills, their tag fields must exactly contain “Skill 1”, “Skill 2”, etc.
# You can assign skill names.  Please be creative!

INSERT INTO skills (id, name, description, tag, url, time_commitment) VALUES
(1, 'Python Programming', 'Ability to write Python scripts and analyze data using libraries like pandas.', 'Skill 1', 'https://www.python.org', 'Approx. 100 hours'),
(2, 'Web Development', 'Creating responsive websites using HTML, CSS, and JavaScript.', 'Skill 2', 'https://developer.mozilla.org', 'Approx. 120 hours'),
(3, 'Database Design', 'Designing normalized relational databases and writing SQL queries.', 'Skill 3', 'https://www.mysql.com', 'Approx. 90 hours'),
(4, 'Version Control with Git', 'Proficiency in using Git for collaborative development.', 'Skill 4', 'https://git-scm.com', 'Approx. 60 hours'),
(5, 'Data Visualization', 'Creating clear and informative visualizations using tools like Tableau or matplotlib.', 'Skill 5', 'https://matplotlib.org', 'Approx. 80 hours'),
(6, 'Cloud Computing', 'Deploying applications using AWS, Azure, or GCP.', 'Skill 6', 'https://aws.amazon.com', 'Approx. 130 hours'),
(7, 'Cybersecurity Basics', 'Understanding security principles and common attack vectors.', 'Skill 7', 'https://www.coursera.org/specializations/cyber-security', 'Approx. 110 hours'),
(8, 'Machine Learning', 'Understanding of supervised and unsupervised learning algorithms.', 'Skill 8', 'https://scikit-learn.org', 'Approx. 150 hours');

# Section 4
# Create people( id,first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
# ID cannot be null, Last name cannot be null, date joined cannot be NULL.
# All other fields can default to NULL.

CREATE TABLE people (
    id int,
    first_name varchar(255),
    last_name varchar(255) NOT NULL,
    email varchar(255),
    linkedin_url varchar(255),
    headshot_url varchar(255),
    discord_handle varchar(255),
    brief_bio varchar(4096),
    date_joined date NOT NULL,
    PRIMARY KEY (id)
);

# Section 5
# Populate people with 10 people.
# Their last names must exactly be “Person 1”, “Person 2”, etc.
# Other fields are for you to assign.

INSERT INTO people (id, first_name, last_name, email, date_joined) VALUES
(1, 'Alice', 'Person 1', 'alice1@example.com', '2023-01-05'),
(2, 'Bob', 'Person 2', 'bob2@example.com', '2023-01-06'),
(3, 'Charlie', 'Person 3', 'charlie3@example.com', '2023-01-07'),
(4, 'Diana', 'Person 4', 'diana4@example.com', '2023-01-08'),
(5, 'Ethan', 'Person 5', 'ethan5@example.com', '2023-01-09'),
(6, 'Fiona', 'Person 6', 'fiona6@example.com', '2023-01-10'),
(7, 'George', 'Person 7', 'george7@example.com', '2023-01-11'),
(8, 'Hannah', 'Person 8', 'hannah8@example.com', '2023-01-12'),
(9, 'Ian', 'Person 9', 'ian9@example.com', '2023-01-13'),
(10, 'Julia', 'Person 10', 'julia10@example.com', '2023-01-14');

# Section 6
# Create peopleskills( id, skills_id, people_id, date_acquired )
# None of the fields can ba NULL. ID can be auto_increment.

CREATE TABLE peopleskills (
    id int AUTO_INCREMENT NOT NULL,
    skills_id int NOT NULL,
    people_id int NOT NULL,
    date_acquired date NOT NULL,
    FOREIGN KEY (skills_id) REFERENCES skills(id),
    FOREIGN KEY (people_id) REFERENCES people(id),
    PRIMARY KEY (id)
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

INSERT INTO peopleskills (skills_id, people_id, date_acquired) VALUES
(1,1,'2024-01-01'), (3,1,'2024-01-10'), (6,1,'2024-02-01'),
(3,2,'2024-02-05'), (4,2,'2024-02-15'), (5,2,'2024-02-25'),
(1,3,'2024-03-01'), (5,3,'2024-03-10'),
(3,5,'2024-03-20'), (6,5,'2024-03-30'),
(2,6,'2024-04-01'), (3,6,'2024-04-10'), (4,6,'2024-04-20'),
(3,7,'2024-05-01'), (5,7,'2024-05-10'), (6,7,'2024-05-20'),
(1,8,'2024-06-01'), (3,8,'2024-06-10'), (5,8,'2024-06-20'), (6,8,'2024-06-30'),
(2,9,'2024-07-01'), (5,9,'2024-07-10'), (6,9,'2024-07-20'),
(1,10,'2024-08-01'), (4,10,'2024-08-10'), (5,10,'2024-08-20');
COMMIT;
 

