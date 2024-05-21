-- Act7 //Recien Terminado\\ --

SELECT p.name, g.membership_status, p.ssn, gc.check_in_date FROM person p
JOIN get_fit_now_member g ON p.id = g.person_id
JOIN get_fit_now_check_in gc ON gc.membership_id = g.id
WHERE gc.check_in_date LIKE '2018%'
GROUP BY p.id
ORDER BY g.membership_status ASC, p.ssn ASC