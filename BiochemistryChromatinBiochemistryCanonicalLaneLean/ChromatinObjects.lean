import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryChromatinBiochemistryCanonicalLaneLean

structure DNA where
  sequence : List (Char)
  topology : Prop
deriving Repr

structure Histone where
  type : String
  modifications : List (String)
deriving Repr

structure Nucleosome where
  dna : DNA
  histones : List Histone
  position : Nat
  occupancy : Float
deriving Repr

structure ChromatinFiber where
  nucleosomes : List Nucleosome
  compactionLevel : Float
deriving Repr

structure ChromatinAdmittedObject where
  fiber : ChromatinFiber
  isModel : Prop
  conclusion : isModel
deriving Repr

end BiochemistryChromatinBiochemistryCanonicalLaneLean
end HautevilleHouse