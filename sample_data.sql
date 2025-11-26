-- Insert yourself
INSERT INTO persons (person_id, first_name, last_name, birth_date, gender, notes)
VALUES (1, 'Dominque', 'Dan', '1985-06-16', 'male', 'Created the database');

-- Your kids
INSERT INTO persons (person_id, first_name, last_name, birth_date, gender)
VALUES 
    (2, 'Atlas', 'Dan', '2018-04-07', 'male'),
    (3, 'Laura', 'Dan', '2023-04-30', 'female');

-- Parent/child relationships
INSERT INTO parent_child (parent_id, child_id)
VALUES
    (1, 2),
    (1, 3);

-- Add your dad
INSERT INTO persons (person_id, first_name, last_name, birth_date, gender)
VALUES (4, 'Arnold', 'Dan', '1963-09-30', 'male');

INSERT INTO parent_child (parent_id, child_id) VALUES (4, 1);

-- Add your mom
INSERT INTO persons (person_id, first_name, last_name, birth_date, gender)
VALUES (5, 'Maxine', 'Chapman', '19XX-XX-XX', 'female');

INSERT INTO parent_child (parent_id, child_id) VALUES (5, 1);
