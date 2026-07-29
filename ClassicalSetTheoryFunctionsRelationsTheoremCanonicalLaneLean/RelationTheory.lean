import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean

structure RelationTheory where
  carrier : Type u
  relation : carrier → carrier → Prop
  reflexivity : ∀ x, relation x x
  symmetry : ∀ x y, relation x y → relation y x
  transitivity : ∀ x y z, relation x y → relation y z → relation x z

def isEquivalence (R : RelationTheory) : Prop :=
  R.reflexivity ∧ R.symmetry ∧ R.transitivity

structure RelationTheoryEvidence (R : RelationTheory) where
  reflexivityClosed : R.reflexivity
  symmetryClosed : R.symmetry
  transitivityClosed : R.transitivity

def RelationTheoryClosed (R : RelationTheory) : Prop :=
  isEquivalence R

theorem relation_theory_closed_from_evidence (R : RelationTheory) (E : RelationTheoryEvidence R) : RelationTheoryClosed R := by
  exact And.intro E.reflexivityClosed (And.intro E.symmetryClosed E.transitivityClosed)

end ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean
end HautevilleHouse