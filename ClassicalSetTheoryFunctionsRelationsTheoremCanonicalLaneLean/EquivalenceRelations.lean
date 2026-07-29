import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean

structure EquivalenceRelationsPackage where
  setType : Type u
  relation : setType -> setType -> Prop
  reflexivity : Prop
  symmetry : Prop
  transitivity : Prop
  quotientSet : Type u
  quotientWellDefined : Prop

def EquivalenceRelationsClosed (E : EquivalenceRelationsPackage) : Prop :=
  E.reflexivity ∧ E.symmetry ∧ E.transitivity ∧ E.quotientWellDefined

end ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean
end HautevilleHouse