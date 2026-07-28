import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryChromatinBiochemistryCanonicalLaneLean

structure NucleosomeStabilityPackage where
  occupancyStability : Prop
  dnaAccessibility : Prop
  histoneBindingAffinity : Float
  stabilityClosed : Prop

structure NucleosomeStabilityEvidence (N : NucleosomeStabilityPackage) where
  occupancyStabilityClosed : N.occupancyStability
  dnaAccessibilityClosed : N.dnaAccessibility
  histoneBindingAffinityClosed : N.histoneBindingAffinity > 0.0

def NucleosomeStabilityClosed (N : NucleosomeStabilityPackage) : Prop :=
  N.occupancyStability ∧ N.dnaAccessibility ∧ (N.histoneBindingAffinity > 0.0)

theorem nucleosome_stability_closed_from_evidence (N : NucleosomeStabilityPackage)
    (E : NucleosomeStabilityEvidence N) : NucleosomeStabilityClosed N := by
  exact And.intro E.occupancyStabilityClosed
    (And.intro E.dnaAccessibilityClosed E.histoneBindingAffinityClosed)

end BiochemistryChromatinBiochemistryCanonicalLaneLean
end HautevilleHouse