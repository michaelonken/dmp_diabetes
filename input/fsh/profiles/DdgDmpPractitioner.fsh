Profile: DDGDmpPractitioner
Parent: Practitioner
Id: ddg-dmp-practitioner
Title: "DDG DMP Practitioner Profile"
Description: "Practitioner for the DDG DMP"
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "DDG DMP Practitioner Profile"

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.rules = #open
* identifier contains
    ANR 0..* MS
    // EFN 0..1 and
    // ZANR 0..*
* identifier[ANR] only IdentifierLanr // http://fhir.de/StructureDefinition/identifier-lanr
* identifier[ANR].type 1..
* identifier[ANR].type.coding 1..1
* identifier[ANR].type.coding.system 1..
* identifier[ANR].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[ANR].type.coding.code 1..
* identifier[ANR].type.coding.code = #LANR (exactly)
* identifier[ANR].type.coding.display 1..
* identifier[ANR].type.coding.display = "Lifelong physician number"
// * identifier[EFN] only http://fhir.de/StructureDefinition/identifier-efn|0.9.13
// * identifier[EFN].type 1..
// * identifier[EFN].type.coding 1..1
// * identifier[EFN].type.coding.system 1..
// * identifier[EFN].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
// * identifier[EFN].type.coding.code 1..
// * identifier[EFN].type.coding.code = #DN (exactly)
// * identifier[EFN].type.coding.display 1..
// * identifier[EFN].type.coding.display = "Doctor number"
// * identifier[ZANR] only http://fhir.de/StructureDefinition/identifier-zanr|0.9.13
// * identifier[ZANR].type 1..
// * identifier[ZANR].type.coding 1..1
// * identifier[ZANR].type.coding.system 1..
// * identifier[ZANR].type.coding.system = "http://fhir.de/CodeSystem/identifier-type-de-basis" (exactly)
// * identifier[ZANR].type.coding.code 1..
// * identifier[ZANR].type.coding.code = #ZANR (exactly)
// * identifier[ZANR].type.coding.display 1..
// * identifier[ZANR].type.coding.display = "Zahnarztnummer"
