import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean

structure EquivalenceClassesPackage where
  carrier : Type u
  equivalence : carrier → carrier → Prop
  equivalenceProof : Equivalence equivalence
  quotientSpace : Type v
  projectionMap : carrier → quotientSpace

structure EquivalenceClassesEvidence (E : EquivalenceClassesPackage) where
  equivalenceProofClosed : E.equivalenceProof
  quotientSpaceWellDefined : Prop

def EquivalenceClassesClosed (E : EquivalenceClassesPackage) : Prop :=
  E.equivalenceProof ∧ E.quotientSpaceWellDefined

theorem equivalence_classes_closed_from_evidence (E : EquivalenceClassesPackage) (Ev : EquivalenceClassesEvidence E) :
    EquivalenceClassesClosed E := by
  exact And.intro Ev.equivalenceProofClosed Ev.quotientSpaceWellDefined

end ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean
end HautevilleHouse
