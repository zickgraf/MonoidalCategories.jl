# SPDX-License-Identifier: GPL-2.0-or-later
# MonoidalCategories: Monoidal and monoidal (co)closed categories
#
# Implementations
#

##
InstallMethod( @__MODULE__,  CoclosedCoevaluationMorphism,
        [ IsCapCategoryObject, IsCapCategoryObject ],
        
  function( a, b )
    
    return CoclosedMonoidalLeftCoevaluationMorphism( b, a );

end );

##
InstallMethod( @__MODULE__,  CoclosedCoevaluationMorphismWithGivenSource,
        [ IsCapCategoryObject, IsCapCategoryObject, IsCapCategoryObject ],
        
  function( a, b, s )

    CoclosedMonoidalLeftCoevaluationMorphismWithGivenSource( b, a, s );
    
end );

##
InstallMethod( @__MODULE__,  CoclosedEvaluationMorphism,
        [ IsCapCategoryObject, IsCapCategoryObject ],
        
  function( a, b )

    CoclosedMonoidalLeftEvaluationMorphism( b, a );
    
end );

##
InstallMethod( @__MODULE__,  CoclosedEvaluationMorphismWithGivenRange,
        [ IsCapCategoryObject, IsCapCategoryObject, IsCapCategoryObject ],
        
  function( a, b, r )
    
    CoclosedMonoidalLeftEvaluationMorphismWithGivenRange( b, a, r );
    
end );

##
InstallMethod( @__MODULE__,  CoevaluationMorphism,
        [ IsCapCategoryObject, IsCapCategoryObject ],
        
  function( a, b )

    ClosedMonoidalLeftCoevaluationMorphism( b, a );
    
end );

##
InstallMethod( @__MODULE__,  CoevaluationMorphismWithGivenRange,
        [ IsCapCategoryObject, IsCapCategoryObject, IsCapCategoryObject ],
        
  function( a, b, r )
    
    ClosedMonoidalLeftCoevaluationMorphismWithGivenRange( b, a, r );
    
end );
