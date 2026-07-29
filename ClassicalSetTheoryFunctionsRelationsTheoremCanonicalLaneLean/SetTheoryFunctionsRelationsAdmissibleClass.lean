import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean

structure SetTheoryAdmittedObject where
  carrier : Type u
  relation : carrier → carrier → Prop
  function : carrier → carrier
  isEquivalence : Prop
  isFunctionWellDefined : Prop
  conclusion : isEquivalence ∧ isFunctionWellDefined

structure AdmissibleClass where
  object : SetTheoryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SetWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean
end HautevilleHouse