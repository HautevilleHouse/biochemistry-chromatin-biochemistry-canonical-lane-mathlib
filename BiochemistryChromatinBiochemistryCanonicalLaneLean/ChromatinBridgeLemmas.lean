import BiochemistryChromatinBiochemistryCanonicalLaneLean.ChromatinAdmissibleClass

namespace HautevilleHouse
namespace BiochemistryChromatinBiochemistryCanonicalLaneLean

def ChromatinWitnessClosed (O : ChromatinAdmittedObject) : Prop :=
  O.modificationState ∧ O.epigeneticMark ∧ O.bindingFactor

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ChromatinWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BiochemistryChromatinBiochemistryCanonicalLaneLean
end HautevilleHouse