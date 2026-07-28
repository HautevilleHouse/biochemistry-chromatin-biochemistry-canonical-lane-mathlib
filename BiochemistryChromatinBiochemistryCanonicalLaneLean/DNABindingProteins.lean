import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryChromatinBiochemistryCanonicalLaneLean

structure DNABindingProteinsPackage where
  transcriptionFactors : Prop
  histones : Prop
  chromatinRemodelers : Prop
  polymerases : Prop
  repairProteins : Prop

structure DNABindingProteinsEvidence (D : DNABindingProteinsPackage) where
  transcriptionFactorsClosed : D.transcriptionFactors
  histonesClosed : D.histones
  chromatinRemodelersClosed : D.chromatinRemodelers
  polymerasesClosed : D.polymerases
  repairProteinsClosed : D.repairProteins

def DNABindingProteinsClosed (D : DNABindingProteinsPackage) : Prop :=
  D.transcriptionFactors ∧ D.histones ∧ D.chromatinRemodelers ∧ D.polymerases ∧ D.repairProteins

theorem dna_binding_proteins_closed_from_evidence (D : DNABindingProteinsPackage) (E : DNABindingProteinsEvidence D) :
    DNABindingProteinsClosed D := by
  exact And.intro E.transcriptionFactorsClosed
    (And.intro E.histonesClosed
      (And.intro E.chromatinRemodelersClosed
        (And.intro E.polymerasesClosed E.repairProteinsClosed)))

end BiochemistryChromatinBiochemistryCanonicalLaneLean
end HautevilleHouse