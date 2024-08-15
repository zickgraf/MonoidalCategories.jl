# SPDX-License-Identifier: GPL-2.0-or-later
# MonoidalCategories: Monoidal and monoidal (co)closed categories
#
# Reading the implementation part of the package.
#

## Monoidal

include( "gap/MonoidalCategoriesTensorProductAndUnitMethodRecord.gi.autogen.jl" );
include( "gap/MonoidalCategoriesTensorProductOnObjectsAndUnitObject.gi.autogen.jl" );

include( "gap/MonoidalCategoriesMethodRecord.gi.autogen.jl" );
include( "gap/MonoidalCategories.gi.autogen.jl" );

## Additive Monoidal

include( "gap/AdditiveMonoidalCategoriesMethodRecord.gi.autogen.jl" );
include( "gap/AdditiveMonoidalCategories.gi.autogen.jl" );

## Braided Monoidal

include( "gap/BraidedMonoidalCategoriesProperties.gi.autogen.jl" );
include( "gap/BraidedMonoidalCategoriesMethodRecord.gi.autogen.jl" );
include( "gap/BraidedMonoidalCategories.gi.autogen.jl" );

## Symmetric Monoidal

include( "gap/SymmetricMonoidalCategoriesProperties.gi.autogen.jl" );

## (Co)Closed Monoidal

include( "gap/LeftClosedMonoidalCategoriesProperties.gi.autogen.jl" );
include( "gap/LeftCoclosedMonoidalCategoriesProperties.gi.autogen.jl" );

include( "gap/LeftClosedMonoidalCategoriesMethodRecord.gi.autogen.jl" );
include( "gap/LeftCoclosedMonoidalCategoriesMethodRecord.gi.autogen.jl" );

include( "gap/LeftClosedMonoidalCategories.gi.autogen.jl" );
include( "gap/LeftCoclosedMonoidalCategories.gi.autogen.jl" );

include( "gap/ClosedMonoidalCategoriesProperties.gi.autogen.jl" );
include( "gap/CoclosedMonoidalCategoriesProperties.gi.autogen.jl" );

include( "gap/ClosedMonoidalCategoriesMethodRecord.gi.autogen.jl" );
include( "gap/CoclosedMonoidalCategoriesMethodRecord.gi.autogen.jl" );

include( "gap/ClosedMonoidalCategories.gi.autogen.jl" );
include( "gap/CoclosedMonoidalCategories.gi.autogen.jl" );

## Symmetric (Co)Closed Monoidal

include( "gap/SymmetricClosedMonoidalCategoriesProperties.gi.autogen.jl" );
include( "gap/SymmetricCoclosedMonoidalCategoriesProperties.gi.autogen.jl" );

## Rigid Symmetric (Co)Closed Monoidal

include( "gap/RigidSymmetricClosedMonoidalCategoriesProperties.gi.autogen.jl" );
include( "gap/RigidSymmetricCoclosedMonoidalCategoriesProperties.gi.autogen.jl" );

include( "gap/RigidSymmetricClosedMonoidalCategoriesMethodRecord.gi.autogen.jl" );
include( "gap/RigidSymmetricCoclosedMonoidalCategoriesMethodRecord.gi.autogen.jl" );

include( "gap/RigidSymmetricClosedMonoidalCategories.gi.autogen.jl" );
include( "gap/RigidSymmetricCoclosedMonoidalCategories.gi.autogen.jl" );

## Derived Methods

include( "gap/MonoidalCategoriesDerivedMethods.gi.autogen.jl" );
include( "gap/AdditiveMonoidalCategoriesDerivedMethods.gi.autogen.jl" );
include( "gap/BraidedMonoidalCategoriesDerivedMethods.gi.autogen.jl" );
include( "gap/SymmetricMonoidalCategoriesDerivedMethods.gi.autogen.jl" );

include( "gap/LeftClosedMonoidalCategoriesDerivedMethods.gi.autogen.jl" );
include( "gap/LeftCoclosedMonoidalCategoriesDerivedMethods.gi.autogen.jl" );

include( "gap/ClosedMonoidalCategoriesDerivedMethods.gi.autogen.jl" );
include( "gap/ClosedMonoidalCategoriesDerivedMethods_extra.gi.autogen.jl" );
include( "gap/CoclosedMonoidalCategoriesDerivedMethods.gi.autogen.jl" );

include( "gap/SymmetricClosedMonoidalCategoriesDerivedMethods.gi.autogen.jl" );
include( "gap/SymmetricCoclosedMonoidalCategoriesDerivedMethods.gi.autogen.jl" );

include( "gap/RigidSymmetricClosedMonoidalCategoriesDerivedMethods.gi.autogen.jl" );
include( "gap/RigidSymmetricCoclosedMonoidalCategoriesDerivedMethods.gi.autogen.jl" );

## Homomorphism Structure from Closed Monoidal Structure

include( "gap/HomomorphismStructureDerivedMethods.gi.autogen.jl" );

## Create files for monoidal categories

include( "gap/CreateMonoidalCategories.gi.autogen.jl" );
include( "gap/CreateLeftClosedMonoidalCategories.gi.autogen.jl" );
include( "gap/CreateLeftCoclosedMonoidalCategories.gi.autogen.jl" );
include( "gap/CreateClosedMonoidalCategories.gi.autogen.jl" );
include( "gap/CreateCoclosedMonoidalCategories.gi.autogen.jl" );

## Synonyms

#= comment for Julia
include( "gap/Synonyms.gi.autogen.jl" );
# =#

## Test methods

include( "gap/MonoidalCategoriesTensorProductAndUnitTest.gi.autogen.jl" );
include( "gap/MonoidalCategoriesTest.gi.autogen.jl" );
include( "gap/AdditiveMonoidalCategoriesTest.gi.autogen.jl" );
include( "gap/BraidedMonoidalCategoriesTest.gi.autogen.jl" );
include( "gap/LeftClosedMonoidalCategoriesTest.gi.autogen.jl" );
include( "gap/LeftCoclosedMonoidalCategoriesTest.gi.autogen.jl" );
include( "gap/ClosedMonoidalCategoriesTest.gi.autogen.jl" );
include( "gap/CoclosedMonoidalCategoriesTest.gi.autogen.jl" );
include( "gap/RigidSymmetricClosedMonoidalCategoriesTest.gi.autogen.jl" );
include( "gap/RigidSymmetricCoclosedMonoidalCategoriesTest.gi.autogen.jl" );

## WithGiven test methods

include( "gap/LeftClosedMonoidalCategoriesTestWithGiven.gi.autogen.jl" );
include( "gap/LeftCoclosedMonoidalCategoriesTestWithGiven.gi.autogen.jl" );
include( "gap/ClosedMonoidalCategoriesTestWithGiven.gi.autogen.jl" );
include( "gap/CoclosedMonoidalCategoriesTestWithGiven.gi.autogen.jl" );
