import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryChromatinBiochemistryCanonicalLaneLean

structure ChromatinAdmittedObject where
  dnaSequence : String
  histoneModificationPattern : List String
  nucleosomePosition : List Nat
  chromatinState : Prop
  conclusion : chromatinState

structure AdmissibleClass where
  object : ChromatinAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ChromatinWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiochemistryChromatinBiochemistryCanonicalLaneLean
end HautevilleHouse