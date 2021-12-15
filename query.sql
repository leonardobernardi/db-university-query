-- Query 1.
select *
from students s
where year(s.date_of_birth) = 1990;

-- Query 2.
select *
from courses c 
where cfu > 10;


-- Query 3.
select *
from students s 
where datediff(current_date(),date_of_birth)/365 > 30;

-- Query 4.
select *
from degrees d 
where `level` = 'magistrale';


-- Query 5.
select count(d.id) as Dipartimenti 
from departments d;


-- Query 6.
select count(t.id) as 'Insegnanti senza numero' 
from teachers t 
where phone is null;

-- Query 7.
select count(id) as Iscritti, year(enrolment_date) as Anno
from students s 
group by year(enrolment_date)
order by year(enrolment_date);

-- Query 8.
select avg(vote) as 'Media Voto', e.id as 'ID Appello'
from exam_student es
join exams e on e.id = es.exam_id 
group by e.id;

-- Query 9.
select d2.name, count(d.id) as 'Numero corsi di Laurea' 
from `degrees` d
join departments d2 on d2.id = d.department_id 
group by d2.id;

-- Query 10.
select *
from students s 
join `degrees` d on d.id = s.degree_id 
where d.name = 'Corso di Laurea in Economia';

-- Query 11.
select *
from `degrees` d 
join departments d2 on d2.id = d.department_id 
where d.`level` = 'magistrale' and d2.name = 'Dipartimento di Neuroscienze';

-- Query 12.
select *
from courses c 
join course_teacher ct on ct.course_id = c.id 
join teachers t on ct.teacher_id = t.id 
where t.name = 'Fulvio' and t.surname = 'Amato';

-- Query 13.
select *
from students s 
join `degrees` d on d.id = s.degree_id 
join departments d2 on d2.id = d.department_id 
order by s.surname, s.name 



