import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryChromatinBiochemistryCanonicalLaneLean

def ChromatinWitnessClosed (O : ChromatinAdmittedObject) : Prop :=
  O.chromatinState

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ChromatinWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BiochemistryChromatinBiochemistryCanonicalLaneLean
end HautevilleHouse