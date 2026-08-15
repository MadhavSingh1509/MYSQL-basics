# Write your MySQL query statement below
SELECT
    s.student_id,
    s.student_name,
    sub.subject_name,
    COUNT(e.subject_name) AS attended_exams

FROM Students s

-- Create every possible student-subject combination
CROSS JOIN Subjects sub

-- Match exams attended by that particular student
-- for that particular subject
LEFT JOIN Examinations e
    ON s.student_id = e.student_id
    AND sub.subject_name = e.subject_name

-- One row for each student + subject
GROUP BY
    s.student_id,
    s.student_name,
    sub.subject_name

-- Required ordering
ORDER BY
    s.student_id,
    sub.subject_name;






    