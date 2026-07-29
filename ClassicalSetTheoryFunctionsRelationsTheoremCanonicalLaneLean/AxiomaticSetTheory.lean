import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean

structure AxiomaticSetTheoryPackage where
  extensionalityAxiom : Prop
  foundationAxiom : Prop
  separationSchema : Prop
  powerSetAxiom : Prop
  unionAxiom : Prop
  infinityAxiom : Prop
  replacementSchema : Prop
  choiceAxiom : Prop

structure AxiomaticSetTheoryEvidence (P : AxiomaticSetTheoryPackage) where
  extensionalityClosed : P.extensionalityAxiom
  foundationClosed : P.foundationAxiom
  separationClosed : P.separationSchema
  powerSetClosed : P.powerSetAxiom
  unionClosed : P.unionAxiom
  infinityClosed : P.infinityAxiom
  replacementClosed : P.replacementSchema
  choiceClosed : P.choiceAxiom

def AxiomaticSetTheoryClosed (P : AxiomaticSetTheoryPackage) : Prop :=
  P.extensionalityAxiom ∧ P.foundationAxiom ∧ P.separationSchema ∧
  P.powerSetAxiom ∧ P.unionAxiom ∧ P.infinityAxiom ∧
  P.replacementSchema ∧ P.choiceAxiom

theorem axiomatic_set_theory_closed_from_evidence (P : AxiomaticSetTheoryPackage)
    (E : AxiomaticSetTheoryEvidence P) : AxiomaticSetTheoryClosed P := by
  exact And.intro E.extensionalityClosed
    (And.intro E.foundationClosed
      (And.intro E.separationClosed
        (And.intro E.powerSetClosed
          (And.intro E.unionClosed
            (And.intro E.infinityClosed
              (And.intro E.replacementClosed E.choiceClosed))))))

end ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean
end HautevilleHouse