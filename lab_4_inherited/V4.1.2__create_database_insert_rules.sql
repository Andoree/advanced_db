CREATE OR REPLACE RULE redirect_insert_to_child_1
AS ON INSERT TO public.inheritance_hub
	WHERE NEW.id >= 0 and NEW.id <= 9999
DO INSTEAD 
	INSERT INTO public.inherited_child_1 VALUES(NEW.id, NEW.text_column);

CREATE OR REPLACE RULE redirect_insert_to_child_2
AS ON INSERT TO public.inheritance_hub
	WHERE NEW.id >= 10000 and NEW.id <= 19999
DO INSTEAD 
	INSERT INTO public.inherited_child_2 VALUES(NEW.id, NEW.text_column);

CREATE OR REPLACE RULE redirect_insert_to_child_3
AS ON INSERT TO public.inheritance_hub
	WHERE NEW.id >= 20000 and NEW.id <= 29999
DO INSTEAD 
	INSERT INTO public.inherited_child_3 VALUES(NEW.id, NEW.text_column);

CREATE OR REPLACE RULE redirect_insert_to_child_4
AS ON INSERT TO public.inheritance_hub
	WHERE NEW.id >= 30000 and NEW.id <= 39999
DO INSTEAD 
	INSERT INTO public.inherited_child_4 VALUES(NEW.id, NEW.text_column);

CREATE OR REPLACE RULE redirect_insert_to_child_5
AS ON INSERT TO public.inheritance_hub
	WHERE NEW.id >= 40000 and NEW.id <= 49999
DO INSTEAD 
	INSERT INTO public.inherited_child_5 VALUES(NEW.id, NEW.text_column);

CREATE OR REPLACE RULE redirect_insert_to_child_6
AS ON INSERT TO public.inheritance_hub
	WHERE NEW.id >= 50000 and NEW.id <= 59999
DO INSTEAD 
	INSERT INTO public.inherited_child_6 VALUES(NEW.id, NEW.text_column);

CREATE OR REPLACE RULE redirect_insert_to_child_7
AS ON INSERT TO public.inheritance_hub
	WHERE NEW.id >= 60000 and NEW.id <= 69999
DO INSTEAD 
	INSERT INTO public.inherited_child_7 VALUES(NEW.id, NEW.text_column);

CREATE OR REPLACE RULE redirect_insert_to_child_8
AS ON INSERT TO public.inheritance_hub
	WHERE NEW.id >= 70000 and NEW.id <= 79999
DO INSTEAD 
	INSERT INTO public.inherited_child_8 VALUES(NEW.id, NEW.text_column);

CREATE OR REPLACE RULE redirect_insert_to_child_9
AS ON INSERT TO public.inheritance_hub
	WHERE NEW.id >= 80000 and NEW.id <= 89999
DO INSTEAD 
	INSERT INTO public.inherited_child_9 VALUES(NEW.id, NEW.text_column);

CREATE OR REPLACE RULE redirect_insert_to_child_10
AS ON INSERT TO public.inheritance_hub
	WHERE NEW.id >= 90000
DO INSTEAD 
	INSERT INTO public.inherited_child_10 VALUES(NEW.id, NEW.text_column);


