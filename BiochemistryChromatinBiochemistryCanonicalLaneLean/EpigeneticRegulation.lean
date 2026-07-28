import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryChromatinBiochemistryCanonicalLaneLean

structure EpigeneticRegulationPackage where
  dnaMethylation : Prop
  histoneModifications : Prop
  chromatinRemodeling : Prop
  noncodingRNAs : Prop
  genomicImprinting : Prop

structure EpigeneticRegulationEvidence (E : EpigeneticRegulationPackage) where
  dnaMethylationClosed : E.dnaMethylation
  histoneModificationsClosed : E.histoneModifications
  chromatinRemodelingClosed : E.chromatinRemodeling
  noncodingRNAsClosed : E.noncodingRNAs
  genomicImprintingClosed : E.genomicImprinting

def EpigeneticRegulationClosed (E : EpigeneticRegulationPackage) : Prop :=
  E.dnaMethylation ∧ E.histoneModifications ∧ E.chromatinRemodeling ∧ E.noncodingRNAs ∧ E.genomicImprinting

theorem epigenetic_regulation_closed_from_evidence (E : EpigeneticRegulationPackage) (Ev : EpigeneticRegulationEvidence E) :
    EpigeneticRegulationClosed E := by
  exact And.intro Ev.dnaMethylationClosed
    (And.intro Ev.histoneModificationsClosed
      (And.intro Ev.chromatinRemodelingClosed
        (And.intro Ev.noncodingRNAsClosed Ev.genomicImprintingClosed)))

end BiochemistryChromatinBiochemistryCanonicalLaneLean
end HautevilleHouse