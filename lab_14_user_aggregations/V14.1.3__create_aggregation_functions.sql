CREATE FUNCTION public.sum_two_complex_numbers(
	complex_1 public.complex_number,
	complex_2 public.complex_number
) RETURNS public.complex_number AS
$$
BEGIN
	RETURN ROW (complex_1.real + complex_2.real, complex_1.imaginary + complex_2.imaginary)::public.complex_number;
END;
$$ LANGUAGE plpgsql;

CREATE FUNCTION public.complex_sum_final(final_complex public.complex_number)
RETURNS public.complex_number AS 
$$
BEGIN
	RETURN final_complex;
END;
$$ LANGUAGE plpgsql;

CREATE AGGREGATE public.complex_sum(public.complex_number)(
	sfunc = public.sum_two_complex_numbers,
	stype = public.complex_number,
	combine_func = public.sum_two_complex_numbers,
	finalfunc = public.complex_sum_final,
	initcond = '(0, 0)',
	parallel = safe
);




CREATE FUNCTION public.subtract_two_complex_numbers(
	complex_1 public.complex_number,
	complex_2 public.complex_number
) RETURNS public.complex_number AS
$$
BEGIN
	RETURN ROW (-complex_1.real - complex_2.real, -complex_1.imaginary - complex_2.imaginary)::public.complex_number;
END;
$$ LANGUAGE plpgsql;

CREATE FUNCTION public.complex_subtraction_final(final_complex public.complex_number)
RETURNS public.complex_number AS 
$$
BEGIN
	RETURN final_complex;
END;
$$ LANGUAGE plpgsql;

CREATE AGGREGATE public.complex_subtraction(public.complex_number)(
	sfunc = public.complex_subtraction_transition,
	stype = public.complex_number,
	combine_func = public.subtract_two_complex_numbers,
	finalfunc = public.complex_subtraction_final,
	initcond = '(0, 0)',
	parallel = safe
);


CREATE FUNCTION public.multiply_two_complex_numbers(
	complex_1 public.complex_number,
	complex_2 public.complex_number
) RETURNS public.complex_number AS
$$
BEGIN
	RETURN ROW (complex_1.real * complex_2.real - complex_1.imaginary * complex_2.imaginary,
		complex_1.real * complex_2.imaginary + complex_1.imaginary * complex_2.real)::public.complex_number;
END;
$$ LANGUAGE plpgsql;

CREATE FUNCTION public.complex_multiplication_final(final_complex public.complex_number)
RETURNS public.complex_number AS 
$$
BEGIN
	RETURN final_complex;
END;
$$ LANGUAGE plpgsql;

CREATE AGGREGATE public.complex_multiplication(public.complex_number)(
	sfunc = public.complex_multiplication_transition,
	stype = public.complex_number,
	combine_func = public.multiply_two_complex_numbers,
	finalfunc = public.complex_multiplication_final,
	initcond = '(1, 1)',
	parallel = safe
);



CREATE FUNCTION public.divide_two_complex_numbers(
	complex_1 public.complex_number,
	complex_2 public.complex_number
) RETURNS public.complex_number AS
$$
BEGIN
	RETURN ROW ((complex_1.real * complex_2.real + complex_1.imaginary * complex_2.imaginary) /
		(complex_2.real * complex_2.real + complex_2.imaginary * complex_2.imaginary),
		(complex_1.imaginary * complex_2.real - complex_1.real * complex_2.imaginary)
		/ (complex_2.real * complex_2.real + complex_2.imaginary * complex_2.imaginary))::public.complex_number;
END;
$$ LANGUAGE plpgsql;

CREATE FUNCTION public.complex_division_final(final_complex public.complex_number)
RETURNS public.complex_number AS 
$$
BEGIN
	RETURN final_complex;
END;
$$ LANGUAGE plpgsql;

CREATE AGGREGATE public.complex_division(public.complex_number)(
	sfunc = public.divide_two_complex_numbers,
	stype = public.complex_number,
	combine_func = public.divide_two_complex_numbers,
	finalfunc = public.complex_division_final,
	initcond = '(1, 1)',
	parallel = safe
);
