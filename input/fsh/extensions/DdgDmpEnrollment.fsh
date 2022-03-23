Extension: DDGDmpEnrollmentReason
Id: ddg-dmp-enrollment-reason
Title: "DDG DMP Enrollment Reason"
Description: "Enrollment Reason information"
* ^version = "0.0.1"
* ^date = "2022-03-15T11:05:43+01:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "DDG DMP Composition"
* ^context.type = #fhirpath
* ^context.expression = "Composition"
* . ^short = "DDG DMP Enrollment"
* . ^definition = "Reason the patient got enrolled int the DMP"
* value[x] 1..1 MS
* value[x] only Coding
* valueCoding from DdgDmpEnrollmentReasonCodes

