CREATE OR REPLACE RULE redirect_insert_to_child_1
AS ON INSERT TO public.inheritance_hub
	WHERE NEW.id BETWEEN 0 AND 9999
DO INSTEAD 
	INSERT INTO public.inherited_child_1 VALUES(NEW.id, NEW.text_column);

CREATE OR REPLACE RULE redirect_insert_to_child_2
AS ON INSERT TO public.inheritance_hub
	WHERE NEW.id BETWEEN 10000 AND 19999
DO INSTEAD 
	INSERT INTO public.inherited_child_2 VALUES(NEW.id, NEW.text_column);

CREATE OR REPLACE RULE redirect_insert_to_child_3
AS ON INSERT TO public.inheritance_hub
	WHERE NEW.id BETWEEN 20000 AND 29999
DO INSTEAD 
	INSERT INTO public.inherited_child_3 VALUES(NEW.id, NEW.text_column);

CREATE OR REPLACE RULE redirect_insert_to_child_4
AS ON INSERT TO public.inheritance_hub
	WHERE NEW.id BETWEEN 30000 AND 39999
DO INSTEAD 
	INSERT INTO public.inherited_child_4 VALUES(NEW.id, NEW.text_column);

CREATE OR REPLACE RULE redirect_insert_to_child_5
AS ON INSERT TO public.inheritance_hub
	WHERE NEW.id BETWEEN 40000 AND 49999
DO INSTEAD 
	INSERT INTO public.inherited_child_5 VALUES(NEW.id, NEW.text_column);

CREATE OR REPLACE RULE redirect_insert_to_child_6
AS ON INSERT TO public.inheritance_hub
	WHERE NEW.id BETWEEN 50000 AND 59999
DO INSTEAD 
	INSERT INTO public.inherited_child_6 VALUES(NEW.id, NEW.text_column);

CREATE OR REPLACE RULE redirect_insert_to_child_7
AS ON INSERT TO public.inheritance_hub
	WHERE NEW.id BETWEEN 60000 AND 69999
DO INSTEAD 
	INSERT INTO public.inherited_child_7 VALUES(NEW.id, NEW.text_column);

CREATE OR REPLACE RULE redirect_insert_to_child_8
AS ON INSERT TO public.inheritance_hub
	WHERE NEW.id BETWEEN 70000 AND 79999
DO INSTEAD 
	INSERT INTO public.inherited_child_8 VALUES(NEW.id, NEW.text_column);

CREATE OR REPLACE RULE redirect_insert_to_child_9
AS ON INSERT TO public.inheritance_hub
	WHERE NEW.id BETWEEN 80000 AND 89999
DO INSTEAD 
	INSERT INTO public.inherited_child_9 VALUES(NEW.id, NEW.text_column);

CREATE OR REPLACE RULE redirect_insert_to_child_10
AS ON INSERT TO public.inheritance_hub
	WHERE NEW.id >= 90000
DO INSTEAD 
	INSERT INTO public.inherited_child_10 VALUES(NEW.id, NEW.text_column);


