# SPDX-License-Identifier: GPL-2.0-or-later
# MonoidalCategories: Monoidal and monoidal (co)closed categories
#
# Implementations
#

##
@InstallMethod( TensorProductOp,
               [ IsList, IsCapCategoryObject ],
               
  function( list, object )
    local size, i;
    
    size = Length( list );
    
    if (size == 1)
        
        return object;
        
    else
        
        for i in (2):(size)
            
            object = TensorProductOnObjects( object, list[i] );
            
        end;
        
    end;
    
    return object;
    
end );

##
@InstallMethod( TensorProductOp,
               [ IsList, IsCapCategoryMorphism ],
               
  function( list, morphism )
    local size, i;
    
    size = Length( list );
    
    if (size == 1)
        
        return morphism;
        
    else
        
        for i in (2):(size)
            
            morphism = TensorProductOnMorphisms( morphism, list[i] );
            
        end;
        
    end;
    
    return morphism;
    
end );
