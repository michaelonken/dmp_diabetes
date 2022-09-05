// BodyHeight, BodyWeight, Blood pressure (dia/sys) defined elsewhere, see related Composition

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

* insert DDGDmpSimpleObservation($obs_category#social-history, $lnc#72166-2)
* value[x] 1..1 MS
* value[x] ^short = "Denotes whether patient smokes or not"
* value[x] only boolean


// -----------------------------------------------------------------------------

Profile: DDGDmpMedicalHistorySequelae
Parent: Condition
Id: ddg-dmp-medical-history-sequeale
Title: "DDG DMP Medical History Sequelae"
Description: "DDG Medical History Sequelae in DMP documents"
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "DDG DMP Medical History Sequelae"

// TODO: Do we want to allow anything but clinicalStaus = "active"?
// * clinicalStatus 0..1 MS
* clinicalStatus = $cond_status#active
* category 1..1 MS
* category = $cond_category#problem-list-item
* code 1..1 MS
* code from DdgDmpSequelae (required)
* subject 1..1 MS
* subject only Reference($DmpPatient)

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
* code = $sct#43396009 //  Hemoglobin A1c measurement (procedure)
* subject only Reference($DmpPatient)
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
// TODO: $sct71628007 = "Abnormal presence of albumin (finding)" applicable?
* insert DDGDmpSimpleObservation($obs_category#laboratory, $sct#271075006) //  Urine albumin/creatinine ratio measurement (procedure)
* value[x] 1..1 MS
* value[x] ^short = "Denotes whether patient shows pathological urine albumin excretion"
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept from VS_DDGDmpYesNoNotdone (required)

// -----------------------------------------------------------------------------

Profile: DDGDmpMedicalHistoryEgfr
Parent: Observation
Id: ddg-dmp-medical-history-egfr
Title: "DDG DMP Medical History eGFR"
Description: "DDG Medical History Estimated Glomerular Filtration Rate (eGFR) in DMP documents"
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "DDG DMP Medical History Estimated Glomerular Filtration Rate (eGFR) in DMP documents"
* insert DDGDmpSimpleObservation($obs_category#laboratory, $sct#80274001)
// TODO Description/Invariant: Either value or dataAbsentReason has to be provided
* value[x] 0..1 MS
* value[x] ^short = "Measured eGFR"
* value[x] only Quantity
* valueQuantity MS
* valueQuantity.value 1..1 MS
* valueQuantity.unit 1..1 MS
* valueQuantity.unit = "mL/min{1.73m2}" // TODO: Is this correct? Background at https://ucum.org/trac/ticket/98
* valueQuantity.system = "http://unitsofmeasure.org"
* dataAbsentReason 0..1 MS
* dataAbsentReason = $sct#416237000 // Procedure not done.

// -----------------------------------------------------------------------------

Profile: DDGDmpFootStatusPulseStatus
Parent: Observation
Id: ddg-dmp-medical-history-pulse-status
Title: "DDG DMP T2DM Pulse Status"
Description: "DDG DMP T2DM Pulse Status"
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "DDG DMP Medical History eGFR"
* insert DDGDmpSimpleObservation($obs_category#vital-signs, $sct#8499008)
// TODO Description/Invariant: Either value or dataAbsentReason has to be provided
* value[x] 1..1 MS
* value[x] ^short = "Denotes whether patient showed normal or abnormal pulse"
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept from DdgDmpNormalAbnormalPulse (required)
* dataAbsentReason 0..1 MS
* dataAbsentReason = $sct#416237000 // Procedure not done.

// -----------------------------------------------------------------------------

Profile: DDGDmpMedicalHistorySensitivityCheck
Parent: Observation
Id: ddg-dmp-medical-history-sensitivity-check
Title: "DDG DMP Medical History Sensitivity Check"
Description: "DDG Medical History Sensitivity Check in DMP documents"
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "DDG DMP Medical History Sensitivity Check"

* insert DDGDmpSimpleObservation($obs_category#exam, CS_DDGDmpMedicalHistoryProblemItem#sensitivity_check)
* valueCodeableConcept MS
* valueCodeableConcept from DdgDmpNormalAbnormal (required)
* dataAbsentReason 0..1 MS
* dataAbsentReason = $sct#416237000 // Procedure not done.

// -----------------------------------------------------------------------------

Profile: DDGDmpMedicalHistoryFurtherRiskUlcus
Parent: Condition
Id: ddg-dmp-medical-history-further-risk-ulcus
Title: "DDG DMP Medical History Further Risk for Ulcus"
Description: "DDG Medical History Further Risk for Ulcus in DMP documents"
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "DDG DMP Medical History Further Risk for Ulcus"

// TODO: Do we want to allow anything but clinicalStaus = "active"?
// * clinicalStatus 0..1 MS
* clinicalStatus = $cond_status#active
* category 1..1 MS
* category = $cond_category#problem-list-item
* code 1..1 MS
* code from DdgDmpFurtherRiskUlcus (required)
* subject 1..1 MS
* subject only Reference($DmpPatient)


// -----------------------------------------------------------------------------

Profile: DDGDmpMedicalHistoryUlcus
Parent: Observation
Id: ddg-dmp-medical-history-ulcus
Title: "DDG DMP Medical Ulcus"
Description: "DDG Medical History Ulcus in DMP documents"
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "DDG DMP Medical History Ulcus"
* insert DDGDmpSimpleObservation($obs_category#exam, $sct#713130008) // Code for " Assessment of diabetic foot ulcer (procedure)"
* valueCodeableConcept MS
* valueCodeableConcept from DdgDmpUlcus (required)
* dataAbsentReason 0..1 MS
* dataAbsentReason = $sct#416237000 // Procedure not done.

// -----------------------------------------------------------------------------

Profile: DDGDmpMedicalHistoryWoundInfection
Parent: Observation
Id: ddg-dmp-medical-history-wound-infection
Title: "DDG DMP Medical History Wound Infection"
Description: "DDG Medical History Wound Infection in DMP documents"
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "DDG DMP Medical History Wound Infection"

// KBV Values:
// ja
// nein
// nicht untersucht

* insert DDGDmpSimpleObservation($obs_category#exam, $sct#76844004) // Code for "Local infection of wound (disorder)"
* value[x] only boolean
* valueBoolean 0..1
* dataAbsentReason 0..1 MS
* dataAbsentReason = $sct#416237000 // Procedure not done.


// -----------------------------------------------------------------------------

Profile: DDGDmpMedicalHistoryInjectionSite
Parent: Observation
Id: ddg-dmp-medical-history-injection-site
Title: "DDG DMP Injection Site (for Insulin Therapy)"
Description: "DDG Medical History Injection Site (for Insulin Therapy) in DMP documents"
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "DDG DMP Medical History Injection Site"

// KBV Values:
// Unauffällig
// Auffällig
// Nicht untersucht

* insert DDGDmpSimpleObservation($obs_category#exam, $sct#13136005) // Code for "Injection site (morphologic abnormality)"
* valueCodeableConcept MS
* valueCodeableConcept from DdgDmpNormalAbnormal (required)
* dataAbsentReason 0..1 MS
* dataAbsentReason = $sct#416237000 // Procedure not done.


// -----------------------------------------------------------------------------

Profile: DDGDmpMedicalHistorylateComplications
Parent: Condition
Id: ddg-dmp-medical-history-late-effects
Title: "DDG DMP Medical History Late Complications"
Description: "DDG Medical History Late Complications in DMP documents"
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "DDG DMP Medical History Late Complications"

// TODO: Do we want to allow anything but clinicalStaus = "active"?
// * clinicalStatus 0..1 MS
* clinicalStatus = $cond_status#active
* category 1..1 MS
* category = $cond_category#problem-list-item
* code 1..1 MS
* code from DdgDmpLateComplications (required)
* subject 1..1 MS
* subject only Reference($DmpPatient)