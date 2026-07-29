import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean

structure ZornLemmaPackage where
  partiallyOrderedSet : Type u
  chainCondition : Prop
  maximalElement : Prop
  zornConclusion : Prop

structure ZornLemmaEvidence (Z : ZornLemmaPackage) where
  chainConditionClosed : Z.chainCondition
  maximalElementClosed : Z.maximalElement
  zornConclusionClosed : Z.zornConclusion

def ZornLemmaClosed (Z : ZornLemmaPackage) : Prop :=
  Z.chainCondition ∧ Z.maximalElement ∧ Z.zornConclusion

theorem zorn_lemma_closed_from_evidence (Z : ZornLemmaPackage) (E : ZornLemmaEvidence Z) :
    ZornLemmaClosed Z := by
  exact And.intro E.chainConditionClosed (And.intro E.maximalElementClosed E.zornConclusionClosed)

end ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean
end HautevilleHouse
