CREATE TABLE post (
	id NUMBER,
	postid NUMBER,
	postimg NVARCHAR2(1024),
	posttext NVARCHAR2(1024) 
);

ALTER TABLE post ADD CONSTRAINT post_id_pk PRIMARY KEY(id);