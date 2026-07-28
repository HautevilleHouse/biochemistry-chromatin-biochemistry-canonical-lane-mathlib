import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryChromatinBiochemistryCanonicalLaneLean

structure ChromatinAdmittedObject where
  nucleosomeType : Type
  modificationState : Prop
  epigeneticMark : Prop
  bindingFactor : Prop
  conclusion : modificationState ∧ epigeneticMark ∧ bindingFactor

structure AdmissibleClass where
  object : ChromatinAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ChromatinWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiochemistryChromatinBiochemistryCanonicalLaneLean
end HautevilleHouse