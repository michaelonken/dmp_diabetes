Profile: DDGDmpConsentRegistry
Parent: Consent
Id: ddg-dmp-consent-registry
Title: "DDG DMP Consent Registry Profile"
Description: "Consent for the DDG DMP Registry"
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "DDG DMP Consent Profile for Registry"
* status 1..1 MS
* status from DdgDmpConsentStatus
* status ^short = "Status must be either 'active' or 'rejected'"
* scope 1..1 MS
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy "Agreement to collect, access, use or disclose (share) information"
* category 1..1 MS
* category = $lnc#59284-0 // Code for "Consent Document"

* patient 1..1 MS
* patient only Reference(DDGDmpPatient)

* source[x] 0..1 MS
* source[x] ^short = "If set, element must contain PDF representing the patient's consent in human readable format (e.g. with wet signature)"
* source[x] only Attachment
  * contentType 1..1 MS
  * contentType = #application/pdf (exactly)
  * data 1..1 MS

* policy 1..1 MS
  * authority 0..0
  * uri 1..1 MS
  * uri = "http://deutsche-diabetes-gesellschaft.de/fhir/ig/dmp-diabetes/consent/policy/registry"


