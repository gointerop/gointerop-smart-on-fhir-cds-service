library "gointerop-diabetes-type-2" version '0.0.1'

using FHIR version '4.0.0'

include "FHIRHelpers" version '4.0.0' called FHIRHelpers 
include "CDS_Connect_Commons_for_FHIRv400" version '1.0.1' called C3F 
include "CDS_Connect_Conversions" version '1' called Convert 
codesystem "LOINC": 'http://loinc.org' 


code "Hemoglobin A1c/Hemoglobin.total in Blood code": '4548-4' from "LOINC"
  display 'Hemoglobin A1c/Hemoglobin.total in Blood'



context Patient

define "Hemoglobin A1c/Hemoglobin.total in Blood":
  C3F.HighestObservation([Observation: "Hemoglobin A1c/Hemoglobin.total in Blood code"]) > 7 '%'


define "MeetsInclusionCriteria":
  "Hemoglobin A1c/Hemoglobin.total in Blood"

define "InPopulation":
   "MeetsInclusionCriteria" 

define "Recommendation": 
  if "InPopulation" then 'Coma carboidratos de frutas, vegetais, grãos, com pouca gordura ou desnatados. Escolha carboidratos saudáveis, como frutas, vegetais, grãos, com pouca gordura ou desnatados. Esses devem fazer parte do seu plano de refeição.'
  else null

define "Rationale":
  if "InPopulation" then 'Idealmente a glicose deve ser mantida em níveis normais (pré-prandiais entre 90-130 mg/dL e hemoglobina glicada [HbA1c] menores que 7%. No entanto, foco em glicose apenas não é suficiente para um tratamento adequado de pacientes com diabetes mellitus.'
  else null

define "Errors":
  if null then
    {''}
  else null
