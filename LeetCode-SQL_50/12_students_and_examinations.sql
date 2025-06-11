WITH students_cross_all_subjects AS
(
    SELECT student_id, student_name, subject_name
    FROM students
    CROSS JOIN subjects
),
non_zero_exam_count AS
(
    SELECT student_id, subject_name, COUNT(subject_name) AS attended_exams
    FROM examinations
    GROUP BY student_id, subject_name
)
SELECT 
    a.student_id, 
    a.student_name, 
    a.subject_name,
    ifnull(b.attended_exams, 0) AS attended_exams
FROM students_cross_all_subjects AS a
LEFT OUTER JOIN non_zero_exam_count AS b
    ON a.student_id = b.student_id
    AND a.subject_name = b.subject_name
ORDER BY a.student_id, a.subject_name;