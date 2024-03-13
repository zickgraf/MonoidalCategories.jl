# SPDX-License-Identifier: GPL-2.0-or-later
# MonoidalCategories: Monoidal and monoidal (co)closed categories
#
# Reading the declaration part of the package.
#

## Monoidal

include( "gap/MonoidalCategoriesProperties.gd.autogen.jl" );
include( "gap/MonoidalCategoriesTensorProductOnObjectsAndUnitObject.gd.autogen.jl" );
include( "gap/MonoidalCategories.gd.autogen.jl" );
include( "gap/MonoidalCategories.autogen.gd.autogen.jl" );

## Additive Monoidal

include( "gap/AdditiveMonoidalCategories.gd.autogen.jl" );
include( "gap/AdditiveMonoidalCategories.autogen.gd.autogen.jl" );

## Braided Monoidal

include( "gap/BraidedMonoidalCategoriesProperties.gd.autogen.jl" );
include( "gap/BraidedMonoidalCategories.gd.autogen.jl" );
include( "gap/BraidedMonoidalCategories.autogen.gd.autogen.jl" );

## Symmetric Monoidal

include( "gap/SymmetricMonoidalCategoriesProperties.gd.autogen.jl" );

## C(oc)losed Monoidal

include( "gap/LeftClosedMonoidalCategoriesProperties.gd.autogen.jl" );
include( "gap/LeftCoclosedMonoidalCategoriesProperties.gd.autogen.jl" );

include( "gap/LeftClosedMonoidalCategories.gd.autogen.jl" );
include( "gap/LeftCoclosedMonoidalCategories.gd.autogen.jl" );

include( "gap/LeftClosedMonoidalCategories.autogen.gd.autogen.jl" );
include( "gap/LeftCoclosedMonoidalCategories.autogen.gd.autogen.jl" );

include( "gap/ClosedMonoidalCategoriesProperties.gd.autogen.jl" );
include( "gap/CoclosedMonoidalCategoriesProperties.gd.autogen.jl" );

include( "gap/ClosedMonoidalCategories.gd.autogen.jl" );
include( "gap/CoclosedMonoidalCategories.gd.autogen.jl" );

include( "gap/ClosedMonoidalCategories.autogen.gd.autogen.jl" );
include( "gap/CoclosedMonoidalCategories.autogen.gd.autogen.jl" );

## Symmetric C(oc)losed Monoidal

include( "gap/SymmetricClosedMonoidalCategoriesProperties.gd.autogen.jl" );
include( "gap/SymmetricCoclosedMonoidalCategoriesProperties.gd.autogen.jl" );

## Rigid Symmetric C(oc)losed Monoidal

include( "gap/RigidSymmetricClosedMonoidalCategoriesProperties.gd.autogen.jl" );
include( "gap/RigidSymmetricCoclosedMonoidalCategoriesProperties.gd.autogen.jl" );

include( "gap/RigidSymmetricClosedMonoidalCategories.gd.autogen.jl" );
include( "gap/RigidSymmetricCoclosedMonoidalCategories.gd.autogen.jl" );

include( "gap/RigidSymmetricClosedMonoidalCategories.autogen.gd.autogen.jl" );
include( "gap/RigidSymmetricCoclosedMonoidalCategories.autogen.gd.autogen.jl" );

## Create files for monoidal categories

include( "gap/CreateMonoidalCategories.gd.autogen.jl" );
include( "gap/CreateLeftClosedMonoidalCategories.gd.autogen.jl" );
include( "gap/CreateLeftCoclosedMonoidalCategories.gd.autogen.jl" );
include( "gap/CreateClosedMonoidalCategories.gd.autogen.jl" );
include( "gap/CreateCoclosedMonoidalCategories.gd.autogen.jl" );

## Synonyms

#= comment for Julia
include( "gap/Synonyms.gd.autogen.jl" );
# =#

## Test methods

include( "gap/MonoidalCategoriesTensorProductAndUnitTest.gd.autogen.jl" );
include( "gap/MonoidalCategoriesTest.gd.autogen.jl" );
include( "gap/AdditiveMonoidalCategoriesTest.gd.autogen.jl" );
include( "gap/BraidedMonoidalCategoriesTest.gd.autogen.jl" );
include( "gap/LeftClosedMonoidalCategoriesTest.gd.autogen.jl" );
include( "gap/LeftCoclosedMonoidalCategoriesTest.gd.autogen.jl" );
include( "gap/ClosedMonoidalCategoriesTest.gd.autogen.jl" );
include( "gap/CoclosedMonoidalCategoriesTest.gd.autogen.jl" );
include( "gap/RigidSymmetricClosedMonoidalCategoriesTest.gd.autogen.jl" );
include( "gap/RigidSymmetricCoclosedMonoidalCategoriesTest.gd.autogen.jl" );

## WithGiven test methods

include( "gap/LeftClosedMonoidalCategoriesTestWithGiven.gd.autogen.jl" );
include( "gap/LeftCoclosedMonoidalCategoriesTestWithGiven.gd.autogen.jl" );
include( "gap/ClosedMonoidalCategoriesTestWithGiven.gd.autogen.jl" );
include( "gap/CoclosedMonoidalCategoriesTestWithGiven.gd.autogen.jl" );
