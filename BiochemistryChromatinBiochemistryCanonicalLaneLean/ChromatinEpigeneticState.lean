import BiochemistryChromatinBiochemistryCanonicalLaneLean.ChromatinNucleosomeDynamics

namespace HautevilleHouse
namespace BiochemistryChromatinBiochemistryCanonicalLaneLean

structure EpigeneticStatePackage {A : AdmissibleClass} (P : NucleosomeDynamicsPackage A) where
  cellType : Type
  differentiationPotential : Prop
  epigeneticMemory : Prop
  chromatinModificationPattern : Prop
  geneExpressionProfile : Prop
  stateTransitionGraph : Prop

structure EpigeneticStateEvidence {A : AdmissibleClass} {P : NucleosomeDynamicsPackage A} (E : EpigeneticStatePackage P) where
  differentiationPotentialClosed : E.differentiationPotential
  epigeneticMemoryClosed : E.epigeneticMemory
  chromatinModificationPatternClosed : E.chromatinModificationPattern
  geneExpressionProfileClosed : E.geneExpressionProfile
  stateTransitionGraphClosed : E.stateTransitionGraph

def EpigeneticStateClosed {A : AdmissibleClass} {P : NucleosomeDynamicsPackage A} (E : EpigeneticStatePackage P) : Prop :=
  E.differentiationPotential ∧ E.epigeneticMemory ∧ E.chromatinModificationPattern ∧ E.geneExpressionProfile ∧ E.stateTransitionGraph

theorem epigenetic_state_closed_from_evidence
    {A : AdmissibleClass} {P : NucleosomeDynamicsPackage A} (Epkg : EpigeneticStatePackage P)
    (Ev : EpigeneticStateEvidence Epkg) : EpigeneticStateClosed Epkg := by
  exact And.intro Ev.differentiationPotentialClosed
    (And.intro Ev.epigeneticMemoryClosed
      (And.intro Ev.chromatinModificationPatternClosed
        (And.intro Ev.geneExpressionProfileClosed Ev.stateTransitionGraphClosed)))

end BiochemistryChromatinBiochemistryCanonicalLaneLean
end HautevilleHouse