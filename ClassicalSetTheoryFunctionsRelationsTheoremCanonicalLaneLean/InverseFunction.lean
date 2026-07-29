import ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean.SetTheoreticFoundationObjects

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean

structure InverseFunctionPackage where
  f : SetTheoreticObject
  inverseDefined : Prop
  bijectiveCondition : Prop
  inverseInvolutive : Prop

structure InverseFunctionEvidence (I : InverseFunctionPackage) where
  inverseDefinedClosed : I.inverseDefined
  bijectiveConditionClosed : I.bijectiveCondition
  inverseInvolutiveClosed : I.inverseInvolutive

def InverseFunctionClosed (I : InverseFunctionPackage) : Prop :=
  I.inverseDefined ∧ I.bijectiveCondition ∧ I.inverseInvolutive

theorem inverse_function_closed_from_evidence (I : InverseFunctionPackage)
    (E : InverseFunctionEvidence I) : InverseFunctionClosed I := by
  exact And.intro E.inverseDefinedClosed
    (And.intro E.bijectiveConditionClosed E.inverseInvolutiveClosed)

end ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean
end HautevilleHouse