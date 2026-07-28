import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryChromatinBiochemistryCanonicalLaneLean.NucleosomeStability

namespace HautevilleHouse
namespace BiochemistryChromatinBiochemistryCanonicalLaneLean

structure ChromatinEvidenceTerms (N : NucleosomeStabilityPackage) where
  occupancyStabilityEvidence : N.occupancyStability
  dnaAccessibilityEvidence : N.dnaAccessibility
  histoneBindingAffinityEvidence : N.histoneBindingAffinity > 0.0
  nucleosomeStabilityClosed : NucleosomeStabilityClosed N

def NucleosomeStabilityEvidence.toEvidenceTerms (N : NucleosomeStabilityPackage)
    (E : NucleosomeStabilityEvidence N) : ChromatinEvidenceTerms N := {
  occupancyStabilityEvidence := E.occupancyStabilityClosed,
  dnaAccessibilityEvidence := E.dnaAccessibilityClosed,
  histoneBindingAffinityEvidence := E.histoneBindingAffinityClosed,
  nucleosomeStabilityClosed := nucleosome_stability_closed_from_evidence N E
}

end BiochemistryChromatinBiochemistryCanonicalLaneLean
end HautevilleHouse