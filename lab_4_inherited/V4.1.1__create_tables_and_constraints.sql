CREATE TABLE public.inheritance_hub(
	id INTEGER,
	text_column VARCHAR
);
CREATE TABLE public.inherited_child_1()
	INHERITS (public.inheritance_hub);
CREATE TABLE public.inherited_child_2()
	INHERITS (public.inheritance_hub);
CREATE TABLE public.inherited_child_3()
	INHERITS (public.inheritance_hub);
CREATE TABLE public.inherited_child_4()
	INHERITS (public.inheritance_hub);
CREATE TABLE public.inherited_child_5()
	INHERITS (public.inheritance_hub);
CREATE TABLE public.inherited_child_6()
	INHERITS (public.inheritance_hub);
CREATE TABLE public.inherited_child_7()
	INHERITS (public.inheritance_hub);
CREATE TABLE public.inherited_child_8()
	INHERITS (public.inheritance_hub);
CREATE TABLE public.inherited_child_9()
	INHERITS (public.inheritance_hub);
CREATE TABLE public.inherited_child_10()
	INHERITS (public.inheritance_hub);

ALTER TABLE public.inherited_child_1
	ADD CONSTRAINT partition_check CHECK(id >= 0 and id < 10000);
ALTER TABLE public.inherited_child_2
	ADD CONSTRAINT partition_check CHECK(id >= 10000 and id < 20000);
ALTER TABLE public.inherited_child_3
	ADD CONSTRAINT partition_check CHECK(id >= 20000 and id < 30000);
ALTER TABLE public.inherited_child_4
	ADD CONSTRAINT partition_check CHECK(id >= 30000 and id < 40000);
ALTER TABLE public.inherited_child_5
	ADD CONSTRAINT partition_check CHECK(id >= 40000 and id < 50000);
ALTER TABLE public.inherited_child_6
	ADD CONSTRAINT partition_check CHECK(id >= 50000 and id < 60000);
ALTER TABLE public.inherited_child_7
	ADD CONSTRAINT partition_check CHECK(id >= 60000 and id < 70000);
ALTER TABLE public.inherited_child_8
	ADD CONSTRAINT partition_check CHECK(id >= 70000 and id < 80000);
ALTER TABLE public.inherited_child_9
	ADD CONSTRAINT partition_check CHECK(id >= 80000 and id < 90000);
ALTER TABLE public.inherited_child_10
	ADD CONSTRAINT partition_check CHECK(id >= 90000);
