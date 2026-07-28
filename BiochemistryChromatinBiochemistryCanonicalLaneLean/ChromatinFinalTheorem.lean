import HautevilleHouse.BiochemistryChromatinBiochemistryCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.BiochemistryChromatinBiochemistryCanonicalLaneLean.NucleosomePositioningPackage
import HautevilleHouse.BiochemistryChromatinBiochemistryCanonicalLaneLean.HistoneModificationCodePackage
import HautevilleHouse.BiochemistryChromatinBiochemistryCanonicalLaneLean.ChromatinRemodelingPackage
import HautevilleHouse.BiochemistryChromatinBiochemistryCanonicalLaneLean.EpigeneticStatePackage

namespace HautevilleHouse
namespace BiochemistryChromatinBiochemistryCanonicalLaneLean

def ChromatinWitnessClosed (O : ChromatinAdmissibleObject) : Prop :=
  O.remodelingStatus

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ChromatinWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedChromatinClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_chromatin_endgame (A : AdmissibleClass) :
    ConstrainedChromatinClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiochemistryChromatinBiochemistryCanonicalLaneLean
end HautevilleHouse