// Extension: DDGDmpSevereHypoglycemiaEvents
// Id: ddg-dmp-severe-hypogycemia-events
// Title: "DDG DMP Severe Hypoglycemia Events"
// Description: "Severe hypoglycemia since last documentation"
// * ^version = "0.0.1"
// * ^date = "2022-03-15T11:05:43+01:00"
// * ^publisher = "Open Connections GmbH"
// * ^contact.name = "Open Connections GmbH"
// * ^contact.telecom.system = #url
// * ^contact.telecom.value = "https://www.open-connections.de/"
// * ^jurisdiction = urn:iso:std:iso:3166#DEU
// * ^copyright = "CC-BY-SA-4.0"
// * ^context.type = #fhirpath
// * ^context.expression = "Composition"
// * value[x] 1..1 MS
// * value[x] only positiveInt
// * valuePositiveInt 1..1 MS

Profile: DDGDmpSevereHypoglycemiaEvents
Parent: Observation
Id: ddg-dmp-severe-hypogycemia-events
Title: "DDG DMP Severe Hypoglycemia Events"
Description: "DDG DMP Severe hypoglycemia since last documentation"
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "Severe hypoglycemia since last documentation"

// category: procedure, code: emergency procedure
// TODO: The category does not really fit well (see description of #procedure here:https://www.hl7.org/fhir/codesystem-observation-category.html#observation-category-procedure)
// TODO: Also check code: #712660009=Frequency of hospital-treated hypoglycemia attack (observable entity), since its not really a frequency named here
// TODO: Also check dataAbsentReason "Procedure not done" viable
* insert DDGDmpSimpleObservation($obs_category#procedure, $sct#712660009)
* value[x] 0..1 MS
* value[x] ^short = "Denotes the number of emergency inpatient treatment events patient had since last documentation"
* value[x] only integer
* valueInteger 0..1
* dataAbsentReason 0..1 MS
* dataAbsentReason = $sct#416237000 // Procedure not done