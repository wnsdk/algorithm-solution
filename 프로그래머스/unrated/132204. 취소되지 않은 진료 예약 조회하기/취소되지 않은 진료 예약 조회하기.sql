SELECT
    A.APNT_NO
    , P.PT_NAME
    , P.PT_NO
    , D.MCDP_CD
    , D.DR_NAME
    , A.APNT_YMD
FROM
    PATIENT P
    , DOCTOR D
    , APPOINTMENT A
WHERE
    P.PT_NO = A.PT_NO
    AND D.DR_ID = A.MDDR_ID
    AND D.MCDP_CD = 'CS'
    AND APNT_CNCL_YN = 'N'
    AND TO_CHAR(A.APNT_YMD, 'YYYY-MM-DD') = '2022-04-13'
ORDER BY
    A.APNT_YMD