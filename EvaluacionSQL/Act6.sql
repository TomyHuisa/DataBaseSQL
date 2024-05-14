-- Act6 --

SELECT count(g.membership_status) AS CategoriaGold FROM get_fit_now_member g 
JOIN person p ON p.name = g.name
WHERE g.membership_status LIKE 'gold'
ORDER BY g.membership_status ASC;

--| 68 Miembros |--
-------------|

SELECT count(g.membership_status) AS CategoriaSilver FROM get_fit_now_member g 
JOIN person p ON p.name = g.name
WHERE g.membership_status LIKE 'silver'

--| 63 Miembros |--
-------------|

SELECT count(g.membership_status) AS CategoriaRegular FROM get_fit_now_member g 
JOIN person p ON p.name = g.name
WHERE g.membership_status LIKE 'regular'

--| 53 Miembros |--
-------------|
