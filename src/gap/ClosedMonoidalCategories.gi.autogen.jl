# SPDX-License-Identifier: GPL-2.0-or-later
# MonoidalCategories: Monoidal && monoidal (co)closed categories
#
# Implementations
#

##
AddDerivationToCAP( IsomorphismFromInternalHomToObject,
                    "calling the WithGiven operation ⥉ a skeletal setting",
                    [ [ IsomorphismFromInternalHomToObjectWithGivenInternalHom, 1 ] ],
                    
  function( cat, object )
    
    return IsomorphismFromInternalHomToObjectWithGivenInternalHom( cat, object, object );
    
end; CategoryFilter = IsSkeletalCategory );

##
AddDerivationToCAP( IsomorphismFromObjectToInternalHom,
                    "calling the WithGiven operation ⥉ a skeletal setting",
                    [ [ IsomorphismFromObjectToInternalHomWithGivenInternalHom, 1 ] ],
                    
  function( cat, object )
    
    return IsomorphismFromObjectToInternalHomWithGivenInternalHom( cat, object, object );
    
end; CategoryFilter = IsSkeletalCategory );

####################################
# Convenience Methods
####################################

##
InstallMethod( @__MODULE__,  InternalHom,
        [ IsCapCategoryObject, IsCapCategoryObject ],
        
  InternalHomOnObjects );

##
InstallMethod( @__MODULE__,  InternalHom,
        [ IsCapCategoryMorphism, IsCapCategoryMorphism ],
        
  InternalHomOnMorphisms );

##
InstallMethod( @__MODULE__,  InternalHom,
        [ IsCapCategoryObject, IsCapCategoryMorphism ],
        
  function( a, beta )
    
    return InternalHomOnMorphisms( IdentityMorphism( a ), beta );
    
end );

##
InstallMethod( @__MODULE__,  InternalHom,
        [ IsCapCategoryMorphism, IsCapCategoryObject ],
        
  function( alpha, b )
    
    return InternalHomOnMorphisms( alpha, IdentityMorphism( b ) );
    
end );
