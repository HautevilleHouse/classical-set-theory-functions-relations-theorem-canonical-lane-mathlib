import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean

structure SetFunctionPackage where
  domain : Type u
  codomain : Type v
  mapping : domain → codomain
  injectivity : Prop
  surjectivity : Prop
  bijectivity : Prop

structure SetFunctionEvidence (F : SetFunctionPackage) where
  injectivityClosed : F.injectivity
  surjectivityClosed : F.surjectivity
  bijectivityClosed : F.bijectivity

def SetFunctionsClosed (F : SetFunctionPackage) : Prop :=
  F.injectivity ∧ F.surjectivity ∧ F.bijectivity

theorem set_functions_closed_from_evidence (F : SetFunctionPackage) (E : SetFunctionEvidence F) :
    SetFunctionsClosed F := by
  exact And.intro E.injectivityClosed (And.intro E.surjectivityClosed E.bijectivityClosed)

end ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean
end HautevilleHouse
