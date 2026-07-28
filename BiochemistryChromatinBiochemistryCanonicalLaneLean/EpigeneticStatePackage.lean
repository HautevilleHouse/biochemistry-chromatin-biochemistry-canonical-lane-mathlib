import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryChromatinBiochemistryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryChromatinBiochemistryCanonicalLaneLean

structure EpigeneticStatePackage (A : ChromatinAdmissibleObject) where
  dnaMethylation : Float
  histoneModificationState : String
  chromatinAccessibility : Float
  transcriptionalCompetence : Prop
  cellularMemory : Prop
  environmentalResponsiveness : Prop

structure EpigeneticStateEvidence {A : ChromatinAdmissibleObject}
    (E : EpigeneticStatePackage A) where
  transcriptionalCompetenceClosed : E.transcriptionalCompetence
  cellularMemoryClosed : E.cellularMemory
  environmentalResponsivenessClosed : E.environmentalResponsiveness

def EpigeneticStateClosed {A : ChromatinAdmissibleObject} (E : EpigeneticStatePackage A) : Prop :=
  E.transcriptionalCompetence ∧ E.cellularMemory ∧ E.environmentalResponsiveness

theorem epigenetic_state_closed_from_evidence
    {A : ChromatinAdmissibleObject} (E : EpigeneticStatePackage A)
    (Ev : EpigeneticStateEvidence E) : EpigeneticStateClosed E := by
  exact And.intro Ev.transcriptionalCompetenceClosed
    (And.intro Ev.cellularMemoryClosed Ev.environmentalResponsivenessClosed)

end BiochemistryChromatinBiochemistryCanonicalLaneLean
end HautevilleHouse