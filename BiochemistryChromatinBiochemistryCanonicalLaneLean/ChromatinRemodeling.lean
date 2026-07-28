import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryChromatinBiochemistryCanonicalLaneLean

structure ChromatinRemodelingPackage {A : AdmissibleClass} where
  remodelingComplexRecruited : Prop
  nucleosomeDisplaced : Prop
  dnaAccessibilityIncreased : Prop
  transcriptionFactorBound : Prop

structure ChromatinRemodelingEvidence {A : AdmissibleClass}
    (P : ChromatinRemodelingPackage A) where
  remodelingComplexRecruitedClosed : P.remodelingComplexRecruited
  nucleosomeDisplacedClosed : P.nucleosomeDisplaced
  dnaAccessibilityIncreasedClosed : P.dnaAccessibilityIncreased
  transcriptionFactorBoundClosed : P.transcriptionFactorBound

def ChromatinRemodelingClosed {A : AdmissibleClass}
    (P : ChromatinRemodelingPackage A) : Prop :=
  P.remodelingComplexRecruited ∧ P.nucleosomeDisplaced ∧
  P.dnaAccessibilityIncreased ∧ P.transcriptionFactorBound

theorem chromatin_remodeling_closed_from_evidence
    {A : AdmissibleClass} (P : ChromatinRemodelingPackage A)
    (E : ChromatinRemodelingEvidence P) : ChromatinRemodelingClosed P :=
  And.intro E.remodelingComplexRecruitedClosed
    (And.intro E.nucleosomeDisplacedClosed
      (And.intro E.dnaAccessibilityIncreasedClosed E.transcriptionFactorBoundClosed))

end BiochemistryChromatinBiochemistryCanonicalLaneLean
end HautevilleHouse