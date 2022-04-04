Profile: DDGDmpComposition
Parent: DDGCoreComposition
Id: ddg-dmp-composition
Title: "DDG DMP Composition"
Description: """Profile to specify how the generic elements (e.g. patient, author) and the healthcare domain specific elements
must be structured in the Composition as the first entry of the document."""
* ^version = "0.0.1"
* ^date = "2022-03-15T11:05:43+01:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "DDG DMP Composition"
* text 0..1 MS // TODO: Optionale Zusammenfassung des Dokuments als Fließtext
* text ^short = "Narrative text of the composition"
* status = #final
* type MS
* type = $lnc#33248-6 "Diabetes Status" (exactly)
* type ^short = "Precise type of clinical document"
* category 1..1 MS
* category = $lnc#33248-6 "Diabetes Status"
* category ^short = "High-level kind of a clinical document at a macro level"
* subject 1..1 MS
* subject only Reference($KBVPatient)
* subject ^short = "Patient being subject of this document"
* author 1..1 MS
* author only Reference(DDGDmpPractitioner)
* author ^short = "The person/organization responsible the content"
* title MS
* title ^short = "Meaningful title"

// Define sections in Composition

* section MS
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains
    consentEda 1..1 MS and
    consentRegistry 1..1 MS and
    // TODO: "Einschreibung wegen?" with values "Asthma bronchiale KHK Diabetes mellitus Typ 1 Diabetes mellitus Typ 2 COPD Chronische Herzinsuffizienz Depression chronischer Rückenschmerz Osteoporose"
    medicalHistory 1.. MS and // TODO Best wording for "Anamnese- und Befunddaten"? Also this should probably also contain "Relevante Ereignisse" from DMP
    medications 1.. MS and
    trainings 1.. MS and
    originalRepresentation 0..1 MS // TODO Only optionally embed PDF?

// Details on section "documentation"

* section[consentEda].entry 1..1 MS
* section[consentEda].entry ^short = "Consent participation in eDA"
* section[consentEda].entry only Reference(DDGDmpConsentEda)

* section[consentRegistry].entry 1..1 MS
* section[consentRegistry].entry ^short = "Consent for participation in research registry"
* section[consentRegistry].entry only Reference(DDGDmpConsentRegistry)

* section[medicalHistory].entry 1.. MS
* section[medicalHistory].entry ^short = "Medical history and status of the patient"

* section[medications].entry 1.. MS
* section[medications].entry ^short = "Medications of the patient"
* section[medications].entry only Reference(DDGDmpMedication or DDGDmpContraIndication)
// * section[medications].entry only Reference(DDGDmpMedicalHistory) // TODO

* section[trainings].entry 0.. MS
* section[trainings].entry ^short = "Diabetes-related trainings"
* section[trainings].entry only Reference(DDGDmpCompletedTrainingEncounter or DDGDmpFutureTrainingAppointment or DDGDmpMissedTraining)

* section[medicalHistory].section ^slicing.discriminator.type = #pattern
* section[medicalHistory].section ^slicing.discriminator.path = "code"
* section[medicalHistory].section ^slicing.rules = #open
* section[medicalHistory].section contains // TODO: Define optionalities
    bodyWeight 1..1 MS and
    bodyHeight 1..1 MS and
    smokingStatus 1..1 MS and
    bloodPressure 1..1 MS and
    secondaryDiseases 1.. MS and
    hba1c 1..1 MS and
    pathologicUrineAlbuminExcretion 1..1 MS and
    eGfr 1..1 MS and
    pulseStatus 1..1 MS and
    sensitivityCheck 1..1 MS and
    furtherRiskForUlcus 1.. MS and
    ulcus 1..1 MS and
    woundInfection 1..1 MS and
    injectionSite 1..1 MS and
    futureFeetInspectionInterval 1..1 MS and
    lateEffects 1..1 MS

* section[medicalHistory].section[bodyWeight].entry 1..1 MS
* section[medicalHistory].section[bodyWeight].entry only Reference($BodyWeight)
* section[medicalHistory].section[bodyHeight].entry 1..1 MS
* section[medicalHistory].section[bodyHeight].entry only Reference($BodyHeight)
* section[medicalHistory].section[smokingStatus].entry 1..1 MS
* section[medicalHistory].section[smokingStatus].entry only Reference(DDGDmpMedicalHistorySmokingStatus)
* section[medicalHistory].section[bloodPressure].entry 1..1 MS
* section[medicalHistory].section[bloodPressure].entry only Reference($BloodPressure)
* section[medicalHistory].section[secondaryDiseases].entry 1..1 MS
* section[medicalHistory].section[secondaryDiseases].entry only Reference(DDGDmpMedicalHistorySecondaryDiseases)
* section[medicalHistory].section[hba1c].entry 1..1 MS
* section[medicalHistory].section[hba1c].entry only Reference(DDGDmpMedicalHistoryHba1cMmol or DDGDmpMedicalHistoryHba1cPercent)
* section[medicalHistory].section[pathologicUrineAlbuminExcretion].entry 1..1 MS
* section[medicalHistory].section[pathologicUrineAlbuminExcretion].entry only Reference(DDGDmpMedicalHistoryPathologicUrineAlbuminExcretion)
* section[medicalHistory].section[eGfr].entry 1..1 MS
* section[medicalHistory].section[eGfr].entry only Reference(DDGDmpMedicalHistoryEgfr)
* section[medicalHistory].section[pulseStatus].entry 1..1 MS
* section[medicalHistory].section[pulseStatus].entry only Reference(DDGDmpMedicalHistoryPulseStatus)
* section[medicalHistory].section[sensitivityCheck].entry 1..1
* section[medicalHistory].section[sensitivityCheck].entry only Reference(DDGDmpMedicalHistorySensitivityCheck)
* section[medicalHistory].section[furtherRiskForUlcus].entry 1.. MS
* section[medicalHistory].section[furtherRiskForUlcus].entry only Reference(DDGDmpMedicalHistoryFurtherRiskUlcus)
* section[medicalHistory].section[ulcus].entry 1..1 MS
* section[medicalHistory].section[ulcus].entry only Reference(DDGDmpMedicalHistoryUlcus)
* section[medicalHistory].section[woundInfection].entry 1..1 MS
* section[medicalHistory].section[woundInfection].entry only Reference(DDGDmpMedicalHistoryWoundInfection)
* section[medicalHistory].section[injectionSite].entry 1..1 MS
* section[medicalHistory].section[injectionSite].entry only Reference(DDGDmpMedicalHistoryInjectionSite)
// futureFeetInspectionInterval -> moved to treatment planning where it makes more sense (TODO ok?)
* section[medicalHistory].section[lateEffects].entry 0.. MS
* section[medicalHistory].section[lateEffects].entry only Reference(DDGDmpMedicalHistoryLateEffects)

// Details on section "originalPresentation" for including the original PDF if available
* section[originalRepresentation] ^short = "Contains the document's information in PDF format"
* section[originalRepresentation].title 1.. MS
* section[originalRepresentation].title ^short = "Title of the attached document"
* section[originalRepresentation].code 1.. MS
* section[originalRepresentation].code = $lnc#55108-5 "Clinical presentation"
* section[originalRepresentation].text 1.. MS
* section[originalRepresentation].text ^short = "Representation of the original view"
* section[originalRepresentation].entry 1..1 MS
* section[originalRepresentation].entry only Reference(Binary)
* section[originalRepresentation].entry ^short = "The DMP PDF has to be in PDF/A-1 or PDF/A-2 format."
* section[originalRepresentation].section ..0


// Further treatment planning, enrollment reason, events since last documentation
* extension contains
    DDGDmpEnrollmentReason named enrollmentReason 1.. MS and // TODO: Or 1..1?
    DDGDmpTreatmentPlanning named treatmentPlanning 1..1 MS and
    DDGDmpRelevantEvents named relevantEvents 1..1 MS and
    DDGDmpEmergencyInpatientTreatmentEvents named emergencyInpatientTreatmens 0..1 MS and
    DDGDmpSevereHypoglycemiaEvents named severeHypoglycemiaEvents 0..1
    //DDGDmpOpthalmicRetinalExamination named opthalmicRetinalExamination 0..1 MS // or 1..1?
