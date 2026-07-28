import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryChromatinBiochemistryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryChromatinBiochemistryCanonicalLaneLean

structure HistoneModificationCodePackage (A : ChromatinAdmissibleObject) where
  histoneVariants : List String
  modificationTypes : List String
  modificationPatterns : Prop
  readerWritersErasers : Prop
  combinatorialCode : Prop
  crossTalkMechanisms : Prop

structure HistoneModificationCodeEvidence {A : ChromatinAdmissibleObject}
    (H : HistoneModificationCodePackage A) where
  modificationPatternsClosed : H.modificationPatterns
  readerWritersErasersClosed : H.readerWritersErasers
  combinatorialCodeClosed : H.combinatorialCode
  crossTalkMechanismsClosed : H.crossTalkMechanisms

def HistoneModificationCodeClosed {A : ChromatinAdmissibleObject}
    (H : HistoneModificationCodePackage A) : Prop :=
  H.modificationPatterns ∧ H.readerWritersErasers ∧ H.combinatorialCode ∧ H.crossTalkMechanisms

theorem histone_modification_code_closed_from_evidence
    {A : ChromatinAdmissibleObject} (H : HistoneModificationCodePackage A)
    (E : HistoneModificationCodeEvidence H) : HistoneModificationCodeClosed H := by
  exact And.intro E.modificationPatternsClosed
    (And.intro E.readerWritersErasersClosed
      (And.intro E.combinatorialCodeClosed E.crossTalkMechanismsClosed))

end BiochemistryChromatinBiochemistryCanonicalLaneLean
end HautevilleHouse