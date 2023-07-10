DROP TABLE COMMENT_LIKE;
DROP TABLE CATEGORY;
DROP TABLE COMMENTS;
DROP TABLE CATEGORYTYPE;

--DROP SEQUENCE SEQ_COMMENTS;
--DROP SEQUENCE SEQ_COMMENT_LIKE;
--DROP SEQUENCE SEQ_CATEGORY;
--DROP SEQUENCE SEQ_CATEGORYTYPE;

CREATE TABLE COMMENTS(
    COMMENT_CODE NUMBER,
    COMMENT_DESC VARCHAR2(1000) NOT NULL,
    COMMENT_DATE DATE DEFAULT SYSDATE NOT NULL,
    SECRET_COMMENT CHAR(1) DEFAULT 'N' CHECK(SECRET_COMMENT IN('N','Y')),
    COMMENT_URL VARCHAR2(500) NOT NULL,
    COMMENT_PARENT NUMBER,
    USER_ID VARCHAR2(200),
    POST_CODE NUMBER,
    MATCH_POST_CODE NUMBER
);

CREATE TABLE COMMENT_LIKE(
    COMMENT_LIKE_DATE DATE DEFAULT SYSDATE NOT NULL,
    COMMENT_LIKE_CODE NUMBER,
    COMMENT_CODE NUMBER,
    USER_ID VARCHAR2(200)
);

CREATE TABLE CATEGORY(
    CATEGORY_NAME VARCHAR2(200),
    CATEGORY_CODE NUMBER,
    USER_ID VARCHAR2(200),
    CATEGORY_TYPE NUMBER
);

CREATE TABLE CATEGORYTYPE(
    CT_NAME VARCHAR2(200),
    CT_CODE NUMBER
);

ALTER TABLE COMMENTS ADD CONSTRAINT COMMENT_CODE_PK PRIMARY KEY(COMMENT_CODE);
ALTER TABLE COMMENT_LIKE ADD CONSTRAINT COMMENT_LIKE_CODE_PK PRIMARY KEY(COMMENT_LIKE_CODE);
ALTER TABLE CATEGORY ADD CONSTRAINT CATEGORY_CODE_PK PRIMARY KEY(CATEGORY_CODE);
ALTER TABLE CATEGORYTYPE ADD CONSTRAINT CT_CODE_PK PRIMARY KEY(CT_CODE);

--ALTER TABLE COMMENTS ADD CONSTRAINT COMMENTS_USER_ID_FK FOREIGN KEY(USER_ID) REFERENCES USER_INFO;
--ALTER TABLE COMMENTS ADD CONSTRAINT COMMENTS_POST_CODE_FK FOREIGN KEY(POST_CODE) REFERENCES POST;
--ALTER TABLE COMMENTS ADD CONSTRAINT COMMENTS_MATCH_POST_CODE_FK FOREIGN KEY(MATCH_POST_CODE) REFERENCES MATCH_POST;
--ALTER TABLE COMMENT_LIKE ADD CONSTRAINT COMMENT_LIKE_COMMENT_CODE_FK FOREIGN KEY(COMMENT_CODE) REFERENCES COMMENTS;
--ALTER TABLE COMMENT_LIKE ADD CONSTRAINT COMMENT_LIKE_USER_ID_FK FOREIGN KEY(USER_ID) REFERENCES USER_INFO;
--ALTER TABLE CATEGORY ADD CONSTRAINT CATEGORY_USER_ID_FK FOREIGN KEY(USER_ID) REFERENCES USER_INFO;
--ALTER TABLE CATEGORY ADD CONSTRAINT CATEGORY_CATEGORY_TYPE_FK FOREIGN KEY(CATEGORY_TYPE) REFERENCES CATEGORYTYPE;

--CREATE SEQUENCE SEQ_COMMENTS;
--CREATE SEQUENCE SEQ_COMMENT_LIKE;
--CREATE SEQUENCE SEQ_CATEGORY;
--CREATE SEQUENCE SEQ_CATEGORYTYPE;