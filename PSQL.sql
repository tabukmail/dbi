-- Drop table

-- DROP TABLE public.begina

CREATE TABLE public.begina (
	btreeid int4 NOT NULL,
	bval int4 NULL,
	CONSTRAINT begina_my_tree_fk FOREIGN KEY (btreeid) REFERENCES my_tree(id)
);


-- Drop table

-- DROP TABLE public.book

CREATE TABLE public.book (
	treeid int4 NOT NULL,
	tval int4 NOT NULL,
	CONSTRAINT book_my_tree_fk FOREIGN KEY (treeid) REFERENCES my_tree(id)
);


-- Drop table

-- DROP TABLE public.ledger

CREATE TABLE public.ledger (
	lid int4 NOT NULL,
	dt int4 NOT NULL,
	ct int4 NOT NULL,
	lv int4 NOT NULL,
	CONSTRAINT ledger_pk PRIMARY KEY (lid),
	CONSTRAINT ledger_my_tree_fk FOREIGN KEY (dt) REFERENCES my_tree(id),
	CONSTRAINT ledger_my_tree_fk_1 FOREIGN KEY (ct) REFERENCES my_tree(id)
);


-- Drop table

-- DROP TABLE public.my_tree

CREATE TABLE public.my_tree (
	id int4 NOT NULL,
	names varchar NOT NULL,
	left_key int4 NOT NULL,
	right_key int4 NOT NULL,
	levels int4 NOT NULL,
	parent_id int4 NOT NULL,
	CONSTRAINT my_tree_pk PRIMARY KEY (id)
);

