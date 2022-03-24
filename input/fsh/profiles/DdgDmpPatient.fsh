Profile: DDGDmpPatient
Parent: Patient
Id: ddg-dmp-patient
Title: "DDG DMP Patient"
Description: "DDG Patient participating in DMP."
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "DDG DMP Patient"
* identifier 1..1 MS
* active 0..1 MS
* active = true
* name 1..1 MS
* gender 1..1 MS
* birthDate 1..1 MS
* address 0..1 MS // TODO: Should something be required (1..x)?
  * text 0..1 MS
  * line 0.. MS
  * city 0..1 MS
  * postalCode 0..1 MS
  * country 0..1 MS
