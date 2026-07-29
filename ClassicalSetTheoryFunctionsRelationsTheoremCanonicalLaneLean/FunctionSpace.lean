import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean

structure FunctionSpace where
  domain : Type u
  codomain : Type v
  graph : (domain → codomain) → Set (domain × codomain)
  functionExtensionality : ∀ f g : domain → codomain, (∀ x, f x = g x) → f = g

structure FunctionSpaceEvidence (F : FunctionSpace) where
  functionExtensionalityClosed : F.functionExtensionality

def FunctionSpaceClosed (F : FunctionSpace) : Prop :=
  F.functionExtensionality

theorem function_space_closed_from_evidence (F : FunctionSpace) (E : FunctionSpaceEvidence F) : FunctionSpaceClosed F := by
  exact E.functionExtensionalityClosed

end ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean
end HautevilleHouse