import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean

structure ReactionKineticsPackage where
  species : Type u
  concentrations : Type v
  rateConstants : Type w
  massActionLaw : Prop
  equilibriumConstant : Prop
  activationEnergy : Prop
  reactionRate : Prop
  rateExpressionClosed : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  massActionLawClosed : R.massActionLaw
  equilibriumConstantClosed : R.equilibriumConstant
  activationEnergyClosed : R.activationEnergy
  reactionRateClosed : R.reactionRate
  rateExpressionClosed : R.rateExpressionClosed

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.massActionLaw ∧ R.equilibriumConstant ∧ R.activationEnergy ∧ R.reactionRate ∧ R.rateExpressionClosed

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage) (E : ReactionKineticsEvidence R) :
    ReactionKineticsClosed R := by
  exact And.intro E.massActionLawClosed
    (And.intro E.equilibriumConstantClosed
      (And.intro E.activationEnergyClosed
        (And.intro E.reactionRateClosed E.rateExpressionClosed)))

structure ReactionKineticsAdmissibleClass (A : AdmissibleClass) where
  reactionPackage : ReactionKineticsPackage
  evidence : ReactionKineticsEvidence reactionPackage
  bridgeClosed : bridgeClosed A
  gateClosed : gateClosed A

theorem reaction_kinetics_endgame (A : AdmissibleClass) (R : ReactionKineticsAdmissibleClass A) :
    ConstrainedTheoremClosure A := by
  exact And.intro R.bridgeClosed R.gateClosed

end ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse