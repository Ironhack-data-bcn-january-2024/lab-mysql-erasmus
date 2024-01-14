![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# Lab | Erasmus

Using the erasmus database, answer the following questions. The database has the following structure:
![Alt text](images_updated/image.png)

1. What is the average age of students who have outstanding grades? Provide the table with EXCELLENT if they have a 9 or 10, GOOD if they have 7 or 8, PASS if they have a 5 or 6, and FAIL if it is less than 5.
   ![Alt text](images_updated/image-1.png)
2. What is the average age of students by university?
   ![Alt text](images_updated/image-2.png)
3. What is the proportion of students who failed each subject? Provide the subject name, number of students who failed, total number of students, and the proportion of students who failed (as a percentage) for each subject. Display the results in descending order of the proportion of students who failed.
   ![Alt text](images_updated/image-3.png)
4. What is the average grade of students who have done an erasmus compared to those who have not?
   ![Alt text](images_updated/image-4.png)
5. For each university, identify the number of bachelor’s, master’s and PhD degrees awarded.Provide the university ID and name along with the count for each type of degree.
   ![Alt text](images_updated/image-5.png)
6. Which are the top 5 universities with the highest average ranking over the years? Provide the University ID, University Name, and Average Ranking.
   ![Alt text](images_updated/image-6.png)
7. Provide de id, the name, the last name, the name of the home university and the email of the 10 students that have been on an international agreement more times.
   ![Alt text](images_updated/image-7.png)
8. Make a query where, by modifying the international agreement number, you can identify the id and name of the student who did the exchange, the name of the home university and the name of the city where the exchange took place.
   ![Alt text](images_updated/image-8.png)
   Bonus: Now you can try to use procedures to parameterize the query. https://learn.microsoft.com/es-es/sql/t-sql/statements/create-procedure-transact-sql?view=sql-server-ver16
9. Find and display the number of universities offering each subject, along with the average grade for each subject.
   ![Alt text](images_updated/image-9.png)
10. Find the top 5 cities with the highest percentage of students who have outstanding grades (9 or 10). Provide the city, state, and the percentage of outstanding students for each city.
    ![Alt text](images_updated/image-10.png)
    ![Alt text](images_updated/image-11.png)
11. Compare the universities that send the most students with the universities that receive the most students. Do it in 2 queries.
    ![Alt text](images_updated/image-12.png)
    Bonus: Now you can try to join both queries by using “UNION ALL” operator.
    ![Alt text](images_updated/image-13.png)
12. Create a CTE that lists all students who have not signed any international agreements. Include the columns student_id, f_name, and l_name. Then, write a query to select all the rows from the CTE.
    ![Alt text](images_updated/image-14.png)
13. Write a SQL query to rank universities based on their international ranking for the year 2022 in descending order. Include the following columns in the result: uni_name, intl_ranking, and the rank assigned using the window function.
    ![Alt text](images_updated/image-15.png)
14. Write a query to find the students who have the highest and lowest grades for each subject. Include the columns subject_id, subj_name, student_id, f_name, l_name, and grades. Use window functions to rank the students within each subject based on their grades.
    ![Alt text](images_updated/image-16.png)
15. Create a CTE that calculates the total number of subjects offered by each university. Include the columns uni_name and total_subjects. Then, write a query to select all the rows from the CTE in descending order of total subjects.
    ![Alt text](images_updated/image-17.png)
