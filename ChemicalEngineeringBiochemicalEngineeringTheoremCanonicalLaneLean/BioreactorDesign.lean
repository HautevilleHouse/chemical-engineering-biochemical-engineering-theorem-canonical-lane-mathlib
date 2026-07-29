import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean

structure BioreactorDesignPackage where
  cellGrowthKinetics : Prop
  substrateUtilization : Prop
  productFormation : Prop
  reactorMassBalance : Prop

structure BioreactorDesignEvidence (B : BioreactorDesignPackage) where
  cellGrowthKineticsClosed : B.cellGrowthKinetics
  substrateUtilizationClosed : B.substrateUtilization
  productFormationClosed : B.productFormation
  reactorMassBalanceClosed : B.reactorMassBalance

def BioreactorDesignClosed (B : BioreactorDesignPackage) : Prop :=
  B.cellGrowthKinetics ∧ B.substrateUtilization ∧ B.productFormation ∧ B.reactorMassBalance

theorem bioreactor_design_closed_from_evidence (B : BioreactorDesignPackage) (E : BioreactorDesignEvidence B) : BioreactorDesignClosed B := by
  exact And.intro E.cellGrowthKineticsClosed (And.intro E.substrateUtilizationClosed (And.intro E.productFormationClosed E.reactorMassBalanceClosed))

end ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse