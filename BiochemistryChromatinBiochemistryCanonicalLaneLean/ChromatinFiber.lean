import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryChromatinBiochemistryCanonicalLaneLean

structure ChromatinFiberPackage where
  nucleosomeArray : Prop
  fiberCompaction : Prop
  scaffoldAttachment : Prop
  higherOrderStructure : Prop

structure ChromatinFiberEvidence (P : ChromatinFiberPackage) where
  nucleosomeArrayClosed : P.nucleosomeArray
  fiberCompactionClosed : P.fiberCompaction
  scaffoldAttachmentClosed : P.scaffoldAttachment
  higherOrderStructureClosed : P.higherOrderStructure

def ChromatinFiberClosed (P : ChromatinFiberPackage) : Prop :=
  P.nucleosomeArray ∧ P.fiberCompaction ∧ P.scaffoldAttachment ∧ P.higherOrderStructure

theorem chromatin_fiber_closed_from_evidence (P : ChromatinFiberPackage)
    (E : ChromatinFiberEvidence P) : ChromatinFiberClosed P := by
  exact And.intro E.nucleosomeArrayClosed (And.intro E.fiberCompactionClosed
    (And.intro E.scaffoldAttachmentClosed E.higherOrderStructureClosed))

end BiochemistryChromatinBiochemistryCanonicalLaneLean
end HautevilleHouse