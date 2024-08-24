SELECT m.name, s.name, e.exam_seq, e.score, e.result
FROM manager m
         LEFT JOIN student s
                   on s.student_code = m.student_code
         LEFT JOIN exam e
                   on s.student_code = e.student_code
WHERE m.name = 'managerA';