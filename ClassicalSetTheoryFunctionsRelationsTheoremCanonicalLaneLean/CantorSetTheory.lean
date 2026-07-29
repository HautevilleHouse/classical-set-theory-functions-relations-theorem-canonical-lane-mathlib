import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean

structure CantorSetTheoryPackage where
  diagonalArgument : Prop
  uncountabilityOfReals : Prop
  cardinalArithmetic : Prop
  continuumHypothesis : Prop
  cardinalComparability : Prop

structure CantorSetTheoryEvidence (C : CantorSetTheoryPackage) where
  diagonalClosed : C.diagonalArgument
  uncountabilityClosed : C.uncountabilityOfReals
  cardinalArithmeticClosed : C.cardinalArithmetic
  continuumHypothesisClosed : C.continuumHypothesis
  cardinalComparabilityClosed : C.cardinalComparability

def CantorSetTheoryClosed (C : CantorSetTheoryPackage) : Prop :=
  C.diagonalArgument ∧ C.uncountabilityOfReals ∧ C.cardinalArithmetic ∧
  C.continuumHypothesis ∧ C.cardinalComparability

theorem cantor_set_theory_closed_from_evidence (C : CantorSetTheoryPackage)
    (E : CantorSetTheoryEvidence C) : CantorSetTheoryClosed C := by
  exact And.intro E.diagonalClosed
    (And.intro E.uncountabilityClosed
      (And.intro E.cardinalArithmeticClosed
        (And.intro E.continuumHypothesisClosed E.cardinalComparabilityClosed)))

end ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean
end HautevilleHouse