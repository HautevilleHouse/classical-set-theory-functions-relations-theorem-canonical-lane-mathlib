import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean

structure RelationsPackage where
  carrier : Type u
  relation : carrier → carrier → Prop
  reflexivity : Prop
  symmetry : Prop
  transitivity : Prop
  equivalenceRelation : Prop

structure RelationsEvidence (R : RelationsPackage) where
  reflexivityClosed : R.reflexivity
  symmetryClosed : R.symmetry
  transitivityClosed : R.transitivity
  equivalenceRelationClosed : R.equivalenceRelation

def RelationsClosed (R : RelationsPackage) : Prop :=
  R.reflexivity ∧ R.symmetry ∧ R.transitivity ∧ R.equivalenceRelation

theorem relations_closed_from_evidence (R : RelationsPackage) (E : RelationsEvidence R) :
    RelationsClosed R := by
  exact And.intro E.reflexivityClosed
    (And.intro E.symmetryClosed (And.intro E.transitivityClosed E.equivalenceRelationClosed))

end ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean
end HautevilleHouse
