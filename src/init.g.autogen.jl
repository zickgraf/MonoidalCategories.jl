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

## (Co)Closed Monoidal

include( "gap/ClosedMonoidalCategoriesProperties.gd.autogen.jl" );
include( "gap/CoclosedMonoidalCategoriesProperties.gd.autogen.jl" );

include( "gap/ClosedMonoidalCategories.gd.autogen.jl" );
include( "gap/CoclosedMonoidalCategories.gd.autogen.jl" );

include( "gap/ClosedMonoidalCategories.autogen.gd.autogen.jl" );
include( "gap/CoclosedMonoidalCategories.autogen.gd.autogen.jl" );

## Symmetric (Co)Closed Monoidal

include( "gap/SymmetricClosedMonoidalCategoriesProperties.gd.autogen.jl" );
include( "gap/SymmetricCoclosedMonoidalCategoriesProperties.gd.autogen.jl" );

## Rigid Symmetric (Co)Closed Monoidal

include( "gap/RigidSymmetricClosedMonoidalCategoriesProperties.gd.autogen.jl" );
include( "gap/RigidSymmetricCoclosedMonoidalCategoriesProperties.gd.autogen.jl" );

include( "gap/RigidSymmetricClosedMonoidalCategories.gd.autogen.jl" );
include( "gap/RigidSymmetricCoclosedMonoidalCategories.gd.autogen.jl" );

include( "gap/RigidSymmetricClosedMonoidalCategories.autogen.gd.autogen.jl" );
include( "gap/RigidSymmetricCoclosedMonoidalCategories.autogen.gd.autogen.jl" );

## Create files for monoidal categories
include( "gap/CreateMonoidalCategories.gd.autogen.jl" );
include( "gap/CreateClosedMonoidalCategories.gd.autogen.jl" );
include( "gap/CreateCoclosedMonoidalCategories.gd.autogen.jl" );

## Test methods

include( "gap/MonoidalCategoriesTensorProductAndUnitTest.gd.autogen.jl" );
include( "gap/MonoidalCategoriesTest.gd.autogen.jl" );
include( "gap/AdditiveMonoidalCategoriesTest.gd.autogen.jl" );
include( "gap/BraidedMonoidalCategoriesTest.gd.autogen.jl" );
include( "gap/ClosedMonoidalCategoriesTest.gd.autogen.jl" );
include( "gap/CoclosedMonoidalCategoriesTest.gd.autogen.jl" );
include( "gap/RigidSymmetricClosedMonoidalCategoriesTest.gd.autogen.jl" );
include( "gap/RigidSymmetricCoclosedMonoidalCategoriesTest.gd.autogen.jl" );
