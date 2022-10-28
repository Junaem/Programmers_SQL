select P.PRODUCT_CODE,
    sum(P.PRICE * O.SALES_AMOUNT) as SALES
from PRODUCT P join OFFLINE_SALE O
on O.PRODUCT_ID = P.product_ID
group by P.PRODUCT_CODE
order by SALES desc,
    PRODUCT_CODE asc