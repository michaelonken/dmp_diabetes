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
* subject only Reference(DDGDmpPatient)
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
* section[medications].entry only Reference(DDGDmpMedicalHistory)

* section[trainings].entry 1.. MS
* section[medications].entry ^short = "Diabetes-related trainings"
* section[trainings].entry only Reference(DDGDmpTraining)

* section[medicalHistory].section ^slicing.discriminator.type = #pattern
* section[medicalHistory].section ^slicing.discriminator.path = "code"
* section[medicalHistory].section ^slicing.rules = #open
* section[medicalHistory].section contains // TODO: Define optionalities
    bodyWeight 1..1 MS and
    bodyHeight 1..1 MS and
    smokingStatus 1..1 MS and
    bloodPressure 1..1 MS and
    secondaryDeseases 1.. MS and
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
// * section[medicalHistory].section[smokingStatus].entry 1..1 MS
// * section[medicalHistory].section[smokingStatus].entry only Reference()
* section[medicalHistory].section[bloodPressure].entry 1..1 MS
* section[medicalHistory].section[bloodPressure].entry only Reference($BloodPressure)

// TODO:
// - Begleiterkrankungen
// - HbA1c
// - Pathologische Urin-Albumin-Ausscheidung
// - eGFR
// - Pulsstatus
// - Sensibilitätsprüfung
// - Weiteres Risiko für Ulcus
// - Ulkus
// - (Wund)Infektion
// - Injektionsstellen (bei Insulintherapie)
// - Intervall für künftige Fußinspektionen (bei Patientinnen und Patienten ab dem vollendeten 18. Lebensjahr)
// - Spätfolgen



// * section[documentation].entry[consentEda] ^short = "Consent for eDA"
// * section[documentation].entry[consentEda].reference 1..1 MS
// * section[documentation].entry[consentRegistry] only Reference(DDGDmpConsentRegistry)
// * section[documentation].entry[consentRegistry] ^short = "Consent for Registry"
// * section[documentation].entry[consentRegistry].reference 1..1 MS
// * section[documentation].entry[medications] only Reference(DDGDmpMedicalHistory)
// * section[documentation].entry[medications] ^short = "Medications"
// * section[documentation].entry[medications].reference 1..1 MS
// * section[documentation].entry[trainings] only Reference(DDGDmpTraining)
// * section[documentation].entry[trainings] ^short = "Training(s)"
// * section[documentation].entry[trainings].reference 1..1 MS

// * section[documentation].section[medicalHistory].section ^slicing.discriminator.type = #pattern
// * section[documentation].section[medicalHistory].section ^slicing.discriminator.path = "code"
// * section[documentation].section[medicalHistory].section ^slicing.rules = #open
// * section[documentation].section[medicalHistory].section contains
//     bodyWeight 1..1 MS and
//     bodyHeight 1..1 MS

// * section[documentation].section[medicalHistory].section["bodyWeight"].entry only Reference(DDGDmpMedicalHistory)
// * section[documentation].section[medicalHistory].section["bodyHeight"].entry only Reference(DDGDmpMedicalHistory)



// * section[documentation].section ..0

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


// Further treatment planning and enrollment reason
* extension contains
    DDGDmpEnrollmentReason named enrollmentReason 1.. MS and // TODO: Or 1..1?
    DDGDmpTreatmentPlanning named treatmentPlanning 1..1 MS
    // and DDGDmpMedicalHistory named medicalHistory 1.. MS
