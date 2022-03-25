Profile: DDGDmpMedicalHistorySmokingStatus
Parent: Observation
Id: ddg-dmp-medical-history-smoking-status
Title: "DDG DMP Medical History Smoking Status"
Description: "DDG Medical History Smoking Status in DMP documents"
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "DDG DMP Medical History Smoking Status"

* insert DDGDmpSimpleObservation($obs_category#social-history, $lnc#64234-8)
* value[x] 1..1 MS
* value[x] ^short = "Denotes whether patient smokes or not"
* value[x] only boolean


// -----------------------------------------------------------------------------

Profile: DDGDmpMedicalHistorySecondaryDiseases
Parent: Condition
Id: ddg-dmp-medical-history-secondary-diseases
Title: "DDG DMP Medical History Secondary Diseases"
Description: "DDG Medical History Secondary Diseases in DMP documents"
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "DDG DMP Medical History Secondary Diseases"

// TODO: Do we want to allow anything but clinicalStaus = "active"?
// * clinicalStatus 0..1 MS
* clinicalStatus = $cond_status#active
* category 1..1 MS
* category = $cond_category#problem-list-item
* code 1..1 MS
* code from DdgDmpSecondaryDiseases
* subject 1..1 MS
* subject only Reference(DDGDmpPatient)

// -----------------------------------------------------------------------------

RuleSet: DDGDmpMedicalHistoryHba1c(unit)
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* status = #final
* category 1..1 MS
* category = $obs_category#laboratory
* code 1..1 MS
* code = $sct#43396009
* subject only Reference(DDGDmpPatient)
* effectiveDateTime 1..1 MS
* value[x] 1..1 MS
* value[x] ^short = "Measured HbA1c Quantity"
* value[x] only Quantity
* valueQuantity.value 1..1 MS
* valueQuantity.unit 1..1 MS
* valueQuantity.unit = {unit}
* valueQuantity.system = "http://unitsofmeasure.org"

Profile: DDGDmpMedicalHistoryHba1cMmol
Parent: Observation
Id: ddg-dmp-medical-history-hba1c-mmol
Title: "DDG DMP Medical History HbA1c mmol/mol"
Description: "DDG Medical History HbA1c mmol/mol in DMP documents"
* . ^short = "DDG DMP Medical History HbA1c mmol/mol"
* insert DDGDmpMedicalHistoryHba1c("mmol/mol")

Profile: DDGDmpMedicalHistoryHba1cPercent
Parent: Observation
Id: ddg-dmp-medical-history-percent
Title: "DDG DMP Medical History HbA1c Percent"
Description: "DDG Medical History HbA1c Percent in DMP documents"
* . ^short = "DDG DMP Medical History HbA1c Percent"
* insert DDGDmpMedicalHistoryHba1c("%")

// -----------------------------------------------------------------------------

Profile: DDGDmpMedicalHistoryPathologicUrineAlbuminExcretion
Parent: Observation
Id: ddg-dmp-medical-history-urine-albumin-excretion
Title: "DDG DMP Medical History Urine Albumin Excretion"
Description: "DDG Medical History Urine Albumin Excretion in DMP documents"
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "DDG DMP Medical History Urine Albumin Excretion"
* insert DDGDmpSimpleObservation($obs_category#laboratory, CS_DDGDmpMedicalHistoryProblemItem#pathologic_urine_albumin_excretion)
* value[x] 1..1 MS
* value[x] ^short = "Denotes whether patient shows pathological urine albumin excretion"
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept from VS_DDGDmpMedicalHistoryPathologicUrineAlbuminExcretion (required)
