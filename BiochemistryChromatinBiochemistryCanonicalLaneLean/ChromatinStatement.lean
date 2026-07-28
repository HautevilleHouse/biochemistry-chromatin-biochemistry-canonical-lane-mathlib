import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryChromatinBiochemistryCanonicalLaneLean.ChromatinObjects

namespace HautevilleHouse
namespace BiochemistryChromatinBiochemistryCanonicalLaneLean

structure ChromatinTheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : ChromatinTheoremStatement := {
  sourceKey := "chromatin-biochemistry-canonical-lane",
  theoremName := "NucleosomeArrayPacking",
  theoremObject := "Chromatin fiber structure and dynamics",
  classicalBoundary := "classical boundary of chromatin biochemistry",
  constrainedStatement := "constrained nucleosome array closure",
  certificateLane := "biochemistry_constrained",
  carriedRemainder := "carried remainder: chromatin dynamics"
}

theorem theorem_statement_source_key_checked : sourceTheoremStatement.sourceKey = "chromatin-biochemistry-canonical-lane" := by
  rfl

end BiochemistryChromatinBiochemistryCanonicalLaneLean
end HautevilleHouse