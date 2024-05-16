SELECT p.name, p.address_number, p.address_street_name from person p 
JOIN interview i on p.id = i.person_id
WHERE address_street_name = "Franklin Ave"
ORDER BY address_number DESC
LIMIT 1 
OFFSET 2