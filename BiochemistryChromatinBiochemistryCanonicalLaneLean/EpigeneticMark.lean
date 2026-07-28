import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryChromatinBiochemistryCanonicalLaneLean

structure EpigeneticMarkPackage where
  histoneModification : Prop
  dnaMethylation : Prop
  chromatinRemodeling : Prop
  transcriptionalRegulation : Prop

structure EpigeneticMarkEvidence (P : EpigeneticMarkPackage) where
  histoneModificationClosed : P.histoneModification
  dnaMethylationClosed : P.dnaMethylation
  chromatinRemodelingClosed : P.chromatinRemodeling
  transcriptionalRegulationClosed : P.transcriptionalRegulation

def EpigeneticMarkClosed (P : EpigeneticMarkPackage) : Prop :=
  P.histoneModification ∧ P.dnaMethylation ∧ P.chromatinRemodeling ∧ P.transcriptionalRegulation

theorem epigenetic_mark_closed_from_evidence (P : EpigeneticMarkPackage)
    (E : EpigeneticMarkEvidence P) : EpigeneticMarkClosed P := by
  exact And.intro E.histoneModificationClosed (And.intro E.dnaMethylationClosed
    (And.intro E.chromatinRemodelingClosed E.transcriptionalRegulationClosed))

end BiochemistryChromatinBiochemistryCanonicalLaneLean
end HautevilleHouse