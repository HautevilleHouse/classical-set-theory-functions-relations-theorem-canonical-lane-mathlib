import ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean.SetTheoreticFoundationObjects

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean

structure FunctionCompositionPackage where
  f : SetTheoreticObject
  g : SetTheoreticObject
  compositionDefined : Prop
  associativityHolds : Prop
  identityExists : Prop

structure FunctionCompositionEvidence (C : FunctionCompositionPackage) where
  compositionDefinedClosed : C.compositionDefined
  associativityHoldsClosed : C.associativityHolds
  identityExistsClosed : C.identityExists

def FunctionCompositionClosed (C : FunctionCompositionPackage) : Prop :=
  C.compositionDefined ∧ C.associativityHolds ∧ C.identityExists

theorem function_composition_closed_from_evidence (C : FunctionCompositionPackage)
    (E : FunctionCompositionEvidence C) : FunctionCompositionClosed C := by
  exact And.intro E.compositionDefinedClosed
    (And.intro E.associativityHoldsClosed E.identityExistsClosed)

end ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean
end HautevilleHouse