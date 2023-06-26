-- 1.
ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD';
SELECT STUDENT_NO 학번, STUDENT_NAME 이름, ENTRANCE_DATE 입학년도
FROM TB_STUDENT
WHERE DEPARTMENT_NO = '002'
ORDER BY ENTRANCE_DATE;
ALTER SESSION SET NLS_DATE_FORMAT = 'RR/MM/DD';
-- 2.
SELECT PROFESSOR_NAME,PROFESSOR_SSN
FROM TB_PROFESSOR
WHERE LENGTH(PROFESSOR_NAME) != 3;
-- 3.
SELECT PROFESSOR_NAME 교수이름
FROM TB_PROFESSOR;
-- 4.
SELECT SUBSTR(PROFESSOR_NAME,2)
FROM TB_PROFESSOR
WHERE LENGTH(PROFESSOR_NAME) != 2;
-- 5.
SELECT STUDENT_NO, STUDENT_NAME
FROM TB_STUDENT
WHERE 19 = MONTHS_BETWEEN(ENTRANCE_DATE,SUBSTR(STUDENT_SSN,0,6)/12);
-- 6.
SELECT TO_CHAR(TO_DATE('20201225','YYYYMMDD'),'DAY') "크리스마스" FROM DUAL;
-- 7.
SELECT 
TO_CHAR(TO_DATE('99/10/11','YY/MM/DD'),'YYYY"년"MM"월"DD"일"')값1,
TO_CHAR(TO_DATE('49/10/11','YY/MM/DD'),'YYYY"년"MM"월"DD"일"')값2,
TO_CHAR(TO_DATE('99/10/11','RR/MM/DD'),'YYYY"년"MM"월"DD"일"')값3,
TO_CHAR(TO_DATE('49/10/11','RR/MM/DD'),'YYYY"년"MM"월"DD"일"')값4
FROM DUAL;
-- 8.
SELECT STUDENT_NO,STUDENT_NAME
FROM TB_STUDENT
WHERE STUDENT_NO NOT LIKE 'A%';
-- 9.
SELECT ROUND(SUM(POINT)/8,1) 평점
FROM  TB_GRADE 
WHERE STUDENT_NO = 'A517178';
-- 10.
SELECT DEPARTMENT_NO 학과번호, COUNT(*)학생수
FROM TB_STUDENT
GROUP BY DEPARTMENT_NO
ORDER BY DEPARTMENT_NO;
-- 11.
SELECT COUNT(*)
FROM TB_STUDENT
WHERE COACH_PROFESSOR_NO IS NULL
GROUP BY COACH_PROFESSOR_NO;
-- 12.
SELECT SUBSTR(TERM_NO,1,4) 년도, POINT "년도 별 평점"
FROM TB_GRADE
GROUP BY TERM_NO
HAVING SUBSTR(TERM_NO,1,4);
-- 13.
SELECT DEPARTMENT_NO 학과코드명, COUNT(ABSENCE_YN)"휴학생 수"
FROM TB_STUDENT
WHERE ABSENCE_YN = 'Y'
GROUP BY DEPARTMENT_NO
ORDER BY DEPARTMENT_NO;
-- 14.
SELECT STUDENT_NAME , COUNT(STUDENT_NAME)
FROM TB_STUDENT
GROUP BY STUDENT_NAME
HAVING COUNT(STUDENT_NAME)>1
ORDER BY STUDENT_NAME;
-- 15.
SELECT SUBSTR(TERM_NO,1,4),SUBSTR(TERM_NO,5,6) ,POINT
FROM TB_GRADE
WHERE STUDENT_NO = 'A112113';