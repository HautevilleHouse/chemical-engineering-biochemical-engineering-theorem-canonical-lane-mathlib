import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean

structure ReactionKineticsPackage where
  rateLaw : Prop
  temperatureDependence : Prop
  catalystSurfaceBinding : Prop
  transportLimitation : Prop
  reactionOrder : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateLawClosed : R.rateLaw
  temperatureDependenceClosed : R.temperatureDependence
  catalystSurfaceBindingClosed : R.catalystSurfaceBinding
  transportLimitationClosed : R.transportLimitation
  reactionOrderClosed : R.reactionOrder

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.rateLaw ∧ R.temperatureDependence ∧ R.catalystSurfaceBinding ∧
  R.transportLimitation ∧ R.reactionOrder

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage)
    (E : ReactionKineticsEvidence R) : ReactionKineticsClosed R := by
  exact And.intro E.rateLawClosed
    (And.intro E.temperatureDependenceClosed
      (And.intro E.catalystSurfaceBindingClosed
        (And.intro E.transportLimitationClosed E.reactionOrderClosed)))

end ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse