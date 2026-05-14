-- Vista que lista estudiantes que necesitan reunión de seguimiento
-- Un estudiante necesita reunión si su promedio es menor a 80
-- o si nunca ha tenido una reunión registrada (last_meeting es NULL)
-- Esta vista simplifica las consultas del equipo académico
CREATE VIEW need_meeting AS
SELECT name
FROM students
WHERE average_score < 80
   OR last_meeting IS NULL
   OR last_meeting < DATE_SUB(CURDATE(), INTERVAL 1 MONTH);
