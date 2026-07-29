import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean

structure PartialOrder where
  carrier : Type u
  le : carrier → carrier → Prop
  le_refl : ∀ x, le x x
  le_trans : ∀ x y z, le x y → le y z → le x z
  le_antisymm : ∀ x y, le x y → le y x → x = y

structure PartialOrderEvidence (P : PartialOrder) where
  le_reflClosed : P.le_refl
  le_transClosed : P.le_trans
  le_antisymmClosed : P.le_antisymm

def PartialOrderClosed (P : PartialOrder) : Prop :=
  P.le_refl ∧ P.le_trans ∧ P.le_antisymm

theorem partial_order_closed_from_evidence (P : PartialOrder) (E : PartialOrderEvidence P) : PartialOrderClosed P := by
  exact And.intro E.le_reflClosed (And.intro E.le_transClosed E.le_antisymmClosed)

structure WellOrderingProp where
  P : PartialOrder
  wellFounded : ∀ (s : Set P.carrier), s.Nonempty → ∃ m ∈ s, ∀ x ∈ s, P.le m x

end ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean
end HautevilleHouse