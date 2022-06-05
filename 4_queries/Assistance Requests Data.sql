-- SELECT teachers.teacher_name, student.student_name, assignment.assignment_name, duration
-- FROM assistance_requests
-- JOIN teacher_name.teachers, student_name.student, assignment_name.assignment
-- WHERE completed_at - started_at = duration
-- ORDER BY duration

SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (completed_at-started_at) as duration
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY duration;