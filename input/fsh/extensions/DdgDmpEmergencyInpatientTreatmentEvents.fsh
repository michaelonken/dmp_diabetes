Extension: DDGDmpEmergencyInpatientTreatmentEvents
Id: ddg-dmp-emergency-inpatient-treatment-events
Title: "DDG DMP Emergency Inpatient Treatment Events"
Description: "Emergency inpatient treatment for diabetes mellitus since last documentation"
* ^version = "0.0.1"
* ^date = "2022-03-15T11:05:43+01:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "DDG DMP Emergency Inpatient Treatment Events"
* ^context.type = #fhirpath
* ^context.expression = "Composition"
* value[x] 1..1 MS
* value[x] only positiveInt
* valuePositiveInt 1..1 MS
