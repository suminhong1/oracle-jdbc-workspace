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

    COMMENT_CODE NUMBER,                                                    -- 댓글 SEQ 
    COMMENT_DESC VARCHAR2(1000) NOT NULL,                                   -- 댓글 내용
    COMMENT_DATE DATE DEFAULT SYSDATE NOT NULL,                             -- 댓글작성시각
    SECRET_COMMENT CHAR(1) DEFAULT 'N' CHECK(SECRET_COMMENT IN('N','Y')),   -- 비밀댓글(Y/N)
    COMMENT_URL VARCHAR2(500) NOT NULL,                                     -- 댓글사진, 동영상 URL
    COMMENT_PARENT NUMBER,                                                  -- 부모댓글 SEQ
    USER_ID VARCHAR2(200),                                                  -- 아이디 SEQ
    POST_CODE NUMBER,                                                       -- 게시글 SEQ
    MATCH_POST_CODE NUMBER                                                  -- 매칭글 SEQ
);

CREATE TABLE COMMENT_LIKE(----------------------------------------------------- 댓글 좋아요

    COMMENT_LIKE_DATE DATE DEFAULT SYSDATE NOT NULL, -- 댓글좋아요 누른시간
    COMMENT_LIKE_CODE NUMBER,                        -- 댓글좋아요 SEQ
    COMMENT_CODE NUMBER,                             -- 댓글 SEQ
    USER_ID VARCHAR2(200)                            -- 아이디
);

CREATE TABLE CATEGORY(---------------------------------------------------------- 카테고리

    CATEGORY_NAME VARCHAR2(200),    -- 카테고리(관심사) 이름
    CATEGORY_CODE NUMBER,           -- 카테고리(관심사) SEQ
    USER_ID VARCHAR2(200),          -- 아이디
    CATEGORY_TYPE NUMBER            -- 카테고리(관심사)분류 SEQ
);

CREATE TABLE CATEGORYTYPE(--------------------------------------- 카테고리(관심사)분류

    CT_NAME VARCHAR2(200),  -- 카테고리(관심사)분류이름/매칭게시판 이름
    CT_CODE NUMBER          -- 카테고리(관심사)분류 SEQ
);
------------------------------------------------------------------------------------------------------------------------------------ PRIMARY KEY

ALTER TABLE COMMENTS ADD CONSTRAINT COMMENT_CODE_PK PRIMARY KEY(COMMENT_CODE);                   -- 댓글 SEQ
ALTER TABLE COMMENT_LIKE ADD CONSTRAINT COMMENT_LIKE_CODE_PK PRIMARY KEY(COMMENT_LIKE_CODE);     -- 댓글좋아요 SEQ
ALTER TABLE CATEGORY ADD CONSTRAINT CATEGORY_CODE_PK PRIMARY KEY(CATEGORY_CODE);                 -- 카테고리(관심사) SEQ
ALTER TABLE CATEGORYTYPE ADD CONSTRAINT CT_CODE_PK PRIMARY KEY(CT_CODE);                         -- 카테고리(관심사)분류 SEQ

------------------------------------------------------------------------------------------------------------------------------------- FOREIGN KEY

--ALTER TABLE COMMENTS ADD CONSTRAINT COMMENTS_USER_ID_FK FOREIGN KEY(USER_ID) REFERENCES USER_INFO;                     -- 댓글 <- 유저정보(아이디)
--ALTER TABLE COMMENTS ADD CONSTRAINT COMMENTS_POST_CODE_FK FOREIGN KEY(SEQ_POST) REFERENCES POST;                       -- 댓글 <- 게시글(게시글SEQ)
--ALTER TABLE COMMENTS ADD CONSTRAINT COMMENTS_MATCH_POST_CODE_FK FOREIGN KEY(MATCH_POST_CODE) REFERENCES MATCHINGTEXT;  -- 댓글 <- 매칭글(매칭글SEQ)

--ALTER TABLE COMMENT_LIKE ADD CONSTRAINT COMMENT_LIKE_COMMENT_CODE_FK FOREIGN KEY(COMMENT_CODE) REFERENCES COMMENTS;    -- 댓글좋아요 <- 댓글(댓글SEQ)
--ALTER TABLE COMMENT_LIKE ADD CONSTRAINT COMMENT_LIKE_USER_ID_FK FOREIGN KEY(USER_ID) REFERENCES USER_INFO;             -- 댓글좋아요 <- 유저정보(아이디)

--ALTER TABLE CATEGORY ADD CONSTRAINT CATEGORY_USER_ID_FK FOREIGN KEY(USER_ID) REFERENCES USER_INFO;                     -- 카테고리 <- 유저정보(아이디)
--ALTER TABLE CATEGORY ADD CONSTRAINT CATEGORY_CT_CODE_FK FOREIGN KEY(CT_CODE) REFERENCES CATEGORYTYPE;                  -- 카테고리 <- 카테고리 분류(카테고리 분류 SEQ)

-------------------------------------------------------------------------- 시퀀스 생성

--CREATE SEQUENCE SEQ_COMMENTS;             -- 댓글 SEQ
--CREATE SEQUENCE SEQ_COMMENT_LIKE;         -- 댓글 좋아요 SEQ
--CREATE SEQUENCE SEQ_CATEGORY;             -- 카테고리 SEQ
--CREATE SEQUENCE SEQ_CATEGORYTYPE;         -- 카테고리(관심사)분류 SEQ