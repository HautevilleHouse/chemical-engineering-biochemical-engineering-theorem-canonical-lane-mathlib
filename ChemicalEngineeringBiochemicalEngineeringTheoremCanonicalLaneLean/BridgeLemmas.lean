import HautevilleHouse.ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ChemicalEngineeringBiochemicalEngineeringWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end ChemicalEngineeringBiochemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse