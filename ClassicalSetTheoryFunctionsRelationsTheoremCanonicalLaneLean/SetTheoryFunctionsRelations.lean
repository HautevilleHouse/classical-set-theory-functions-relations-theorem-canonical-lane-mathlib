import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean

structure SetTheoryFunctionsRelationsPackage where
  functionSpace : Type u
  relation : functionSpace -> functionSpace -> Prop
  compositionClosed : Prop
  inverseClosed : Prop
  identityExists : Prop

def SetTheoryFunctionsRelationsClosed (P : SetTheoryFunctionsRelationsPackage) : Prop :=
  P.compositionClosed ∧ P.inverseClosed ∧ P.identityExists

end ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean
end HautevilleHouse