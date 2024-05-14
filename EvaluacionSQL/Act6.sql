-- Act6 --

SELECT count(membership_status) AS Category FROM get_fit_now_member 
GROUP BY membership_status
ORDER BY Category ASC;