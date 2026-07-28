import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryChromatinBiochemistryCanonicalLaneLean

def ConstrainedChromatinBiochemistryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_chromatin_biochemistry_endgame (A : AdmissibleClass) :
    ConstrainedChromatinBiochemistryClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiochemistryChromatinBiochemistryCanonicalLaneLean
end HautevilleHouse