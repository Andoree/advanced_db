CREATE TABLE public.part_hub(
id INTEGER,
text_col VARCHAR
) PARTITION BY HASH(id);

CREATE TABLE public.part_0
PARTITION OF public.part_hub
FOR VALUES WITH
(MODULUS 10, REMAINDER 0);

CREATE TABLE public.part_1
PARTITION OF public.part_hub
FOR VALUES WITH
(MODULUS 10, REMAINDER 1);

CREATE TABLE public.part_2
PARTITION OF public.part_hub
FOR VALUES WITH
(MODULUS 10, REMAINDER 2);

CREATE TABLE public.part_3
PARTITION OF public.part_hub
FOR VALUES WITH
(MODULUS 10, REMAINDER 3);

CREATE TABLE public.part_4
PARTITION OF public.part_hub
FOR VALUES WITH
(MODULUS 10, REMAINDER 4);


CREATE TABLE public.part_5
PARTITION OF public.part_hub
FOR VALUES WITH
(MODULUS 10, REMAINDER 5);

CREATE TABLE public.part_6
PARTITION OF public.part_hub
FOR VALUES WITH
(MODULUS 10, REMAINDER 6);

CREATE TABLE public.part_7
PARTITION OF public.part_hub
FOR VALUES WITH
(MODULUS 10, REMAINDER 7);

CREATE TABLE public.part_8
PARTITION OF public.part_hub
FOR VALUES WITH
(MODULUS 10, REMAINDER 8);

CREATE TABLE public.part_9
PARTITION OF public.part_hub
FOR VALUES WITH
(MODULUS 10, REMAINDER 9);
