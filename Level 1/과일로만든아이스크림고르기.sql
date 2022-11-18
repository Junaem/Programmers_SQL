select F.FLAVOR
from FIRST_HALF F join ICECREAM_INFO I
on F.FLAVOR = I.FLAVOR
where I.INGREDIENT_TYPE = "fruit_based" and F.TOTAL_ORDER >= 3000
order by F.TOTAL_ORDER desc