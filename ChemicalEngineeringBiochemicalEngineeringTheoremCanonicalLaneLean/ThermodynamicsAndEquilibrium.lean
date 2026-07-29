import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean

structure ThermodynamicsPackage where
  gibbsFreeEnergy : Prop
  enthalpyChange : Prop
  entropyChange : Prop
  equilibriumConstant : Prop
  phaseEquilibrium : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  enthalpyChangeClosed : T.enthalpyChange
  entropyChangeClosed : T.entropyChange
  equilibriumConstantClosed : T.equilibriumConstant
  phaseEquilibriumClosed : T.phaseEquilibrium

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.gibbsFreeEnergy ∧ T.enthalpyChange ∧ T.entropyChange ∧
  T.equilibriumConstant ∧ T.phaseEquilibrium

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage)
    (E : ThermodynamicsEvidence T) : ThermodynamicsClosed T := by
  exact And.intro E.gibbsFreeEnergyClosed
    (And.intro E.enthalpyChangeClosed
      (And.intro E.entropyChangeClosed
        (And.intro E.equilibriumConstantClosed E.phaseEquilibriumClosed)))

end ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse