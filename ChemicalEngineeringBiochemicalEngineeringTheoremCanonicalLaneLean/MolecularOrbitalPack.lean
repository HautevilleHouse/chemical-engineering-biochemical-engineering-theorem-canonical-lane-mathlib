import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean

structure MolecularOrbitalPackage where
  hamiltonianDefined : Prop
  orbitalBasisChosen : Prop
  energyLevelsComputed : Prop
  wavefunctionNormalized : Prop

structure MolecularOrbitalEvidence (M : MolecularOrbitalPackage) where
  hamiltonianDefinedClosed : M.hamiltonianDefined
  orbitalBasisChosenClosed : M.orbitalBasisChosen
  energyLevelsComputedClosed : M.energyLevelsComputed
  wavefunctionNormalizedClosed : M.wavefunctionNormalized

def MolecularOrbitalClosed (M : MolecularOrbitalPackage) : Prop :=
  M.hamiltonianDefined ∧ M.orbitalBasisChosen ∧ M.energyLevelsComputed ∧ M.wavefunctionNormalized

theorem molecular_orbital_closed_from_evidence (M : MolecularOrbitalPackage)
    (E : MolecularOrbitalEvidence M) : MolecularOrbitalClosed M := by
  exact And.intro E.hamiltonianDefinedClosed
    (And.intro E.orbitalBasisChosenClosed
      (And.intro E.energyLevelsComputedClosed E.wavefunctionNormalizedClosed))

end ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse