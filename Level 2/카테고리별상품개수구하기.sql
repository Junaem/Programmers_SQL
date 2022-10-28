SELECT substring(PRODUCT_CODE, 1, 2) as CATEGORY,
     count(*) as PRODUCT
FROM PRODUCT
group by substring(PRODUCT_CODE, 1, 2)
order by substring(PRODUCT_CODE, 1, 2)