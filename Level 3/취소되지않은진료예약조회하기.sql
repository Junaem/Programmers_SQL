select A.APNT_NO, P.PT_NAME, P.PT_NO, A.MCDP_CD, D.DR_NAME, A.APNT_YMD
from APPOINTMENT A join DOCTOR D on A.MDDR_ID = D.DR_ID join PATIENT P on A.PT_NO = P.PT_NO
where A.MCDP_CD = "CS" and date_format(APNT_YMD, "%Y-%m-%d") = "2022-04-13" and APNT_CNCL_YN = "N"
order by APNT_YMD
