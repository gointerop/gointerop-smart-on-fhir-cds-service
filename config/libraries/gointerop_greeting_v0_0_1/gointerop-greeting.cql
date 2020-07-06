library "gointerop-greeting" version '0.0.1'
using FHIR version '4.0.0'
include "FHIRHelpers" version '4.0.0' called FHIRHelpers 
context Patient


define "InPopulation":
  null

define "Recommendation": 
  if "InPopulation" then 'Seja bem vindo!'
  else null
  

define "Rationale":
  if "InPopulation" then 'Essa é uma típica notificação de CDS Hooks da GOInterop! Vamos prover apoio à decisão assistencial (prescrição médica, procedimentos, etc) e back-office (faturamento, elegibilidade e recurso de glosa).'
  else null

define "Errors":
  null

