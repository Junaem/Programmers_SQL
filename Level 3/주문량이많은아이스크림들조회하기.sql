select F.FLAVOR
from FIRST_HALF F join (
    select FLAVOR, sum(TOTAL_ORDER) as sum_total from JULY group by FLAVOR
) J on F.FLAVOR = J.FLAVOR
group by F.FLAVOR
order by (F.TOTAL_ORDER + J.sum_total) desc limit 3
