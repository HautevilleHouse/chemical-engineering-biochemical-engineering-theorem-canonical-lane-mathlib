import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean

structure BiochemicalPathwayPackage where
  enzyme : Type u
  substrate : Type v
  product : Type w
  michaelisMentenKinetics : Prop
  allostericRegulation : Prop
  feedbackInhibition : Prop

structure BiochemicalPathwayEvidence (B : BiochemicalPathwayPackage) where
  michaelisMentenKineticsClosed : B.michaelisMentenKinetics
  allostericRegulationClosed : B.allostericRegulation
  feedbackInhibitionClosed : B.feedbackInhibition

def BiochemicalPathwayClosed (B : BiochemicalPathwayPackage) : Prop :=
  B.michaelisMentenKinetics ∧ B.allostericRegulation ∧ B.feedbackInhibition

theorem biochemical_pathway_closed_from_evidence (B : BiochemicalPathwayPackage)
    (E : BiochemicalPathwayEvidence B) : BiochemicalPathwayClosed B := by
  exact And.intro E.michaelisMentenKineticsClosed
    (And.intro E.allostericRegulationClosed E.feedbackInhibitionClosed)

end ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse