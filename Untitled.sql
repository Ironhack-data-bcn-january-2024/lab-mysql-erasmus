USE erasmus;

-- 1. What is the average age of students who have outstanding grades? 
-- Provide the table with EXCELLENT if they have a 9 or 10, GOOD if they have 7 
-- or 8, PASS if they have a 5 or 6, and FAIL if it is less than 5.

SELECT AVG(age) AS average_age
FROM (
    SELECT students.student_id,
           YEAR(NOW()) - YEAR(dob) - (DATE_FORMAT(NOW(), '%m%d') < DATE_FORMAT(dob, '%m%d')) AS age,
           CASE
               WHEN grades >= 9 THEN 'EXCELLENT'
               WHEN grades >= 7 THEN 'GOOD'
               WHEN grades >= 5 THEN 'PASS'
               ELSE 'FAIL'
           END AS category
    FROM grades
    JOIN students ON grades.student_id = students.student_id
) AS subquery
WHERE category = 'EXCELLENT';


-- 2. What is the average age of students by university?

	SELECT uni_name,
	AVG(YEAR(NOW()) - YEAR(dob) - (DATE_FORMAT(NOW(), '%m%d') < DATE_FORMAT(dob, '%m%d'))) AS md_age
    FROM students
		JOIN campus 
			ON students.campus_id = campus.campus_id
		JOIN university
			ON campus.university_id = university.university_id
	GROUP BY uni_name;


-- 3. What is the proportion of students who failed each subject?
-- Provide the subject name, number of students who failed, total number of students,
--  and the proportion of students who failed (as a percentage) for each subject. 
-- Display the results in descending order of the proportion of students who failed.

USE erasmus;
    
-- SELECT *,
-- SUM(count_grd) OVER (Partition 

  SELECT *,
  COUNT(subj_name) OVER(partition by category) AS count_grd
  FROM (
	SELECT subj_name,
			   CASE
				   WHEN grades >= 9 THEN 'EXCELLENT'
				   WHEN grades >= 7 THEN 'GOOD'
				   WHEN grades >= 5 THEN 'PASS'
				   ELSE 'FAIL'
			   END AS category
		FROM grades
			JOIN students 
				ON grades.student_id = students.student_id
			JOIN subjects
				ON grades.subject_id = subjects.subject_id
		) AS sub_table
ORDER BY subj_name;


-- 4. What is the average grade of students who have done an erasmus compared to those who have not



-- 5. For each university, identify the number of bachelor’s, master’s and PhD degrees awarded.
-- Provide the university ID and name along with the count for each type of degree.



-- 6. Which are the top 5 universities with the highest average ranking over the years? 
-- Provide the University ID, University Name, and Average Ranking. Alt text


-- 7. Provide de id, the name, the last name, the name of the home university and 
-- the email of the 10 students that have been on an international agreement more times.



