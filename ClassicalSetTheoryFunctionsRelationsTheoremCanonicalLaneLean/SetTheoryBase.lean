import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean

structure SetTheoryBase where
  carrier : Type u
  membership : carrier → carrier → Prop
  extensionality : ∀ x y, (∀ z, membership z x ↔ membership z y) → x = y
  foundation : Prop

structure SetTheoryBaseEvidence (S : SetTheoryBase) where
  extensionalityClosed : S.extensionality
  foundationClosed : S.foundation

def SetTheoryBaseClosed (S : SetTheoryBase) : Prop :=
  S.extensionality ∧ S.foundation

theorem set_theory_base_closed_from_evidence (S : SetTheoryBase) (E : SetTheoryBaseEvidence S) : SetTheoryBaseClosed S := by
  exact And.intro E.extensionalityClosed E.foundationClosed

end ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean
end HautevilleHouse