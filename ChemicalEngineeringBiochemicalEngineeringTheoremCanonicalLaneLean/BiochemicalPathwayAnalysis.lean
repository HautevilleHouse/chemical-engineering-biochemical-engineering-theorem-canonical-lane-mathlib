import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean

structure BiochemicalPathwayPackage where
  metabolicFlux : Prop
  enzymeKinetics : Prop
  regulationMechanism : Prop
  pathwayStoichiometry : Prop
  cellGrowthCoupling : Prop

structure BiochemicalPathwayEvidence (B : BiochemicalPathwayPackage) where
  metabolicFluxClosed : B.metabolicFlux
  enzymeKineticsClosed : B.enzymeKinetics
  regulationMechanismClosed : B.regulationMechanism
  pathwayStoichiometryClosed : B.pathwayStoichiometry
  cellGrowthCouplingClosed : B.cellGrowthCoupling

def BiochemicalPathwayClosed (B : BiochemicalPathwayPackage) : Prop :=
  B.metabolicFlux ∧ B.enzymeKinetics ∧ B.regulationMechanism ∧
  B.pathwayStoichiometry ∧ B.cellGrowthCoupling

theorem biochemical_pathway_closed_from_evidence (B : BiochemicalPathwayPackage)
    (E : BiochemicalPathwayEvidence B) : BiochemicalPathwayClosed B := by
  exact And.intro E.metabolicFluxClosed
    (And.intro E.enzymeKineticsClosed
      (And.intro E.regulationMechanismClosed
        (And.intro E.pathwayStoichiometryClosed E.cellGrowthCouplingClosed)))

end ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse