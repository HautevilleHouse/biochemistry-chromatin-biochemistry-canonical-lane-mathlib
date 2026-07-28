import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryChromatinBiochemistryCanonicalLaneLean

structure HistoneModificationPackage {A : AdmissibleClass} where
  histoneAcetylated : Prop
  histoneMethylated : Prop
  histonePhosphorylated : Prop
  readerDomainRecruited : Prop

structure HistoneModificationEvidence {A : AdmissibleClass}
    (P : HistoneModificationPackage A) where
  histoneAcetylatedClosed : P.histoneAcetylated
  histoneMethylatedClosed : P.histoneMethylated
  histonePhosphorylatedClosed : P.histonePhosphorylated
  readerDomainRecruitedClosed : P.readerDomainRecruited

def HistoneModificationClosed {A : AdmissibleClass}
    (P : HistoneModificationPackage A) : Prop :=
  P.histoneAcetylated ∧ P.histoneMethylated ∧
  P.histonePhosphorylated ∧ P.readerDomainRecruited

theorem histone_modification_closed_from_evidence
    {A : AdmissibleClass} (P : HistoneModificationPackage A)
    (E : HistoneModificationEvidence P) : HistoneModificationClosed P :=
  And.intro E.histoneAcetylatedClosed
    (And.intro E.histoneMethylatedClosed
      (And.intro E.histonePhosphorylatedClosed E.readerDomainRecruitedClosed))

end BiochemistryChromatinBiochemistryCanonicalLaneLean
end HautevilleHouse