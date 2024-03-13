

```jldoctest
julia> using CAP; using MonoidalCategories

julia> true
true

julia> T = TerminalCategoryWithMultipleObjects( );

julia> opposite = Opposite( T, "Opposite with all operations" );

julia> opposite_primitive = Opposite( T, "Opposite with primitive operations"; only_primitive_operations = true );

julia> a = "a" / T;

julia> b = "b" / T;

julia> MonoidalCategoriesTensorProductAndUnitTest( T, opposite, a, b );

julia> MonoidalCategoriesTensorProductAndUnitTest( T, opposite_primitive, a, b );

julia> z = ZeroObject( T );

julia> MonoidalCategoriesTensorProductAndUnitTest( T, opposite, z, b );

julia> MonoidalCategoriesTensorProductAndUnitTest( T, opposite_primitive, z, b );

julia> MonoidalCategoriesTensorProductAndUnitTest( T, opposite, a, z );

julia> MonoidalCategoriesTensorProductAndUnitTest( T, opposite_primitive, a, z );

julia> a = "a" / T;

julia> b = "b" / T;

julia> c = "c" / T;

julia> d = "d" / T;

julia> alpha = MorphismConstructor( a, "f_ab", b );

julia> beta = MorphismConstructor( c, "f_cd", d );

julia> MonoidalCategoriesTest( T, opposite, a, b, c, alpha, beta );

julia> MonoidalCategoriesTest( T, opposite_primitive, a, b, c, alpha, beta );

julia> z = ZeroObject( T );

julia> alpha = UniversalMorphismFromZeroObject( a );

julia> beta = UniversalMorphismIntoZeroObject( a );

julia> MonoidalCategoriesTest( T, opposite, z, a, a, alpha, beta );

julia> MonoidalCategoriesTest( T, opposite_primitive, z, a, a, alpha, beta );

julia> MonoidalCategoriesTest( T, opposite, a, z, z, beta, alpha );

julia> MonoidalCategoriesTest( T, opposite_primitive, a, z, z, beta, alpha );

julia> a = "a" / T;

julia> L = [ "b" / T, "c" / T, "d" / T ];

julia> AdditiveMonoidalCategoriesTest( T, opposite, a, L );

julia> AdditiveMonoidalCategoriesTest( T, opposite_primitive, a, L );

julia> a = "a" / T;

julia> b = "b" / T;

julia> BraidedMonoidalCategoriesTest( T, opposite, a, b );

julia> BraidedMonoidalCategoriesTest( T, opposite_primitive, a, b );

julia> BraidedMonoidalCategoriesTest( T, opposite, b, a );

julia> BraidedMonoidalCategoriesTest( T, opposite_primitive, b, a );

julia> z = ZeroObject( T );

julia> BraidedMonoidalCategoriesTest( T, opposite, z, a );

julia> BraidedMonoidalCategoriesTest( T, opposite_primitive, z, a );

julia> BraidedMonoidalCategoriesTest( T, opposite, a, z );

julia> BraidedMonoidalCategoriesTest( T, opposite_primitive, a, z );

julia> a = "a" / T;

julia> b = "b" / T;

julia> c = "c" / T;

julia> d = "d" / T;

julia> u = TensorUnit( T );

julia> a_product_b = TensorProduct( a, b );

julia> c_product_d = TensorProduct( c, d );

julia> hom_ab = InternalHom( a, b );

julia> hom_cd = InternalHom( c, d );

julia> alpha = MorphismConstructor( a, "f_ab", b );

julia> beta = MorphismConstructor( c, "f_cd", d );

julia> gamma = MorphismConstructor( a_product_b, "f_abu", u );

julia> delta = MorphismConstructor( c_product_d, "f_cdu", u );

julia> epsilon = MorphismConstructor( u, "f_uhomab", hom_ab );

julia> zeta = MorphismConstructor( u, "f_uhomcd", hom_cd );

julia> ClosedMonoidalCategoriesTest( T, opposite, a, b, c, d, alpha, beta, gamma, delta, epsilon, zeta );

julia> ClosedMonoidalCategoriesTest( T, opposite_primitive, a, b, c, d, alpha, beta, gamma, delta, epsilon, zeta );

julia> ClosedMonoidalCategoriesTestWithGiven( T, opposite, a, b, c, d, alpha, beta );

julia> ClosedMonoidalCategoriesTestWithGiven( T, opposite_primitive, a, b, c, d, alpha, beta );

julia> z = ZeroObject( T );

julia> z_product_a = TensorProduct( z, a );

julia> a_product_z = TensorProduct( a, z );

julia> hom_za = InternalHom( z, a );

julia> hom_az = InternalHom( a, z );

julia> alpha = MorphismConstructor( z, "f_za", a );

julia> beta = MorphismConstructor( a, "f_az", z );

julia> gamma = MorphismConstructor( z_product_a, "f_zau", u );

julia> delta = MorphismConstructor( a_product_z, "f_azu", u );

julia> epsilon = MorphismConstructor( u, "f_uhomza", hom_za );

julia> zeta = MorphismConstructor( u, "f_uhomaz", hom_az );

julia> ClosedMonoidalCategoriesTest( T, opposite, z, a, a, z, alpha, beta, gamma, delta, epsilon, zeta );

julia> ClosedMonoidalCategoriesTest( T, opposite_primitive, z, a, a, z, alpha, beta, gamma, delta, epsilon, zeta );

julia> ClosedMonoidalCategoriesTestWithGiven( T, opposite, z, a, a, z, alpha, beta );

julia> ClosedMonoidalCategoriesTestWithGiven( T, opposite_primitive, z, a, a, z, alpha, beta );

julia> a = "a" / T;

julia> b = "b" / T;

julia> c = "c" / T;

julia> d = "d" / T;

julia> u = TensorUnit( T );

julia> a_product_b = TensorProduct( a, b );

julia> c_product_d = TensorProduct( c, d );

julia> cohom_ab = InternalCoHom( a, b );

julia> cohom_cd = InternalCoHom( c, d );

julia> alpha = MorphismConstructor( a, "f_ab", b );

julia> beta = MorphismConstructor( c, "f_cd", d );

julia> gamma = MorphismConstructor( u, "f_uab", a_product_b );

julia> delta = MorphismConstructor( u, "f_ucd", c_product_d );

julia> epsilon = MorphismConstructor( cohom_ab, "f_cohomabu", u );

julia> zeta = MorphismConstructor( cohom_cd, "f_cohomcdu", u);

julia> CoclosedMonoidalCategoriesTest( T, opposite, a, b, c, d, alpha, beta, gamma, delta, epsilon, zeta );

julia> CoclosedMonoidalCategoriesTest( T, opposite_primitive, a, b, c, d, alpha, beta, gamma, delta, epsilon, zeta );

julia> CoclosedMonoidalCategoriesTestWithGiven( T, opposite, a, b, c, d, alpha, beta );

julia> CoclosedMonoidalCategoriesTestWithGiven( T, opposite_primitive, a, b, c, d, alpha, beta );

julia> z = ZeroObject( T );

julia> z_product_a = TensorProduct( z, a );

julia> a_product_z = TensorProduct( a, z );

julia> cohom_za = InternalCoHom( z, a );

julia> cohom_az = InternalCoHom( a, z );

julia> alpha = MorphismConstructor( z, "f_za", a );

julia> beta = MorphismConstructor( a, "f_az", z );

julia> gamma = MorphismConstructor( u, "f_uza", z_product_a );

julia> delta = MorphismConstructor( u, "f_uaz", a_product_z );

julia> epsilon = MorphismConstructor( cohom_za, "f_cohomzau", u );

julia> zeta = MorphismConstructor( cohom_az, "cohomazu", u );

julia> CoclosedMonoidalCategoriesTest( T, opposite, z, a, a, z, alpha, beta, gamma, delta, epsilon, zeta );

julia> CoclosedMonoidalCategoriesTest( T, opposite_primitive, z, a, a, z, alpha, beta, gamma, delta, epsilon, zeta );

julia> CoclosedMonoidalCategoriesTestWithGiven( T, opposite, z, a, a, z, alpha, beta );

julia> CoclosedMonoidalCategoriesTestWithGiven( T, opposite_primitive, z, a, a, z, alpha, beta );

julia> a = "a" / T;

julia> b = "b" / T;

julia> c = "c" / T;

julia> d = "d" / T;

julia> alpha = IdentityMorphism( a );

julia> RigidSymmetricClosedMonoidalCategoriesTest( T, opposite, a, b, c, d, alpha );

julia> RigidSymmetricClosedMonoidalCategoriesTest( T, opposite_primitive, a, b, c, d, alpha );

julia> z = ZeroObject( T );

julia> alpha = IdentityMorphism( a );

julia> RigidSymmetricClosedMonoidalCategoriesTest( T, opposite, z, b, c, z, alpha );

julia> RigidSymmetricClosedMonoidalCategoriesTest( T, opposite_primitive, z, b, c, z, alpha );

julia> a = "a" / T;

julia> b = "b" / T;

julia> c = "c" / T;

julia> d = "d" / T;

julia> alpha = IdentityMorphism( a );

julia> RigidSymmetricCoclosedMonoidalCategoriesTest( T, opposite, a, b, c, d, alpha );

julia> RigidSymmetricCoclosedMonoidalCategoriesTest( T, opposite_primitive, a, b, c, d, alpha );

julia> z = ZeroObject( T );

julia> alpha = IdentityMorphism( a );

julia> RigidSymmetricCoclosedMonoidalCategoriesTest( T, opposite, a, b, c, d, alpha );

julia> RigidSymmetricCoclosedMonoidalCategoriesTest( T, opposite_primitive, a, b, c, d, alpha );

```
