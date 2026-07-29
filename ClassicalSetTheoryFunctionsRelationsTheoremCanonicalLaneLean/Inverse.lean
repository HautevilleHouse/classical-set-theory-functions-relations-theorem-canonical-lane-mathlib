import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean

structure InversePackage where
  domain : Type u
  codomain : Type v
  f : domain → codomain
  invertible : Prop
  inverse : codomain → domain
  leftInverseCondition : Prop
  rightInverseCondition : Prop

structure InverseEvidence (I : InversePackage) where
  invertibleClosed : I.invertible
  leftInverseConditionClosed : I.leftInverseCondition
  rightInverseConditionClosed : I.rightInverseCondition

def InverseClosed (I : InversePackage) : Prop :=
  I.invertible ∧ I.leftInverseCondition ∧ I.rightInverseCondition

theorem inverse_closed_from_evidence (I : InversePackage) (E : InverseEvidence I) :
    InverseClosed I := by
  exact And.intro E.invertibleClosed (And.intro E.leftInverseConditionClosed E.rightInverseConditionClosed)

end ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean
end HautevilleHouse
