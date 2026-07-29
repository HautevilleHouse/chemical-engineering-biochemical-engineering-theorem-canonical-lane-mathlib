import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean

structure ReactorDesignPackage where
  reactorType : Type u
  massBalance : Type v
  energyBalance : Type w
  plugFlowModel : Prop
  continuousStirredTankModel : Prop
  batchReactorModel : Prop

structure ReactorDesignEvidence (R : ReactorDesignPackage) where
  plugFlowModelClosed : R.plugFlowModel
  continuousStirredTankModelClosed : R.continuousStirredTankModel
  batchReactorModelClosed : R.batchReactorModel

def ReactorDesignClosed (R : ReactorDesignPackage) : Prop :=
  R.plugFlowModel ∧ R.continuousStirredTankModel ∧ R.batchReactorModel

theorem reactor_design_closed_from_evidence (R : ReactorDesignPackage)
    (E : ReactorDesignEvidence R) : ReactorDesignClosed R := by
  exact And.intro E.plugFlowModelClosed
    (And.intro E.continuousStirredTankModelClosed E.batchReactorModelClosed)

end ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse