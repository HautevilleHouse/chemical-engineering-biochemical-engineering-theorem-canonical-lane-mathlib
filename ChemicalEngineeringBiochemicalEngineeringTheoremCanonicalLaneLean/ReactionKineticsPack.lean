import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean

structure ReactionKineticsPackage where
  rateLawEstablished : Prop
  activationBarrierKnown : Prop
  equilibriumConstantKnown : Prop
  kineticModelValid : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateLawEstablishedClosed : R.rateLawEstablished
  activationBarrierKnownClosed : R.activationBarrierKnown
  equilibriumConstantKnownClosed : R.equilibriumConstantKnown
  kineticModelValidClosed : R.kineticModelValid

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.rateLawEstablished ∧ R.activationBarrierKnown ∧ R.equilibriumConstantKnown ∧ R.kineticModelValid

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage)
    (E : ReactionKineticsEvidence R) : ReactionKineticsClosed R := by
  exact And.intro E.rateLawEstablishedClosed
    (And.intro E.activationBarrierKnownClosed
      (And.intro E.equilibriumConstantKnownClosed E.kineticModelValidClosed))

end ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse