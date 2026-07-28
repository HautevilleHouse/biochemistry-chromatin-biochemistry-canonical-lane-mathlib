import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryChromatinBiochemistryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryChromatinBiochemistryCanonicalLaneLean

structure ChromatinRemodelingPackage (A : ChromatinAdmissibleObject) where
  atpDependentRemodelers : Prop
  slidingEjectionInsertion : Prop
  histoneChaperones : Prop
  remodelingComplexes : List String
  nucleosomeDynamics : Prop
  energyDependency : Prop

structure ChromatinRemodelingEvidence {A : ChromatinAdmissibleObject}
    (R : ChromatinRemodelingPackage A) where
  atpDependentRemodelersClosed : R.atpDependentRemodelers
  slidingEjectionInsertionClosed : R.slidingEjectionInsertion
  histoneChaperonesClosed : R.histoneChaperones
  nucleosomeDynamicsClosed : R.nucleosomeDynamics
  energyDependencyClosed : R.energyDependency

def ChromatinRemodelingClosed {A : ChromatinAdmissibleObject}
    (R : ChromatinRemodelingPackage A) : Prop :=
  R.atpDependentRemodelers ∧ R.slidingEjectionInsertion ∧ R.histoneChaperones ∧
  R.nucleosomeDynamics ∧ R.energyDependency

theorem chromatin_remodeling_closed_from_evidence
    {A : ChromatinAdmissibleObject} (R : ChromatinRemodelingPackage A)
    (E : ChromatinRemodelingEvidence R) : ChromatinRemodelingClosed R := by
  exact And.intro E.atpDependentRemodelersClosed
    (And.intro E.slidingEjectionInsertionClosed
      (And.intro E.histoneChaperonesClosed
        (And.intro E.nucleosomeDynamicsClosed E.energyDependencyClosed)))

end BiochemistryChromatinBiochemistryCanonicalLaneLean
end HautevilleHouse