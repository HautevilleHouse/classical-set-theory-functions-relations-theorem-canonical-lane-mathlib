import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean

structure Cardinal where
  carrier : Type u
  cardinality : Ordinal
  cardinalityDefined : Prop

structure CardinalArithmetic where
  cardinals : Type u
  addition : cardinals → cardinals → cardinals
  multiplication : cardinals → cardinals → cardinals
  commutativityAdd : ∀ a b, addition a b = addition b a
  commutativityMul : ∀ a b, multiplication a b = multiplication b a

structure CardinalArithmeticEvidence (C : CardinalArithmetic) where
  commutativityAddClosed : C.commutativityAdd
  commutativityMulClosed : C.commutativityMul

def CardinalArithmeticClosed (C : CardinalArithmetic) : Prop :=
  C.commutativityAdd ∧ C.commutativityMul

theorem cardinal_arithmetic_closed_from_evidence (C : CardinalArithmetic) (E : CardinalArithmeticEvidence C) : CardinalArithmeticClosed C := by
  exact And.intro E.commutativityAddClosed E.commutativityMulClosed

end ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean
end HautevilleHouse