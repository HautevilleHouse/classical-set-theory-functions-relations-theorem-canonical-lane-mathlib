import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean

structure CompositionPackage where
  domain : Type u
  intermediate : Type v
  codomain : Type w
  f : domain → intermediate
  g : intermediate → codomain
  composition : domain → codomain
  associativity : Prop
  identityExists : Prop

structure CompositionEvidence (C : CompositionPackage) where
  associativityClosed : C.associativity
  identityExistsClosed : C.identityExists

def CompositionClosed (C : CompositionPackage) : Prop :=
  C.associativity ∧ C.identityExists

theorem composition_closed_from_evidence (C : CompositionPackage) (E : CompositionEvidence C) :
    CompositionClosed C := by
  exact And.intro E.associativityClosed E.identityExistsClosed

end ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean
end HautevilleHouse
