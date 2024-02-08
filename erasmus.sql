USE erasmus;

-- 1. What is the average age of students who have outstanding grades? 
-- Provide the table with EXCELLENT if they have a 9 or 10, GOOD if they 
-- have 7 or 8, PASS if they have a 5 or 6, and FAIL if it is less than 5.

SELECT category, AVG(age) AS average_age
FROM (
    SELECT students.student_id,
           YEAR(NOW()) - YEAR(dob) - (DATE_FORMAT(NOW(), "%m%d") < DATE_FORMAT(dob, "%m%d")) AS age,
           CASE
               WHEN grades >= 9 THEN "EXCELLENT"
               WHEN grades >= 7 THEN "GOOD"
               WHEN grades >= 5 THEN "PASS"
               ELSE "FAIL"
           END AS category
    FROM grades
    JOIN students ON grades.student_id = students.student_id
) AS subquery
WHERE category = "EXCELLENT";

-- 2. What is the average age of students by university?

select campus_id, AVG(age) AS average_age
from (
    select campus_id,
           year(now()) - year(dob) - (date_format(now(), "%m%d") < date_format(dob, "%m%d")) AS age
    from students
) as subquery
group by campus_id;

-- 3. 3. What is the proportion of students who failed each subject? 
-- Provide the subject name, number of students who failed, total number of 
-- students, and the proportion of students who failed (as a percentage) for 
-- each subject. Display the results in descending order of the proportion of 
-- students who failed.

SELECT
    subj_name,
    SUM(CASE WHEN category = 'FAIL' THEN 1 ELSE 0 END) AS num_failed,
    COUNT(*) AS total_students,
    (SUM(CASE WHEN category = 'FAIL' THEN 1 ELSE 0 END) / COUNT(*)) * 100 AS proportion_failed
FROM (
    SELECT
        subj_name,
        CASE
            WHEN grades >= 9 THEN 'EXCELLENT'
            WHEN grades >= 7 THEN 'GOOD'
            WHEN grades >= 5 THEN 'PASS'
            ELSE 'FAIL'
        END AS category
    FROM
        grades
    JOIN
        students ON grades.student_id = students.student_id
    JOIN
        subjects ON grades.subject_id = subjects.subject_id
) AS sub_table
GROUP BY
    subj_name
ORDER BY
    proportion_failed DESC;




