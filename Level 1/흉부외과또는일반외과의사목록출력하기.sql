SELECT 
    dr_name,
    dr_id,
    mcdp_cd,
    DATE_FORMAT(hire_ymd, "%Y-%M-%D") AS hire_ymd
FROM   
    doctor
WHERE
    mcdp_cd IN ("CS", "GS")
    -- mcdp_cd = "CS" || mcdp_cd = "GS"
ORDER BY
    hire_ymd DESC,
    dr_name ASC


-- SELECT DR_NAME
--     , DR_ID
--     , MCDP_CD
--     , TO_CHAR(HIRE_YMD, 'YYYY-MM-DD') AS HIRE_YMD
--     FROM DOCTOR
--     WHERE MCDP_CD IN ('CS', 'GS')
-- ORDER BY HIRE_YMD DESC, DR_NAME