Extension: DDGDmpRelevantEvents
Id: ddg-dmp-relevant-events
Title: "DDG DMP Relevant Events"
Description: "Relevant Events"
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
* . ^short = "DDG DMP Relevant Events"
* . ^definition = "Events relevant for diabetic treatment"
* value[x] 1..1 MS
* value[x] only Coding
* valueCoding from DdgDmpRelevantEvents

