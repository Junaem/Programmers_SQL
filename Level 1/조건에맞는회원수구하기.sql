SELECT COUNT(*)
FROM user_info
WHERE YEAR(joined) = 2021 
    AND AGE >= 20
    AND AGE <= 29