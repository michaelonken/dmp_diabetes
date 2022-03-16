Extension: DDGDmpTreatmentPlanning
Id: ddg-dmp-treatment-planning
Title: "DDG DMP Treatment Planning"
Description: "Planning for further treatment of the patient"
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "DDG DMP Treatment Planning"
* ^context.type = #fhirpath
* ^context.expression = "Composition"
* . ^short = "DDG DMP Treatment Planning"
* . ^definition = "Planning for further treatment of the patient"
// * value[x] 1..
// * valueReference 1..1
// * valueReference only Reference(CHCorePractitionerRole or CHCorePatient or RelatedPerson)
// * valueReference ^short = "valueReference"