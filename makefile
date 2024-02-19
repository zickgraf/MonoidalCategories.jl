.PHONY: test

gen:
	gap_to_julia MonoidalCategories

test:
	julia -e 'using Pkg; Pkg.test("MonoidalCategories", julia_args = ["--warn-overwrite=no"]);'
