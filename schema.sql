-- People table: each row is one person in your family
CREATE TABLE persons (
    person_id      INTEGER PRIMARY KEY,
    first_name     VARCHAR(50) NOT NULL,
    last_name      VARCHAR(50) NOT NULL,
    birth_date     DATE,
    death_date     DATE,
    gender         VARCHAR(10),
    notes          TEXT
);

-- Parent/child links (who is the parent of who)
CREATE TABLE parent_child (
    parent_id  INTEGER NOT NULL,
    child_id   INTEGER NOT NULL,
    relationship_type VARCHAR(20) DEFAULT 'biological',
    PRIMARY KEY (parent_id, child_id),
    FOREIGN KEY (parent_id) REFERENCES persons(person_id),
    FOREIGN KEY (child_id)  REFERENCES persons(person_id)
);

-- Optional: marriages or partnerships
CREATE TABLE marriages (
    marriage_id   INTEGER PRIMARY KEY,
    partner1_id   INTEGER NOT NULL,
    partner2_id   INTEGER NOT NULL,
    start_date    DATE,
    end_date      DATE,
    notes         TEXT,
    FOREIGN KEY (partner1_id) REFERENCES persons(person_id),
    FOREIGN KEY (partner2_id) REFERENCES persons(person_id)
);
