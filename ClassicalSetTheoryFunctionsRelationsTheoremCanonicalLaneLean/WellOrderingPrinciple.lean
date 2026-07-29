import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean

structure WellOrderingPrinciplePackage where
  setType : Type u
  wellOrder : setType -> setType -> Prop
  antisymmetry : Prop
  transitivity : Prop
  totalOrder : Prop
  wellFounded : Prop

def WellOrderingPrincipleClosed (W : WellOrderingPrinciplePackage) : Prop :=
  W.antisymmetry ∧ W.transitivity ∧ W.totalOrder ∧ W.wellFounded

end ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean
end HautevilleHouse