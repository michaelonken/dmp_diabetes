Profile: DDGDmpCompletededucationEncounter
Parent: Encounter
Id: ddg-dmp-completed-education-encounter
Title: "DDG DMP Completed education"
Description: "DDG completed education in DMP documents"
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "DDG DMP completed education"

* status MS
* status = #finished
* serviceType MS
* serviceType 1..1
* serviceType from VS_DdgDmpEducationServiceType
