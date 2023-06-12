# SPDX-License-Identifier: GPL-2.0-or-later
# MonoidalCategories: Monoidal and monoidal (co)closed categories
#
# Implementations
#

@InstallGlobalFunction( "AdditiveMonoidalCategoriesTest",
    
    function( cat, opposite, a, L )
        
        local verbose,
              
              a_op, left_expanding_a_L, left_expanding_a_L_op, left_factoring_a_L, left_factoring_a_L_op, 
              L_op, right_expanding_L_a, right_expanding_L_a_op, right_factoring_L_a, right_factoring_L_a_op;
        
        a_op = Opposite( opposite, a );
        L_op = List( L, l -> Opposite( opposite, l ) );
        
        verbose = ValueOption( "verbose" ) == true;
        
        if (CanCompute( cat, "LeftDistributivityExpanding" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'LeftDistributivityExpanding' ..." );
                
            end;
            
            left_expanding_a_L = LeftDistributivityExpanding( a, L );
            left_factoring_a_L_op = LeftDistributivityFactoring( opposite, a_op, L_op );
            
            @Assert( 0, IsCongruentForMorphisms( left_expanding_a_L, Opposite( left_factoring_a_L_op ) ) );
            
        end;
        
        if (CanCompute( cat, "LeftDistributivityFactoring" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'LeftDistributivityFactoring' ..." );
                
            end;
            
            left_factoring_a_L = LeftDistributivityFactoring( a, L );
            left_expanding_a_L_op = LeftDistributivityExpanding( opposite, a_op, L_op );
            
            @Assert( 0, IsCongruentForMorphisms( left_factoring_a_L, Opposite( left_expanding_a_L_op ) ) );
            
        end;
        
        if (CanCompute( cat, "RightDistributivityExpanding" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'RightDistributivityExpanding' ..." );
                
            end;
            
            right_expanding_L_a = RightDistributivityExpanding( L, a );
            right_factoring_L_a_op = RightDistributivityFactoring( opposite, L_op, a_op );
            
            @Assert( 0, IsCongruentForMorphisms( right_expanding_L_a, Opposite( right_factoring_L_a_op ) ) );
            
        end;
        
        if (CanCompute( cat, "RightDistributivityFactoring" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'RightDistributivityFactoring' ..." );
                
            end;
            
            right_factoring_L_a = RightDistributivityFactoring( L, a );
            right_expanding_L_a_op = RightDistributivityExpanding( opposite, L_op, a_op );
            
            @Assert( 0, IsCongruentForMorphisms( right_factoring_L_a, Opposite( right_expanding_L_a_op ) ) );
            
        end;
        
end );
