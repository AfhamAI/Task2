select s.student_id, s.student_name, su.subject_name, COUNT(e.subject_name) AS attended_exams from Students s cross join Subjects su left join Examinations e
on s.student_id = e.student_id and e.subject_name = su.subject_name
group by su.subject_name , s.student_id , s.student_name
ORDER BY s.student_id, su.subject_name;
