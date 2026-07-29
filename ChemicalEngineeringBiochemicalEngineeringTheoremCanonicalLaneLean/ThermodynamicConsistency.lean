import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean

structure ThermodynamicConsistencyPackage where
  gibbsFreeEnergy : Prop
  enthalpyEntropyBalance : Prop
  phaseEquilibrium : Prop
  chemicalPotential : Prop

structure ThermodynamicConsistencyEvidence (T : ThermodynamicConsistencyPackage) where
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  enthalpyEntropyBalanceClosed : T.enthalpyEntropyBalance
  phaseEquilibriumClosed : T.phaseEquilibrium
  chemicalPotentialClosed : T.chemicalPotential

def ThermodynamicConsistencyClosed (T : ThermodynamicConsistencyPackage) : Prop :=
  T.gibbsFreeEnergy ∧ T.enthalpyEntropyBalance ∧ T.phaseEquilibrium ∧ T.chemicalPotential

theorem thermodynamic_consistency_closed_from_evidence (T : ThermodynamicConsistencyPackage) (E : ThermodynamicConsistencyEvidence T) : ThermodynamicConsistencyClosed T := by
  exact And.intro E.gibbsFreeEnergyClosed (And.intro E.enthalpyEntropyBalanceClosed (And.intro E.phaseEquilibriumClosed E.chemicalPotentialClosed))

end ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse