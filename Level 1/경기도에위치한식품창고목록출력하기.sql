SELECT warehouse_id, 
    warehouse_name, 
    address, 
    CASE WHEN freezer_yn IS NULL THEN 'N' ELSE freezer_yn END AS FREEZER_YN
FROM food_warehouse
where address LIKE "경기도%"