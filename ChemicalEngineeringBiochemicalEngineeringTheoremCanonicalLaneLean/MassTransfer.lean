import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean

structure MassTransferPackage where
  diffusionCoefficient : Type u
  concentrationGradient : Type v
  flux : Type w
  fickLaw : Prop
  convectionDiffusion : Prop
  boundaryLayer : Prop

structure MassTransferEvidence (M : MassTransferPackage) where
  fickLawClosed : M.fickLaw
  convectionDiffusionClosed : M.convectionDiffusion
  boundaryLayerClosed : M.boundaryLayer

def MassTransferClosed (M : MassTransferPackage) : Prop :=  M.fickLaw ∧ M.convectionDiffusion ∧ M.boundaryLayer

theorem mass_transfer_closed_from_evidence (M : MassTransferPackage) (E : MassTransferEvidence M) : MassTransferClosed M := by
  exact And.intro E.fickLawClosed (And.intro E.convectionDiffusionClosed E.boundaryLayerClosed)

end ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse