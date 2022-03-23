Profile: DDGDmpConsent
Parent: Consent
Id: ddg-dmp-consent
Title: "DDG DMP Consent Profile"
Description: "Consent for the DDG DMP"
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "DDG DMP Consent Profile"
* status 1..1 MS
* status = #active
* status ^short = "Only Consent with status 'active' is permitted at this time"
* scope 1..1 MS
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy "Agreement to collect, access, use or disclose (share) information"
* category 1..1 MS
* category = $lnc#59284-0

* patient 1..1
* patient only Reference(DDGDmpPatient)

* source[x] 0..1 MS
* source[x] ^short = "If set, element must contain PDF representing the patient's consent in human readable format (e.g. with wet signature)"
* source[x] only Attachment
  * contentType 1..1 MS
  * contentType = #application/pdf (exactly)
  * data 1..1 MS

* policy ^slicing.discriminator.type = #value
* policy ^slicing.discriminator.path = "uri"
* policy ^slicing.rules = #open
* policy ^slicing.description = "One of the slices represents the patient's consent (or rejection) to the electronic Diabetes Health Record (eDA), the other to the scientific diabetic research registry"
* policy ^slicing.ordered = false
* policy 2..2
  * authority 0..0
* policy[0].uri = "http://deutsche-diabetes-gesellschaft.de/fhir/ig/dmp-diabetes/consent/policy/consent_eda" or "http://deutsche-diabetes-gesellschaft.de/fhir/ig/dmp-diabetes/consent/policy/no_consent_eda"
* policy[1].uri = "http://deutsche-diabetes-gesellschaft.de/fhir/ig/dmp-diabetes/consent/policy/consent_research_registry" or "http://deutsche-diabetes-gesellschaft.de/fhir/ig/dmp-diabetes/consent/policy/no_consent_research_registry"


