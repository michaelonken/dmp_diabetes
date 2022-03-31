Profile: DDGDmpMissedTraining
Parent: Appointment
Id: ddg-dmp-Missed-training
Title: "DDG DMP Missed Training"
Description: "DDG DMP training where patient has not been participating in a recommended training"
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "DDG DMP missed training"

* status MS
* status = #noshow
* serviceType MS
* serviceType 1..1
* serviceType from VS_DdgDmpTrainingServiceType
// TODO cancelationReason: In KBV specification: "Not possible this time". For now I restricted this to
// cancellation Reason just meaning "Patient". We could also leave this open for all other FHIR-proposed codes,
// see full list here: https://www.hl7.org/fhir/valueset-appointment-cancellation-reason.html
* cancelationReason MS
* cancelationReason 1..1
* cancelationReason = #pat // Reason: Patient.
