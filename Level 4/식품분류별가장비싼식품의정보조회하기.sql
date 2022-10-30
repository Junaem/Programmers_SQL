select P.CATEGORY, MAX_PRICE, PRODUCT_NAME
from (select CATEGORY, max(PRICE) as MAX_PRICE from FOOD_PRODUCT
                    group by CATEGORY 
                    having CATEGORY in ('과자', '국', '김치', '식용유')) tmp join FOOD_PRODUCT P 

where tmp.CATEGORY = P.CATEGORY and P.PRICE = tmp.MAX_PRICE
order by PRICE desc