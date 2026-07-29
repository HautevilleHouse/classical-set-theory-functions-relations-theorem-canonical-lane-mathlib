import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean

structure FunctionTheoryPackage where
  functionDefinition : Prop
  compositionAssociative : Prop
  identityFunction : Prop
  injectiveSurjectiveBijective : Prop
  inverseFunction : Prop
  imagePreimage : Prop
  restrictionExtension : Prop

structure FunctionTheoryEvidence (F : FunctionTheoryPackage) where
  functionDefinitionClosed : F.functionDefinition
  compositionAssociativeClosed : F.compositionAssociative
  identityFunctionClosed : F.identityFunction
  injectiveSurjectiveBijectiveClosed : F.injectiveSurjectiveBijective
  inverseFunctionClosed : F.inverseFunction
  imagePreimageClosed : F.imagePreimage
  restrictionExtensionClosed : F.restrictionExtension

def FunctionTheoryClosed (F : FunctionTheoryPackage) : Prop :=
  F.functionDefinition ∧ F.compositionAssociative ∧ F.identityFunction ∧
  F.injectiveSurjectiveBijective ∧ F.inverseFunction ∧ F.imagePreimage ∧
  F.restrictionExtension

theorem function_theory_closed_from_evidence (F : FunctionTheoryPackage)
    (E : FunctionTheoryEvidence F) : FunctionTheoryClosed F := by
  exact And.intro E.functionDefinitionClosed
    (And.intro E.compositionAssociativeClosed
      (And.intro E.identityFunctionClosed
        (And.intro E.injectiveSurjectiveBijectiveClosed
          (And.intro E.inverseFunctionClosed
            (And.intro E.imagePreimageClosed E.restrictionExtensionClosed)))))

end ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean
end HautevilleHouse