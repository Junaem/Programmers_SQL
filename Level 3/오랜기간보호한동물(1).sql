select I.NAME, I.DATETIME
from ANIMAL_INS I left join ANIMAL_OUTS O
on I.ANIMAL_ID = O.ANIMAL_ID
where O.ANIMAL_ID is Null
order by I.DATETIME
limit 3