import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean

structure BioreactorModelPackage where
  biomassConcentration : Type u
  substrateConcentration : Type v
  dilutionRate : Type w
  monodKinetics : Prop
  massBalance : Prop
  steadyState : Prop

structure BioreactorModelEvidence (B : BioreactorModelPackage) where
  monodKineticsClosed : B.monodKinetics
  massBalanceClosed : B.massBalance
  steadyStateClosed : B.steadyState

def BioreactorModelClosed (B : BioreactorModelPackage) : Prop :=  B.monodKinetics ∧ B.massBalance ∧ B.steadyState

theorem bioreactor_model_closed_from_evidence (B : BioreactorModelPackage) (E : BioreactorModelEvidence B) : BioreactorModelClosed B := by
  exact And.intro E.monodKineticsClosed (And.intro E.massBalanceClosed E.steadyStateClosed)

end ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse