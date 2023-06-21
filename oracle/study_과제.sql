 -- 1. 
SELECT DEPARTMENT_NAME 학과명, CATEGORY 계열
FROM TB_DEPARTMENT;
-- 2.
SELECT DEPARTMENT_NAME||'의 정원은 '|| CAPACITY ||'명 입니다.' "학과별 정원"
FROM TB_DEPARTMENT;
-- 3.
SELECT STUDENT_NAME
FROM TB_STUDENT
WHERE DEPARTMENT_NO = '001' AND ABSENCE_YN = 'Y';
-- 4.
SELECT STUDENT_NAME, STUDENT_NO
FROM TB_STUDENT
WHERE STUDENT_NO IN ('A513079','A513090','A513091','A513110','A513119')
ORDER BY STUDENT_NAME DESC;
-- 5. 
SELECT DEPARTMENT_NAME, CATEGORY
FROM TB_DEPARTMENT
WHERE CAPACITY BETWEEN 20 AND 30;
-- 6.
SELECT PROFESSOR_NAME
FROM TB_PROFESSOR
WHERE DEPARTMENT_NO IS NULL;
-- 7.
SELECT STUDENT_NAME
FROM TB_STUDENT
WHERE DEPARTMENT_NO IS NULL;
-- 8. 
SELECT CLASS_NO
FROM TB_CLASS
WHERE PREATTENDING_CLASS_NO IS NOT NULL;
-- 9.
SELECT DISTINCT CATEGORY
FROM TB_DEPARTMENT;
-- 10.
SELECT STUDENT_NO,STUDENT_NAME,STUDENT_SSN ,STUDENT_ADDRESS
FROM TB_STUDENT
WHERE ENTRANCE_DATE LIKE '02%' AND STUDENT_ADDRESS LIKE '전주%' AND ABSENCE_YN = 'N';