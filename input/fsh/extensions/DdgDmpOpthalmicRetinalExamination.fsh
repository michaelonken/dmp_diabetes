// Extension: DDGDmpOpthalmicRetinalExamination
// Id: ddg-dmp-opthalmic-retinal-examination
// Title: "DDG DMP Opthalmic Retinal Examination"
// Description: "Ophthalmic retinal examination since last documentation"
// * ^version = "0.0.1"
// * ^date = "2022-03-15T11:05:43+01:00"
// * ^publisher = "Open Connections GmbH"
// * ^contact.name = "Open Connections GmbH"
// * ^contact.telecom.system = #url
// * ^contact.telecom.value = "https://www.open-connections.de/"
// * ^jurisdiction = urn:iso:std:iso:3166#DEU
// * ^copyright = "CC-BY-SA-4.0"
// * . ^short = "DDG DMP Opthalmic Retinal Examination"
// * ^context.type = #fhirpath
// * ^context.expression = "Composition"
// * value[x] 1..1 MS
// * value[x] only Coding
// * valueCoding 1..1 MS
// * valueCoding from DdgDmpYesNoPlanned (required) // TODO: KBV value set is Ja/Nein/Veranlasst. I re-used "Yes/No/Planned" for this. OK?

Profile: DDGDmpOpthalmicRetinalExamination
Parent: Procedure
Id: ddg-dmp-opthalmic-retinal-examination
Title: "DDG DMP Ophthalmic Retinal Examination"
Description: "Ophthalmic retinal examination since last documentation"
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "Ophthalmic retinal examination since last documentation"
* identifier 1..1 MS
* status from DDGDmpOpthalmicRetinalExaminationStatus (required)
* category 1..1 MS
* category = $sct#103693007 // Diagnostic procedure
* code 1..1 MS
* code = $sct#390735007 // Retinal Screening (TOOD: acceptable?)
* subject only Reference ($DmpPatient)
* bodySite 1..1 MS
* bodySite = $sct#5665001 //  Retina
