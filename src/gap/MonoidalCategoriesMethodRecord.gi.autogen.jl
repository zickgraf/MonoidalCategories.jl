# SPDX-License-Identifier: GPL-2.0-or-later
# MonoidalCategories: Monoidal and monoidal (co)closed categories
#
# Implementations
#

@InstallValueConst( MONOIDAL_CATEGORIES_METHOD_NAME_RECORD, @rec(

## Basic Operations for Monoidal Categories

TensorProductOnMorphisms = @rec(
  filter_list = [ "category", "morphism", "morphism" ],
  io_type = [ [ "alpha", "beta" ], [ "s", "r" ] ],
  output_source_getter_string = "TensorProductOnObjects( cat, Source( alpha ), Source( beta ) )",
  output_source_getter_preconditions = [ [ "TensorProductOnObjects", 1 ] ],
  output_range_getter_string = "TensorProductOnObjects( cat, Range( alpha ), Range( beta ) )",
  output_range_getter_preconditions = [ [ "TensorProductOnObjects", 1 ] ],
  with_given_object_position = "both",
  return_type = "morphism",
  dual_operation = "TensorProductOnMorphisms",
  dual_arguments_reversed = false,
  compatible_with_congruence_of_morphisms = true,
  # Test in MonoidalCategoriesTest
),

TensorProductOnMorphismsWithGivenTensorProducts = @rec(
  filter_list = [ "category", "object", "morphism", "morphism", "object" ],
  io_type = [ [ "s", "alpha", "beta", "r" ], [ "s", "r" ] ],
  return_type = "morphism",
  dual_operation = "TensorProductOnMorphismsWithGivenTensorProducts",
  dual_with_given_objects_reversed = true,
  compatible_with_congruence_of_morphisms = true,
),

AssociatorRightToLeft = @rec(
  filter_list = [ "category", "object", "object", "object" ],
  io_type = [ [ "a", "b", "c" ], [ "s", "r" ] ],
  output_source_getter_string = "TensorProductOnObjects( cat, a, TensorProductOnObjects( cat, b, c ) )",
  output_source_getter_preconditions = [ [ "TensorProductOnObjects", 2 ] ],
  output_range_getter_string = "TensorProductOnObjects( cat, TensorProductOnObjects( cat, a, b ), c )",
  output_range_getter_preconditions = [ [ "TensorProductOnObjects", 2 ] ],
  with_given_object_position = "both",
  return_type = "morphism",
  dual_operation = "AssociatorLeftToRight",
  dual_arguments_reversed = false,
  # Test in MonoidalCategoriesTest
),

AssociatorRightToLeftWithGivenTensorProducts = @rec(
  filter_list = [ "category", "object", "object", "object", "object", "object" ],
  io_type = [ [ "s", "a", "b", "c", "r" ], [ "s", "r" ] ],
  return_type = "morphism",
  dual_operation = "AssociatorLeftToRightWithGivenTensorProducts",
  dual_with_given_objects_reversed = true,
),

AssociatorLeftToRight = @rec(
  filter_list = [ "category", "object", "object", "object" ],
  io_type = [ [ "a", "b", "c" ], [ "s", "r" ] ],
  output_source_getter_string = "TensorProductOnObjects( cat, TensorProductOnObjects( cat, a, b ), c )",
  output_source_getter_preconditions = [ [ "TensorProductOnObjects", 2 ] ],
  output_range_getter_string = "TensorProductOnObjects( cat, a, TensorProductOnObjects( cat, b, c ) )",
  output_range_getter_preconditions = [ [ "TensorProductOnObjects", 2 ] ],
  with_given_object_position = "both",
  return_type = "morphism",
  dual_operation = "AssociatorRightToLeft",
  dual_arguments_reversed = false,
  # Test in MonoidalCategoriesTest
),

AssociatorLeftToRightWithGivenTensorProducts = @rec(
  filter_list = [ "category", "object", "object", "object", "object", "object" ],
  io_type = [ [ "s", "a", "b", "c", "r" ], [ "s", "r" ] ],
  return_type = "morphism",
  dual_operation = "AssociatorRightToLeftWithGivenTensorProducts",
  dual_with_given_objects_reversed = true,
),

LeftUnitor = @rec(
  filter_list = [ "category", "object" ],
  io_type = [ [ "a" ], [ "s", "a" ] ],
  output_source_getter_string = "TensorProductOnObjects( cat, TensorUnit( cat ), a )",
  output_source_getter_preconditions = [ [ "TensorProductOnObjects", 1 ], [ "TensorUnit", 1 ] ],
  output_range_getter_string = "a",
  with_given_object_position = "Source",
  return_type = "morphism",
  dual_operation = "LeftUnitorInverse",
  # Test in MonoidalCategoriesTest
),

LeftUnitorWithGivenTensorProduct = @rec(
  filter_list = [ "category", "object", "object" ],
  io_type = [ [ "a", "s" ], [ "s", "a" ] ],
  return_type = "morphism",
  dual_operation = "LeftUnitorInverseWithGivenTensorProduct",
  dual_arguments_reversed = false,
),

LeftUnitorInverse = @rec(
  filter_list = [ "category", "object" ],
  io_type = [ [ "a" ], [ "a", "r" ] ],
  output_source_getter_string = "a",
  output_range_getter_string = "TensorProductOnObjects( cat, TensorUnit( cat ), a )",
  output_range_getter_preconditions = [ [ "TensorProductOnObjects", 1 ], [ "TensorUnit", 1 ] ],
  with_given_object_position = "Range",
  return_type = "morphism",
  dual_operation = "LeftUnitor",
  # Test in MonoidalCategoriesTest
),

LeftUnitorInverseWithGivenTensorProduct = @rec(
  filter_list = [ "category", "object", "object" ],
  io_type = [ [ "a", "r" ], [ "a", "r" ] ],
  return_type = "morphism",
  dual_operation = "LeftUnitorWithGivenTensorProduct",
  dual_arguments_reversed = false,
),

RightUnitor = @rec(
  filter_list = [ "category", "object" ],
  io_type = [ [ "a" ], [ "s", "a" ] ],
  output_source_getter_string = "TensorProductOnObjects( cat, a, TensorUnit( cat ) )",
  output_source_getter_preconditions = [ [ "TensorProductOnObjects", 1 ], [ "TensorUnit", 1 ] ],
  output_range_getter_string = "a",
  with_given_object_position = "Source",
  return_type = "morphism",
  dual_operation = "RightUnitorInverse",
  # Test in MonoidalCategoriesTest
),

RightUnitorWithGivenTensorProduct = @rec(
  filter_list = [ "category", "object", "object" ],
  io_type = [ [ "a", "s" ], [ "s", "a" ] ],
  return_type = "morphism",
  dual_operation = "RightUnitorInverseWithGivenTensorProduct",
  dual_arguments_reversed = false,
),

RightUnitorInverse = @rec(
  filter_list = [ "category", "object" ],
  io_type = [ [ "a" ], [ "a", "r" ] ],
  output_source_getter_string = "a",
  output_range_getter_string = "TensorProductOnObjects( cat, a, TensorUnit( cat ) )",
  output_range_getter_preconditions = [ [ "TensorProductOnObjects", 1 ], [ "TensorUnit", 1 ] ],
  with_given_object_position = "Range",
  return_type = "morphism",
  dual_operation = "RightUnitor",
  # Test in MonoidalCategoriesTest
),

RightUnitorInverseWithGivenTensorProduct = @rec(
  filter_list = [ "category", "object", "object" ],
  io_type = [ [ "a", "r" ], [ "a", "r" ] ],
  return_type = "morphism",
  dual_operation = "RightUnitorWithGivenTensorProduct",
  dual_arguments_reversed = false,
),

) );

CAP_INTERNAL_ENHANCE_NAME_RECORD( MONOIDAL_CATEGORIES_METHOD_NAME_RECORD );

CAP_INTERNAL_GENERATE_DOCUMENTATION_FROM_METHOD_NAME_RECORD(
    MONOIDAL_CATEGORIES_METHOD_NAME_RECORD,
    "MonoidalCategories",
    "MonoidalCategories.autogen.gd",
    "Monoidal Categories",
    "Add-methods"
);

CAP_INTERNAL_REGISTER_METHOD_NAME_RECORD_OF_PACKAGE( MONOIDAL_CATEGORIES_METHOD_NAME_RECORD, "MonoidalCategories" );

CAP_INTERNAL_INSTALL_ADDS_FROM_RECORD( MONOIDAL_CATEGORIES_METHOD_NAME_RECORD );
