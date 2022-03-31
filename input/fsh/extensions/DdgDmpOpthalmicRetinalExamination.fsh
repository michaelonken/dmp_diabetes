Extension: DDGDmpOpthalmicRetinalExamination
Id: ddg-dmp-opthalmic-retinal-examination
Title: "DDG DMP Opthalmic Retinal Examination"
Description: "Ophthalmic retinal examination since last documentation"
* ^version = "0.0.1"
* ^date = "2022-03-15T11:05:43+01:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "DDG DMP Opthalmic Retinal Examination"
* ^context.type = #fhirpath
* ^context.expression = "Composition"
* value[x] 1..1 MS
* value[x] only Coding
* valueCoding 1..1 MS
* valueCoding from DdgDmpYesNoPlanned (required) // TODO: KBV value set is Ja/Nein/Veranlasst. I re-used "Yes/No/Planned" for this. OK?
