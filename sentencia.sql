select * from inhabitant
where state="friendly"
and job = "weaponsmith"
where job LIKE "%smith" and state ="friendly"
select personid from inhabitant where name = "Stranger"
select gold from inhabitant where name = "Stranger"
select * from item where owner is null
UPDATE item SET owner = 20 where owner is null
select *from inhabitant where state = "friendly" and (job = "dealer" or job= "merchant")