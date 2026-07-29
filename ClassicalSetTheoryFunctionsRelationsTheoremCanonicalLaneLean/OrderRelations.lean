import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean

structure OrderRelationsPackage where
  carrier : Type u
  order : carrier → carrier → Prop
  antisymmetry : Prop
  totalOrder : Prop
  supremum : Prop
  infimum : Prop

structure OrderRelationsEvidence (O : OrderRelationsPackage) where
  antisymmetryClosed : O.antisymmetry
  totalOrderClosed : O.totalOrder
  supremumClosed : O.supremum
  infimumClosed : O.infimum

def OrderRelationsClosed (O : OrderRelationsPackage) : Prop :=
  O.antisymmetry ∧ O.totalOrder ∧ O.supremum ∧ O.infimum

theorem order_relations_closed_from_evidence (O : OrderRelationsPackage) (E : OrderRelationsEvidence O) :
    OrderRelationsClosed O := by
  exact And.intro E.antisymmetryClosed (And.intro E.totalOrderClosed (And.intro E.supremumClosed E.infimumClosed))

end ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean
end HautevilleHouse
