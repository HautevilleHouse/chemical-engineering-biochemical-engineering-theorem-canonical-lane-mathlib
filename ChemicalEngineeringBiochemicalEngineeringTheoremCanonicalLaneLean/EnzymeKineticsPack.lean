import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean

structure EnzymeKineticsPackage where
  michaelisMentenModel : Prop
  inhibitionMechanismKnown : Prop
  steadyStateAssumption : Prop
  turnoverNumberMeasured : Prop

structure EnzymeKineticsEvidence (E : EnzymeKineticsPackage) where
  michaelisMentenModelClosed : E.michaelisMentenModel
  inhibitionMechanismKnownClosed : E.inhibitionMechanismKnown
  steadyStateAssumptionClosed : E.steadyStateAssumption
  turnoverNumberMeasuredClosed : E.turnoverNumberMeasured

def EnzymeKineticsClosed (E : EnzymeKineticsPackage) : Prop :=
  E.michaelisMentenModel ∧ E.inhibitionMechanismKnown ∧ E.steadyStateAssumption ∧ E.turnoverNumberMeasured

theorem enzyme_kinetics_closed_from_evidence (E : EnzymeKineticsPackage)
    (Ev : EnzymeKineticsEvidence E) : EnzymeKineticsClosed E := by
  exact And.intro Ev.michaelisMentenModelClosed
    (And.intro Ev.inhibitionMechanismKnownClosed
      (And.intro Ev.steadyStateAssumptionClosed Ev.turnoverNumberMeasuredClosed))

end ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse