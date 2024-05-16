-- Buscar la lista de todas las personas
-- que NO están asociadas al gimnasio Get-Fit-Now

SELECT p.name,g.membership_start_date FROM  person p
LEFT JOIN get_fit_now_member g on p.id = g.person_id
where g.membership_start_date IS NULL