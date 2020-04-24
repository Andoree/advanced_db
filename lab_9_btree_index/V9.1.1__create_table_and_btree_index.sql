CREATE TABLE public.index_lab_1_table(
	A INTEGER,
	B INTEGER,
	C INTEGER
);
CREATE INDEX index_lab_1_a ON public.index_lab_1_table(A);
CREATE INDEX index_lab_1_b ON public.index_lab_1_table(B);
CREATE INDEX index_lab_1_c ON public.index_lab_1_table(C);
CREATE INDEX index_lab_1_ab ON public.index_lab_1_table(A, B);
CREATE INDEX index_lab_1_ac ON public.index_lab_1_table(A, C);
CREATE INDEX index_lab_1_ba ON public.index_lab_1_table(B, A);
CREATE INDEX index_lab_1_ca ON public.index_lab_1_table(C, A);
CREATE INDEX index_lab_1_bc ON public.index_lab_1_table(B, C);
CREATE INDEX index_lab_1_cb ON public.index_lab_1_table(C, B);
CREATE INDEX index_lab_1_abc ON public.index_lab_1_table(A, B, C);
CREATE INDEX index_lab_1_acb ON public.index_lab_1_table(A, C, B);
CREATE INDEX index_lab_1_bac ON public.index_lab_1_table(B, A, C);
CREATE INDEX index_lab_1_bca ON public.index_lab_1_table(B, C, A);
CREATE INDEX index_lab_1_cab ON public.index_lab_1_table(C, A, B);
CREATE INDEX index_lab_1_cba ON public.index_lab_1_table(C, B, A);
