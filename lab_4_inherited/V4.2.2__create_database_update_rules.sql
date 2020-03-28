
CREATE OR REPLACE RULE redirect_update_to_child_1
AS ON UPDATE TO public.inheritance_hub
	WHERE NEW.id BETWEEN 0 and 9999
DO INSTEAD 
	(DELETE FROM public.inheritance_hub WHERE id=OLD.id AND text_column=OLD.text_column;
	INSERT INTO public.inherited_child_1 VALUES(NEW.id, NEW.text_column));

CREATE OR REPLACE RULE redirect_update_to_child_2
AS ON UPDATE TO public.inheritance_hub
	WHERE NEW.id BETWEEN 10000 and 19999
DO INSTEAD 
	(DELETE FROM public.inheritance_hub WHERE id=OLD.id AND text_column=OLD.text_column;
	INSERT INTO public.inherited_child_2 VALUES(NEW.id, NEW.text_column));

CREATE OR REPLACE RULE redirect_update_to_child_3
AS ON UPDATE TO public.inheritance_hub
	WHERE NEW.id BETWEEN 20000 and 29999
DO INSTEAD 
	(DELETE FROM public.inheritance_hub WHERE id=OLD.id AND text_column=OLD.text_column;
	INSERT INTO public.inherited_child_3 VALUES(NEW.id, NEW.text_column));

CREATE OR REPLACE RULE redirect_update_to_child_4
AS ON UPDATE TO public.inheritance_hub
	WHERE NEW.id BETWEEN 30000 and 39999
DO INSTEAD 
	(DELETE FROM public.inheritance_hub WHERE id=OLD.id AND text_column=OLD.text_column;
	INSERT INTO public.inherited_child_4 VALUES(NEW.id, NEW.text_column));

CREATE OR REPLACE RULE redirect_update_to_child_5
AS ON UPDATE TO public.inheritance_hub
	WHERE NEW.id BETWEEN 40000 and 49999
DO INSTEAD 
	(DELETE FROM public.inheritance_hub WHERE id=OLD.id AND text_column=OLD.text_column;
	INSERT INTO public.inherited_child_5 VALUES(NEW.id, NEW.text_column));

CREATE OR REPLACE RULE redirect_update_to_child_6
AS ON UPDATE TO public.inheritance_hub
	WHERE NEW.id BETWEEN 50000 and 59999
DO INSTEAD 
	(DELETE FROM public.inheritance_hub WHERE id=OLD.id AND text_column=OLD.text_column;
	INSERT INTO public.inherited_child_6 VALUES(NEW.id, NEW.text_column));

CREATE OR REPLACE RULE redirect_update_to_child_7
AS ON UPDATE TO public.inheritance_hub
	WHERE NEW.id BETWEEN 60000 and 69999
DO INSTEAD 
	(DELETE FROM public.inheritance_hub WHERE id=OLD.id AND text_column=OLD.text_column;
	INSERT INTO public.inherited_child_7 VALUES(NEW.id, NEW.text_column));

CREATE OR REPLACE RULE redirect_update_to_child_8
AS ON UPDATE TO public.inheritance_hub
	WHERE NEW.id BETWEEN 70000 and 79999
DO INSTEAD 
	(DELETE FROM public.inheritance_hub WHERE id=OLD.id AND text_column=OLD.text_column;
	INSERT INTO public.inherited_child_8 VALUES(NEW.id, NEW.text_column));

CREATE OR REPLACE RULE redirect_update_to_child_9
AS ON UPDATE TO public.inheritance_hub
	WHERE NEW.id BETWEEN 80000 and 89999
DO INSTEAD 
	(DELETE FROM public.inheritance_hub WHERE id=OLD.id AND text_column=OLD.text_column;
	INSERT INTO public.inherited_child_9 VALUES(NEW.id, NEW.text_column));

CREATE OR REPLACE RULE redirect_update_to_child_10
AS ON UPDATE TO public.inheritance_hub
	WHERE NEW.id BETWEEN 90000 and 99999
DO INSTEAD 
	(DELETE FROM public.inheritance_hub WHERE id=OLD.id AND text_column=OLD.text_column;
	INSERT INTO public.inherited_child_10 VALUES(NEW.id, NEW.text_column));