-- CREATE TABLE grades (
--     student_id bigint,
--     course_id bigint,
--     course varchar(30) NOT NULL,
--     grade varchar(5) NOT NULL,
-- PRIMARY KEY (student_id, course_id)
-- );

-- INSERT INTO grades
-- VALUES
--     (1, 1, 'Biology 2', 'F'),
--     (1, 2, 'English 11B', 'D'),
--     (1, 3, 'World History 11B', 'C'),
--     (1, 4, 'Trig 2', 'B');

-- CREATE TABLE grades_history (
--     student_id bigint NOT NULL,
--     course_id bigint NOT NULL,
--     change_time timestamp with time zone NOT NULL,
--     course varchar(30) NOT NULL,
--     old_grade varchar(5) NOT NULL,
--     new_grade varchar(5) NOT NULL,
-- PRIMARY KEY (student_id, course_id, change_time)
-- ); 

-- CREATE OR REPLACE FUNCTION record_if_grade_changed()
--     RETURNS trigger AS
-- $$
-- BEGIN
--     IF NEW.grade <> OLD.grade THEN
--     INSERT INTO grades_history (
--         student_id,
--         course_id,
--         change_time,
--         course,
--         old_grade,
--         new_grade)
--     VALUES
--         (OLD.student_id,
--          OLD.course_id,
--          now(),
--          OLD.course,
--          OLD.grade,
--          NEW.grade);
--     END IF;
--     RETURN NEW;
-- END;
-- $$ LANGUAGE plpgsql;


-- CREATE TRIGGER grades_update
--   AFTER UPDATE
--   ON grades
--   FOR EACH ROW
--   EXECUTE PROCEDURE record_if_grade_changed();

-- SELECT * FROM grades_history;

-- -- Check the grades
-- SELECT * FROM grades;

-- -- Update a grade
-- UPDATE grades
-- SET grade = 'C'
-- WHERE student_id = 1 AND course_id = 1;

CREATE TABLE purchases (
    purchase_id SERIAL PRIMARY KEY,
    user_id INT,
    amount NUMERIC,
    purchase_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE high_spenders (
    user_id INT PRIMARY KEY,
    first_spend_time TIMESTAMP
);  

INSERT INTO purchases(user_id, amount) VALUES (104, 7500);
INSERT INTO purchases(user_id, amount) VALUES (101, 6200);
INSERT INTO purchases(user_id,amount) VALUES (106,7000);
INSERT INTO purchases(user_id,amount) VALUES (107,9000);

CREATE OR REPLACE FUNCTION flag_high_spender()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.amount > 5000 THEN
        INSERT INTO high_spenders(user_id, first_spend_time)
        SELECT NEW.user_id, NEW.purchase_time
        WHERE NOT EXISTS (
            SELECT 1 FROM high_spenders WHERE user_id = NEW.user_id
        );
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_flag_high_spender
AFTER INSERT ON purchases
FOR EACH ROW
EXECUTE FUNCTION flag_high_spender();



SELECT * FROM purchases; 
SELECT * FROM high_spenders; 


















