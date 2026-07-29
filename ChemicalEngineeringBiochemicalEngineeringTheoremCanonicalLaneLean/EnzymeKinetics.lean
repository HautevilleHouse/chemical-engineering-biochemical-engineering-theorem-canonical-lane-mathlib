import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean

structure EnzymeKineticsPackage where
  substrateConcentration : Type u
  productConcentration : Type v
  reactionRate : Type w
  michaelisMenten : Prop
  inhibitionModel : Prop
  steadyState : Prop

structure EnzymeKineticsEvidence (E : EnzymeKineticsPackage) where
  michaelisMentenClosed : E.michaelisMenten
  inhibitionModelClosed : E.inhibitionModel
  steadyStateClosed : E.steadyState

def EnzymeKineticsClosed (E : EnzymeKineticsPackage) : Prop :=  E.michaelisMenten ∧ E.inhibitionModel ∧ E.steadyState

theorem enzyme_kinetics_closed_from_evidence (E : EnzymeKineticsPackage) (Ev : EnzymeKineticsEvidence E) : EnzymeKineticsClosed E := by
  exact And.intro Ev.michaelisMentenClosed (And.intro Ev.inhibitionModelClosed Ev.steadyStateClosed)

end ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse