import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean

structure SetTheoreticSpace where
  carrier : Type
  membership : carrier → carrier → Prop

structure SetTheoreticObject where
  space : SetTheoreticSpace
  isRelation : Prop
  isFunction : Prop
  domain : SetTheoreticSpace
  codomain : SetTheoreticSpace
  graph : (∀ x : space.carrier, ∃! y : space.carrier, membership x y)
  conclusion : isFunction ∧ isRelation

def SetTheoreticWitnessClosed (O : SetTheoreticObject) : Prop :=
  O.isFunction ∧ O.isRelation

end ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean
end HautevilleHouse