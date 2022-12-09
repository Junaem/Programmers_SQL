SELECT REST_INFO.FOOD_TYPE, REST_INFO.REST_ID, REST_INFO.REST_NAME, REST_INFO.FAVORITES as FAVORITES
FROM
(SELECT FOOD_TYPE, MAX(FAVORITES) as max_fav
FROM REST_INFO
GROUP BY FOOD_TYPE) tmp 
INNER JOIN REST_INFO on tmp.FOOD_TYPE = REST_INFO.FOOD_TYPE AND tmp.max_fav = REST_INFO.FAVORITES
ORDER BY FOOD_TYPE DESC