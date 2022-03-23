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
    documentation 1..1 MS and
    originalRepresentation 0..1 MS // TODO Only optionally embed PDF?

// Details on section "documentation"

* section[documentation] ^short = "Contains the DMP data"
* section[documentation].title 1.. MS
* section[documentation].title ^short = "DMP Data"
* section[documentation].code 1.. MS
* section[documentation].code = $lnc#33248-6 "Diabetes Status"
* section[documentation].text 0..1
* section[documentation].entry MS
* section[documentation].entry ^slicing.discriminator.type = #profile
* section[documentation].entry ^slicing.discriminator.path = "resolve()"
* section[documentation].entry ^slicing.rules = #open
* section[documentation].entry contains
    patient 1..1 MS and
    consentEda 1..1 MS and
    consentRegistry 1..1 MS and
    // TODO: "Einschreibung wegen?" with values "Asthma bronchiale KHK Diabetes mellitus Typ 1 Diabetes mellitus Typ 2 COPD Chronische Herzinsuffizienz Depression chronischer Rückenschmerz Osteoporose"
    medicalHistory 1..1 MS and // TODO Best wording for "Anamnese- und Befunddaten"? Also this should probably also contain "Relevante Ereignisse" from DMP
    medications 1..1 MS and
    trainings 1.. MS
* section[documentation].entry[patient] only Reference(DDGDmpPatient)
* section[documentation].entry[patient] ^short = "Patient"
* section[documentation].entry[patient].reference 1..1 MS
* section[documentation].entry[consentEda] only Reference(DDGDmpConsentEda)
* section[documentation].entry[consentEda] ^short = "Consent for eDA"
* section[documentation].entry[consentEda].reference 1..1 MS
* section[documentation].entry[consentRegistry] only Reference(DDGDmpConsentRegistry)
* section[documentation].entry[consentRegistry] ^short = "Consent for Registry"
* section[documentation].entry[consentRegistry].reference 1..1 MS
* section[documentation].entry[medicalHistory] only Reference(DDGDmpMedicalHistory)
* section[documentation].entry[medicalHistory] ^short = "Medical History"
* section[documentation].entry[medicalHistory].reference 1.. MS
* section[documentation].entry[trainings] only Reference(DDGDmpTraining)
* section[documentation].entry[trainings] ^short = "Training(s)"
* section[documentation].entry[trainings].reference 1.. MS

* section[documentation].section ..0

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


// Further treatment planning
* extension contains
    DDGDmpTreatmentPlanning named treatmentPlanning 1..1 MS
* extension[treatmentPlanning] ^short = "Follow-up treatment planning for this patient"