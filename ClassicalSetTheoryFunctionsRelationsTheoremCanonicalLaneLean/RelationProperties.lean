import ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean.SetTheoreticFoundationObjects

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean

structure RelationPropertiesPackage where
  reflexive : Prop
  symmetric : Prop
  transitive : Prop
  equivalenceRelation : Prop

structure RelationPropertiesEvidence (R : RelationPropertiesPackage) where
  reflexiveClosed : R.reflexive
  symmetricClosed : R.symmetric
  transitiveClosed : R.transitive
  equivalenceRelationClosed : R.equivalenceRelation

def RelationPropertiesClosed (R : RelationPropertiesPackage) : Prop :=
  R.reflexive ∧ R.symmetric ∧ R.transitive ∧ R.equivalenceRelation

theorem relation_properties_closed_from_evidence (R : RelationPropertiesPackage)
    (E : RelationPropertiesEvidence R) : RelationPropertiesClosed R := by
  exact And.intro E.reflexiveClosed
    (And.intro E.symmetricClosed
      (And.intro E.transitiveClosed E.equivalenceRelationClosed))

end ClassicalSetTheoryFunctionsRelationsTheoremCanonicalLaneLean
end HautevilleHouse