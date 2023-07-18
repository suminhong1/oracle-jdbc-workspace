-- 테이블 삭제

DROP TABLE COMMENT_LIKE; -- 댓글좋아요
DROP TABLE CATEGORY;     -- 카테고리
DROP TABLE COMMENTS;     -- 댓글
DROP TABLE CATEGORYTYPE; -- 카테고리(관심사)분류

-- 시퀀스 삭제

--DROP SEQUENCE SEQ_COMMENTS;     -- 댓글
--DROP SEQUENCE SEQ_COMMENT_LIKE; -- 댓글좋아요 
--DROP SEQUENCE SEQ_CATEGORY;     -- 카테고리 
--DROP SEQUENCE SEQ_CATEGORYTYPE; -- 카테고리(관심사)분류

CREATE TABLE COMMENTS(  -------------------------------------------------------- 댓글

    CM_SEQ NUMBER,                                                     -- 댓글 SEQ 
    CM_DESC VARCHAR2(1000) NOT NULL,                                   -- 댓글 내용
    CM_DATE DATE DEFAULT SYSDATE NOT NULL,                             -- 댓글작성시각
    SECRET_CM CHAR(1) DEFAULT 'N' CHECK(SECRET_COMMENT IN('N','Y')),   -- 비밀댓글(Y/N)
    CM_URL VARCHAR2(500) NOT NULL,                                     -- 댓글사진, 동영상 URL
    CM_PARENT_SEQ NUMBER,                                              -- 부모댓글 SEQ
    USER_ID VARCHAR2(200),                                             -- 아이디 SEQ
    POST_SEQ NUMBER,                                                   -- 게시글 SEQ
    MT_SEQ NUMBER                                                      -- 매칭글 SEQ
);

CREATE TABLE COMMENT_LIKE(----------------------------------------------------- 댓글 좋아요

    CM_LIKE_DATE DATE DEFAULT SYSDATE NOT NULL, -- 댓글좋아요 누른시간
    CM_LIKE_SEQ NUMBER,                         -- 댓글좋아요 SEQ
    CM_SEQ NUMBER,                              -- 댓글 SEQ
    USER_ID VARCHAR2(200)                       -- 아이디
);

CREATE TABLE CATEGORY(---------------------------------------------------------- 카테고리

    CG_NAME VARCHAR2(200),    -- 카테고리(관심사) 이름
    CG_SEQ NUMBER,            -- 카테고리(관심사) SEQ
    USER_ID VARCHAR2(200),    -- 아이디
    CT_SEQ NUMBER             -- 카테고리(관심사)분류 SEQ
);

CREATE TABLE CATEGORYTYPE(--------------------------------------- 카테고리(관심사)분류

    CT_NAME VARCHAR2(200),  -- 카테고리(관심사)분류이름/매칭게시판 이름
    CT_SEQ NUMBER           -- 카테고리(관심사)분류 SEQ
);
------------------------------------------------------------------------------------------------------------------------------------ PRIMARY KEY

ALTER TABLE COMMENTS ADD CONSTRAINT CM_SEQ_PK PRIMARY KEY(CM_SEQ);                   -- 댓글 SEQ
ALTER TABLE COMMENT_LIKE ADD CONSTRAINT CM_LIKE_SEQ_PK PRIMARY KEY(CM_LIKE_SEQ);     -- 댓글좋아요 SEQ
ALTER TABLE CATEGORY ADD CONSTRAINT CG_SEQ_PK PRIMARY KEY(CG_SEQ);                   -- 카테고리(관심사) SEQ
ALTER TABLE CATEGORYTYPE ADD CONSTRAINT CT_SEQ_PK PRIMARY KEY(CT_SEQ);               -- 카테고리(관심사)분류 SEQ

------------------------------------------------------------------------------------------------------------------------------------- FOREIGN KEY

--ALTER TABLE COMMENTS ADD CONSTRAINT COMMENTS_USER_ID_FK FOREIGN KEY(USER_ID) REFERENCES USER_INFO;                        -- 댓글 <- 유저정보(아이디)
--ALTER TABLE COMMENTS ADD CONSTRAINT COMMENTS_POST_SEQ_FK FOREIGN KEY(POST_SEQ) REFERENCES POST;                           -- 댓글 <- 게시글(게시글SEQ)
--ALTER TABLE COMMENTS ADD CONSTRAINT COMMENTS_MT_SEQ_FK FOREIGN KEY(MT_SEQ) REFERENCES MATCHINGTEXT;                       -- 댓글 <- 매칭글(매칭글SEQ)

--ALTER TABLE COMMENT_LIKE ADD CONSTRAINT COMMENT_LIKE_CM_SEQ_FK FOREIGN KEY(CM_SEQ) REFERENCES COMMENTS;                   -- 댓글좋아요 <- 댓글(댓글SEQ)
--ALTER TABLE COMMENT_LIKE ADD CONSTRAINT COMMENT_LIKE_USER_ID_FK FOREIGN KEY(USER_ID) REFERENCES USER_INFO;                -- 댓글좋아요 <- 유저정보(아이디)

--ALTER TABLE CATEGORY ADD CONSTRAINT CATEGORY_USER_ID_FK FOREIGN KEY(USER_ID) REFERENCES USER_INFO;                        -- 카테고리 <- 유저정보(아이디)
--ALTER TABLE CATEGORY ADD CONSTRAINT CATEGORY_CT_SEQ_FK FOREIGN KEY(CT_SEQ) REFERENCES CATEGORYTYPE;                       -- 카테고리 <- 카테고리 분류(카테고리 분류 SEQ)

-------------------------------------------------------------------------- 시퀀스 생성

--CREATE SEQUENCE SEQ_COMMENTS;             -- 댓글 SEQ
--CREATE SEQUENCE SEQ_COMMENT_LIKE;         -- 댓글 좋아요 SEQ
--CREATE SEQUENCE SEQ_CATEGORY;             -- 카테고리 SEQ
--CREATE SEQUENCE SEQ_CATEGORYTYPE;         -- 카테고리(관심사)분류 SEQ