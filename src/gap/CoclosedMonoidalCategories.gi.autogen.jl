# SPDX-License-Identifier: GPL-2.0-or-later
# MonoidalCategories: Monoidal && monoidal (co)closed categories
#
# Implementations
#

##
AddDerivationToCAP( IsomorphismFromInternalCoHomToObject,
                    "calling the WithGiven operation ⥉ a skeletal setting",
                    [ [ IsomorphismFromInternalCoHomToObjectWithGivenInternalCoHom, 1 ] ],
                    
  function( cat, object )

    return IsomorphismFromInternalCoHomToObjectWithGivenInternalCoHom( cat, object, object );

end; CategoryFilter = IsSkeletalCategory );

##
AddDerivationToCAP( IsomorphismFromObjectToInternalCoHom,
                    "calling the WithGiven operation ⥉ a skeletal setting",
                    [ [ IsomorphismFromObjectToInternalCoHomWithGivenInternalCoHom, 1 ] ],
                    
  function( cat, object )

    return IsomorphismFromObjectToInternalCoHomWithGivenInternalCoHom( cat, object, object );

end; CategoryFilter = IsSkeletalCategory );

####################################
# Convenience Methods
####################################

##
InstallMethod( @__MODULE__,  InternalCoHom,
        [ IsCapCategoryObject, IsCapCategoryObject ],
        
  InternalCoHomOnObjects );

##
InstallMethod( @__MODULE__,  InternalCoHom,
        [ IsCapCategoryMorphism, IsCapCategoryMorphism ],
        
  InternalCoHomOnMorphisms );

##
InstallMethod( @__MODULE__,  InternalCoHom,
        [ IsCapCategoryObject, IsCapCategoryMorphism ],
        
  function( a, beta )
    
    return InternalCoHomOnMorphisms( IdentityMorphism( a ), beta );
    
end );

##
InstallMethod( @__MODULE__,  InternalCoHom,
        [ IsCapCategoryMorphism, IsCapCategoryObject ],
        
  function( alpha, b )
    
    return InternalCoHomOnMorphisms( alpha, IdentityMorphism( b ) );
    
end );
