import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryChromatinBiochemistryCanonicalLaneLean

structure NucleosomeAssemblyPackage where
  histoneOctamerFormed : Prop
  dnaWrapped : Prop
  linkerDNAPresent : Prop
  nucleosomePositioning : Prop

structure NucleosomeAssemblyEvidence (P : NucleosomeAssemblyPackage) where
  histoneOctamerFormedClosed : P.histoneOctamerFormed
  dnaWrappedClosed : P.dnaWrapped
  linkerDNAPresentClosed : P.linkerDNAPresent
  nucleosomePositioningClosed : P.nucleosomePositioning

def NucleosomeAssemblyClosed (P : NucleosomeAssemblyPackage) : Prop :=
  P.histoneOctamerFormed ∧ P.dnaWrapped ∧ P.linkerDNAPresent ∧ P.nucleosomePositioning

theorem nucleosome_assembly_closed_from_evidence (P : NucleosomeAssemblyPackage)
    (E : NucleosomeAssemblyEvidence P) : NucleosomeAssemblyClosed P := by
  exact And.intro E.histoneOctamerFormedClosed (And.intro E.dnaWrappedClosed
    (And.intro E.linkerDNAPresentClosed E.nucleosomePositioningClosed))

end BiochemistryChromatinBiochemistryCanonicalLaneLean
end HautevilleHouse