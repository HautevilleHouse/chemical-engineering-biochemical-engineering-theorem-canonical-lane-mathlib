import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean

structure MichaelisMentenPackage where
  enzymeSubstrateComplex : Prop
  steadyStateAssumption : Prop
  rateEquation : Prop
  lineweaverBurkTransform : Prop

structure MichaelisMentenEvidence (M : MichaelisMentenPackage) where
  enzymeSubstrateComplexClosed : M.enzymeSubstrateComplex
  steadyStateAssumptionClosed : M.steadyStateAssumption
  rateEquationClosed : M.rateEquation
  lineweaverBurkTransformClosed : M.lineweaverBurkTransform

def MichaelisMentenClosed (M : MichaelisMentenPackage) : Prop :=
  M.enzymeSubstrateComplex ∧ M.steadyStateAssumption ∧ M.rateEquation ∧ M.lineweaverBurkTransform

theorem michaelis_menten_closed_from_evidence (M : MichaelisMentenPackage) (E : MichaelisMentenEvidence M) : MichaelisMentenClosed M := by
  exact And.intro E.enzymeSubstrateComplexClosed (And.intro E.steadyStateAssumptionClosed (And.intro E.rateEquationClosed E.lineweaverBurkTransformClosed))

end ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse