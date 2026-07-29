import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean

structure AxiomOfChoicePackage where
  family : Type u → Type u
  choiceFunction : ∀ (I : Type u) (X : I → Type u), (∀ i, Nonempty (X i)) → Nonempty (∀ i, X i)

structure AxiomOfChoiceEvidence (A : AxiomOfChoicePackage) where
  choiceFunctionClosed : A.choiceFunction

def AxiomOfChoiceClosed (A : AxiomOfChoicePackage) : Prop :=
  A.choiceFunction

theorem axiom_of_choice_closed_from_evidence (A : AxiomOfChoicePackage) (E : AxiomOfChoiceEvidence A) : AxiomOfChoiceClosed A := by
  exact E.choiceFunctionClosed

end ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean
end HautevilleHouse