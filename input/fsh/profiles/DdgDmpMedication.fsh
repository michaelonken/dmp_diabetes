Profile: DDGDmpMedication
Parent: Medication
Id: ddg-dmp-medication
Title: "DDG DMP Medication"
Description: "DDG Medication as part of DMP."
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "DDG DMP Medication"

* identifier 1..1 MS
* status 0..1 MS
* status = #active
* code MS
* code 1..1
* code from VS_DdgDmpMedications (required)
