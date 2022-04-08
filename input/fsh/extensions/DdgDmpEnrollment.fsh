// Extension: DDGDmpEnrollmentReason
// Id: ddg-dmp-enrollment-reason
// Title: "DDG DMP Enrollment Reason"
// Description: "Enrollment Reason information"
// * ^version = "0.0.1"
// * ^date = "2022-03-15T11:05:43+01:00"
// * ^publisher = "Open Connections GmbH"
// * ^contact.name = "Open Connections GmbH"
// * ^contact.telecom.system = #url
// * ^contact.telecom.value = "https://www.open-connections.de/"
// * ^jurisdiction = urn:iso:std:iso:3166#DEU
// * ^copyright = "CC-BY-SA-4.0"
// * . ^short = "DDG DMP Enrollment Reason"
// * ^context.type = #fhirpath
// * ^context.expression = "Composition"
// * . ^definition = "Reason the patient got enrolled int the DMP"
// * value[x] 1..1 MS
// * value[x] only Coding
// * valueCoding from DdgDmpEnrollmentReasonCodes

Profile: DDGDmpEnrollmentReason
Parent: Condition
Id: ddg-dmp-enrollment-reason
Title: "DDG DMP Enrollment Reason"
Description: "DDG DMP Enrollment Reason"
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "DDG DMP Enrollment Reason"

// TODO: Do we want to allow anything but clinicalStaus = "active"?
* clinicalStatus = $cond_status#active
* category 1..1 MS
* category = $sct#385675009 // Reason for action
* code 1..1 MS
* code from DdgDmpEnrollmentReasonCodes (required)
* subject 1..1 MS
* subject only Reference($DmpPatient)