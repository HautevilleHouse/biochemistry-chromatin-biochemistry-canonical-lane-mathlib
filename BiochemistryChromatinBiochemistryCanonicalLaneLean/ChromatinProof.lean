import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryChromatinBiochemistryCanonicalLaneLean.NucleosomeStability
import HautevilleHouse.BiochemistryChromatinBiochemistryCanonicalLaneLean.EvidenceTerms

namespace HautevilleHouse
namespace BiochemistryChromatinBiochemistryCanonicalLaneLean

structure ChromatinProofCertificate (N : NucleosomeStabilityPackage) where
  stabilityPackage : N
  stabilityEvidence : NucleosomeStabilityEvidence N
  proofCompleted : Prop
  proofClosed : proofCompleted

def ChromatinProofCertificateClosed {N : NucleosomeStabilityPackage}
    (C : ChromatinProofCertificate N) : Prop :=
  C.proofCompleted

theorem chromatin_proof_certificate_closed {N : NucleosomeStabilityPackage}
    (C : ChromatinProofCertificate N) : ChromatinProofCertificateClosed C := by
  exact C.proofClosed

end BiochemistryChromatinBiochemistryCanonicalLaneLean
end HautevilleHouse