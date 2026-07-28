import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryChromatinBiochemistryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryChromatinBiochemistryCanonicalLaneLean

structure NucleosomePositioningPackage (A : ChromatinAdmissibleObject) where
  dnaSequence : String
  nucleosomeOccupancy : Float
  positioningScore : Float
  sequenceDependentBinding : Prop
  statisticalPositioning : Prop
  sequenceSpecificFactors : Prop

structure NucleosomePositioningEvidence {A : ChromatinAdmissibleObject} (P : NucleosomePositioningPackage A) where
  sequenceDependentBindingClosed : P.sequenceDependentBinding
  statisticalPositioningClosed : P.statisticalPositioning
  sequenceSpecificFactorsClosed : P.sequenceSpecificFactors

def NucleosomePositioningClosed {A : ChromatinAdmissibleObject} (P : NucleosomePositioningPackage A) : Prop :=
  P.sequenceDependentBinding ∧ P.statisticalPositioning ∧ P.sequenceSpecificFactors

theorem nucleosome_positioning_closed_from_evidence
    {A : ChromatinAdmissibleObject} (P : NucleosomePositioningPackage A)
    (E : NucleosomePositioningEvidence P) : NucleosomePositioningClosed P := by
  exact And.intro E.sequenceDependentBindingClosed
    (And.intro E.statisticalPositioningClosed E.sequenceSpecificFactorsClosed)

end BiochemistryChromatinBiochemistryCanonicalLaneLean
end HautevilleHouse