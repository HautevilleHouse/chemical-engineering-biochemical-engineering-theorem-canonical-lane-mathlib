import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean

structure TransportPhenomenaPackage where
  momentumTransfer : Prop
  heatTransfer : Prop
  massTransfer : Prop
  convectionDiffusionReaction : Prop
  multiphaseFlow : Prop

structure TransportPhenomenaEvidence (T : TransportPhenomenaPackage) where
  momentumTransferClosed : T.momentumTransfer
  heatTransferClosed : T.heatTransfer
  massTransferClosed : T.massTransfer
  convectionDiffusionReactionClosed : T.convectionDiffusionReaction
  multiphaseFlowClosed : T.multiphaseFlow

def TransportPhenomenaClosed (T : TransportPhenomenaPackage) : Prop :=
  T.momentumTransfer ∧ T.heatTransfer ∧ T.massTransfer ∧
  T.convectionDiffusionReaction ∧ T.multiphaseFlow

theorem transport_phenomena_closed_from_evidence (T : TransportPhenomenaPackage)
    (E : TransportPhenomenaEvidence T) : TransportPhenomenaClosed T := by
  exact And.intro E.momentumTransferClosed
    (And.intro E.heatTransferClosed
      (And.intro E.massTransferClosed
        (And.intro E.convectionDiffusionReactionClosed E.multiphaseFlowClosed)))

end ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse