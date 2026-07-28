import BiochemistryChromatinBiochemistryCanonicalLaneLean.ChromatinAdmissibleClass

namespace HautevilleHouse
namespace BiochemistryChromatinBiochemistryCanonicalLaneLean

structure NucleosomeDynamicsPackage (A : AdmissibleClass) where
  nucleosomeRemodeling : Prop
  histoneModification : Prop
  dnaAccessibility : Prop
  transcriptionFactorBinding : Prop
  chromatinStateTransition : Prop

structure NucleosomeDynamicsEvidence {A : AdmissibleClass} (P : NucleosomeDynamicsPackage A) where
  nucleosomeRemodelingClosed : P.nucleosomeRemodeling
  histoneModificationClosed : P.histoneModification
  dnaAccessibilityClosed : P.dnaAccessibility
  transcriptionFactorBindingClosed : P.transcriptionFactorBinding
  chromatinStateTransitionClosed : P.chromatinStateTransition

def NucleosomeDynamicsClosed {A : AdmissibleClass} (P : NucleosomeDynamicsPackage A) : Prop :=
  P.nucleosomeRemodeling ∧ P.histoneModification ∧ P.dnaAccessibility ∧ P.transcriptionFactorBinding ∧ P.chromatinStateTransition

theorem nucleosome_dynamics_closed_from_evidence
    {A : AdmissibleClass} (P : NucleosomeDynamicsPackage A) (E : NucleosomeDynamicsEvidence P) :
    NucleosomeDynamicsClosed P := by
  exact And.intro E.nucleosomeRemodelingClosed
    (And.intro E.histoneModificationClosed
      (And.intro E.dnaAccessibilityClosed
        (And.intro E.transcriptionFactorBindingClosed E.chromatinStateTransitionClosed)))

end BiochemistryChromatinBiochemistryCanonicalLaneLean
end HautevilleHouse