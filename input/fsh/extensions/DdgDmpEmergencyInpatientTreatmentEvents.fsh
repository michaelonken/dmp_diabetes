// Extension: DDGDmpEmergencyInpatientTreatmentEvents
// Id: ddg-dmp-emergency-inpatient-treatment-events
// Title: "DDG DMP Emergency Inpatient Treatment Events"
// Description: "Emergency inpatient treatment for diabetes mellitus since last documentation"
// * ^version = "0.0.1"
// * ^date = "2022-03-15T11:05:43+01:00"
// * ^publisher = "Open Connections GmbH"
// * ^contact.name = "Open Connections GmbH"
// * ^contact.telecom.system = #url
// * ^contact.telecom.value = "https://www.open-connections.de/"
// * ^jurisdiction = urn:iso:std:iso:3166#DEU
// * ^copyright = "CC-BY-SA-4.0"
// * . ^short = "DDG DMP Emergency Inpatient Treatment Events"
// * ^context.type = #fhirpath
// * ^context.expression = "Composition"
// * value[x] 1..1 MS
// * value[x] only positiveInt
// * valuePositiveInt 1..1 MS

Profile: DDGDmpEmergencyInpatientTreatmentEvents
Parent: Observation
Id: ddg-dmp-emergency-inpatient-treatment-events
Title: "DDG DMP Emergency Inpatient Treatment Events"
Description: "DDG DMP Emergency Inpatient Treatment Events"
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "DDG DMP Emergency Inpatient Treatment Events"

// category: procedure, code: emergency treatment procedure
// TODO: The category does not really fit well (see description of #procedure here:https://www.hl7.org/fhir/codesystem-observation-category.html#observation-category-proceudre)
* insert DDGDmpSimpleObservation($obs_category#procedure, $sct#182813001)
* value[x] 0..1 MS
* value[x] ^short = "Denotes the number of emergency inpatient treatment events patient had since last documentation"
* value[x] only integer
* valueInteger 0..1
* dataAbsentReason 0..1 MS
* dataAbsentReason = $sct#416237000 // Procedure not don