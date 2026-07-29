import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  massActionLawFormulated : Prop
  reactionQuotientDefined : Prop
  equilibriumConstantFixed : Prop
  leChatelierPrincipleApplied : Prop

structure ChemicalEquilibriumEvidence (C : ChemicalEquilibriumPackage) where
  massActionLawFormulatedClosed : C.massActionLawFormulated
  reactionQuotientDefinedClosed : C.reactionQuotientDefined
  equilibriumConstantFixedClosed : C.equilibriumConstantFixed
  leChatelierPrincipleAppliedClosed : C.leChatelierPrincipleApplied

def ChemicalEquilibriumClosed (C : ChemicalEquilibriumPackage) : Prop :=
  C.massActionLawFormulated ∧ C.reactionQuotientDefined ∧ C.equilibriumConstantFixed ∧ C.leChatelierPrincipleApplied

theorem chemical_equilibrium_closed_from_evidence (C : ChemicalEquilibriumPackage)
    (E : ChemicalEquilibriumEvidence C) : ChemicalEquilibriumClosed C := by
  exact And.intro E.massActionLawFormulatedClosed
    (And.intro E.reactionQuotientDefinedClosed
      (And.intro E.equilibriumConstantFixedClosed E.leChatelierPrincipleAppliedClosed))

end ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse