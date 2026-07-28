import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryChromatinBiochemistryCanonicalLaneLean

structure GeneExpressionRegulationPackage where
  transcriptionalActivation : Prop
  transcriptionalRepression : Prop
  enhancerPromoterInteractions : Prop
  insulatorBinding : Prop
  rnaPolymeraseElongation : Prop

structure GeneExpressionRegulationEvidence (G : GeneExpressionRegulationPackage) where
  transcriptionalActivationClosed : G.transcriptionalActivation
  transcriptionalRepressionClosed : G.transcriptionalRepression
  enhancerPromoterInteractionsClosed : G.enhancerPromoterInteractions
  insulatorBindingClosed : G.insulatorBinding
  rnaPolymeraseElongationClosed : G.rnaPolymeraseElongation

def GeneExpressionRegulationClosed (G : GeneExpressionRegulationPackage) : Prop :=
  G.transcriptionalActivation ∧ G.transcriptionalRepression ∧ G.enhancerPromoterInteractions ∧ G.insulatorBinding ∧ G.rnaPolymeraseElongation

theorem gene_expression_regulation_closed_from_evidence (G : GeneExpressionRegulationPackage) (E : GeneExpressionRegulationEvidence G) :
    GeneExpressionRegulationClosed G := by
  exact And.intro E.transcriptionalActivationClosed
    (And.intro E.transcriptionalRepressionClosed
      (And.intro E.enhancerPromoterInteractionsClosed
        (And.intro E.insulatorBindingClosed E.rnaPolymeraseElongationClosed)))

end BiochemistryChromatinBiochemistryCanonicalLaneLean
end HautevilleHouse