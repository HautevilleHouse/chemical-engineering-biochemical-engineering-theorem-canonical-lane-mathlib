import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean

structure ThermodynamicsPackage where
  internalEnergyDefined : Prop
  entropyDefined : Prop
  freeEnergyMinimized : Prop
  equilibriumStateReached : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  internalEnergyDefinedClosed : T.internalEnergyDefined
  entropyDefinedClosed : T.entropyDefined
  freeEnergyMinimizedClosed : T.freeEnergyMinimized
  equilibriumStateReachedClosed : T.equilibriumStateReached

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.internalEnergyDefined ∧ T.entropyDefined ∧ T.freeEnergyMinimized ∧ T.equilibriumStateReached

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage)
    (E : ThermodynamicsEvidence T) : ThermodynamicsClosed T := by
  exact And.intro E.internalEnergyDefinedClosed
    (And.intro E.entropyDefinedClosed
      (And.intro E.freeEnergyMinimizedClosed E.equilibriumStateReachedClosed))

end ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse