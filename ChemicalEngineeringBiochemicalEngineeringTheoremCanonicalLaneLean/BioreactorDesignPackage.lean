import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean

structure BioreactorDesignPackage where
  bioreactorType : Prop
  operationMode : Prop
  sterilizationKinetics : Prop
  oxygenTransfer : Prop
  scaleUpCriteria : Prop

structure BioreactorDesignEvidence (B : BioreactorDesignPackage) where
  bioreactorTypeClosed : B.bioreactorType
  operationModeClosed : B.operationMode
  sterilizationKineticsClosed : B.sterilizationKinetics
  oxygenTransferClosed : B.oxygenTransfer
  scaleUpCriteriaClosed : B.scaleUpCriteria

def BioreactorDesignClosed (B : BioreactorDesignPackage) : Prop :=
  B.bioreactorType ∧ B.operationMode ∧ B.sterilizationKinetics ∧
  B.oxygenTransfer ∧ B.scaleUpCriteria

theorem bioreactor_design_closed_from_evidence (B : BioreactorDesignPackage)
    (E : BioreactorDesignEvidence B) : BioreactorDesignClosed B := by
  exact And.intro E.bioreactorTypeClosed
    (And.intro E.operationModeClosed
      (And.intro E.sterilizationKineticsClosed
        (And.intro E.oxygenTransferClosed E.scaleUpCriteriaClosed)))

end ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse