CREATE TABLE post (
	id NUMBER,
	mergePost NUMBER,
	postimg NVARCHAR2(1024),
	posttext NVARCHAR2(1024) 
);

ALTER TABLE post ADD CONSTRAINT post_id_pk PRIMARY KEY(id);

COMMENT ON COLUMN post.id IS '포스트 식별번호';
COMMENT ON COLUMN post.mergePost IS '포스트 묶음번호(리뷰게시글 고유번호와 동일한 개념)';
COMMENT ON COLUMN post.postimg IS '포스트 이미지';
COMMENT ON COLUMN post.posttext IS '포스트 내용';

CREATE SEQUCNE post_seq;

SELECT * FROM post;