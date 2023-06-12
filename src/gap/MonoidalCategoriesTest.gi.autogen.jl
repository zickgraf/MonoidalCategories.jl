# SPDX-License-Identifier: GPL-2.0-or-later
# MonoidalCategories: Monoidal and monoidal (co)closed categories
#
# Implementations
#

@InstallGlobalFunction( "MonoidalCategoriesTest",
    
    function( cat, opposite, a, b, c, alpha, beta )
    
        local verbose,
              
              a_op,
              b_op,
              c_op,
              
              alpha_op,
              beta_op,
              
              a_tensor_b,    alpha_tensor_beta,
              b_tensor_a,    beta_tensor_alpha,
              a_tensor_b_op, alpha_tensor_beta_op,
              b_tensor_a_op, beta_tensor_alpha_op,
              
              left_unitor_a,    left_unitor_inverse_a,    right_unitor_a,    right_unitor_inverse_a,
              left_unitor_b,    left_unitor_inverse_b,    right_unitor_b,    right_unitor_inverse_a_op,
              left_unitor_a_op, left_unitor_inverse_a_op, right_unitor_a_op, right_unitor_inverse_b,
              left_unitor_b_op, left_unitor_inverse_b_op, right_unitor_b_op, right_unitor_inverse_b_op,
              
              associator_left_to_right_abc, associator_left_to_right_abc_op, associator_right_to_left_abc, associator_right_to_left_abc_op,
              associator_left_to_right_cba, associator_left_to_right_cba_op, associator_right_to_left_cba, associator_right_to_left_cba_op;
        
        a_op = Opposite( opposite, a );
        b_op = Opposite( opposite, b );
        c_op = Opposite( opposite, c );
        
        alpha_op = Opposite( opposite, alpha );
        beta_op = Opposite( opposite, beta );
        
        verbose = ValueOption( "verbose" ) == true;
        
        if (CanCompute( cat, "TensorProductOnMorphisms" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'TensorProductOnMorphisms' ..." );
                
            end;
            
            alpha_tensor_beta = TensorProductOnMorphisms( alpha, beta );
            beta_tensor_alpha = TensorProductOnMorphisms( beta, alpha );
            
            alpha_tensor_beta_op = TensorProductOnMorphisms( opposite, alpha_op, beta_op );
            beta_tensor_alpha_op = TensorProductOnMorphisms( opposite, beta_op, alpha_op );
            
            @Assert( 0, IsCongruentForMorphisms( alpha_tensor_beta_op, Opposite( opposite, alpha_tensor_beta ) ) );
            @Assert( 0, IsCongruentForMorphisms( beta_tensor_alpha_op, Opposite( opposite, beta_tensor_alpha ) ) );
            
            # Opposite must be self-inverse
            
            @Assert( 0, IsCongruentForMorphisms( alpha_tensor_beta, Opposite( alpha_tensor_beta_op ) ) );
            @Assert( 0, IsCongruentForMorphisms( beta_tensor_alpha, Opposite( beta_tensor_alpha_op ) ) );
            
        end;
        
        if (CanCompute( cat, "LeftUnitor" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'LeftUnitor' ..." );
                
            end;
            
            left_unitor_a = LeftUnitor( a );
            left_unitor_b = LeftUnitor( b );
            
            left_unitor_inverse_a_op = LeftUnitorInverse( opposite, a_op );
            left_unitor_inverse_b_op = LeftUnitorInverse( opposite, b_op );
            
            @Assert( 0, IsCongruentForMorphisms( left_unitor_inverse_a_op, Opposite( opposite, left_unitor_a ) ) );
            @Assert( 0, IsCongruentForMorphisms( left_unitor_inverse_b_op, Opposite( opposite, left_unitor_b ) ) );
            
        end;
        
        if (CanCompute( cat, "RightUnitor" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'RightUnitor' ..." );
                
            end;
            
            right_unitor_a = RightUnitor( a );
            right_unitor_b = RightUnitor( b );
            
            right_unitor_inverse_a_op = RightUnitorInverse( opposite, a_op );
            right_unitor_inverse_b_op = RightUnitorInverse( opposite, b_op );
            
            @Assert( 0, IsCongruentForMorphisms( right_unitor_inverse_a_op, Opposite( opposite, right_unitor_a ) ) );
            @Assert( 0, IsCongruentForMorphisms( right_unitor_inverse_b_op, Opposite( opposite, right_unitor_b ) ) );
            
        end;
        
        if (CanCompute( cat, "LeftUnitorInverse" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'LeftUnitorInverse' ..." );
                
            end;
            
            left_unitor_inverse_a = LeftUnitorInverse( a );
            left_unitor_inverse_b = LeftUnitorInverse( b );
            
            left_unitor_a_op = LeftUnitor( opposite, a_op );
            left_unitor_b_op = LeftUnitor( opposite, b_op );
            
            @Assert( 0, IsCongruentForMorphisms( left_unitor_a_op, Opposite( opposite, left_unitor_inverse_a ) ) );
            @Assert( 0, IsCongruentForMorphisms( left_unitor_b_op, Opposite( opposite, left_unitor_inverse_b ) ) );
            
        end;
        
        if (CanCompute( cat, "RightUnitorInverse" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'RightUnitorInverse' ..." );
                
            end;
            
            right_unitor_inverse_a = RightUnitorInverse( a );
            right_unitor_inverse_b = RightUnitorInverse( b );
            
            right_unitor_a_op = RightUnitor( opposite, a_op );
            right_unitor_b_op = RightUnitor( opposite, b_op );
            
            @Assert( 0, IsCongruentForMorphisms( right_unitor_a_op, Opposite( opposite, right_unitor_inverse_a ) ) );
            @Assert( 0, IsCongruentForMorphisms( right_unitor_b_op, Opposite( opposite, right_unitor_inverse_b ) ) );
            
        end;
        
        if (CanCompute( cat, "AssociatorLeftToRight" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'AssociatorLeftToRight' ..." );
                
            end;
            
            associator_left_to_right_abc = AssociatorLeftToRight( a, b, c );
            associator_left_to_right_cba = AssociatorLeftToRight( c, b, a );
            
            associator_right_to_left_abc_op = AssociatorRightToLeft( opposite, a_op, b_op, c_op );
            associator_right_to_left_cba_op = AssociatorRightToLeft( opposite, c_op, b_op, a_op );
            
            @Assert( 0, IsCongruentForMorphisms( associator_right_to_left_abc_op, Opposite( opposite, associator_left_to_right_abc ) ) );
            @Assert( 0, IsCongruentForMorphisms( associator_right_to_left_cba_op, Opposite( opposite, associator_left_to_right_cba ) ) );
            
        end;
        
        if (CanCompute( cat, "AssociatorRightToLeft" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'AssociatorRightToLeft' ..." );
                
            end;
            
            associator_right_to_left_abc = AssociatorRightToLeft( a, b, c );
            associator_right_to_left_cba = AssociatorRightToLeft( c, b, a );
            
            associator_left_to_right_abc_op = AssociatorLeftToRight( opposite, a_op, b_op, c_op );
            associator_left_to_right_cba_op = AssociatorLeftToRight( opposite, c_op, b_op, a_op );
            
            @Assert( 0, IsCongruentForMorphisms( associator_left_to_right_abc_op, Opposite( opposite, associator_right_to_left_abc ) ) );
            @Assert( 0, IsCongruentForMorphisms( associator_left_to_right_cba_op, Opposite( opposite, associator_right_to_left_cba ) ) );
            
        end;

end );
