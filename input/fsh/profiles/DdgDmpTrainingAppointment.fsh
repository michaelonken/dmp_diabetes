Profile: DDGDmpFutureeducationAppointment
Parent: Appointment
Id: ddg-dmp-future-education-appointment
Title: "DDG DMP Future Dducation"
Description: "DDG future education in DMP documents"
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "DDG DMP Future Education"

* status MS
* status = #proposed
* serviceType MS
* serviceType 1..1
* serviceType from VS_DdgDmpEducationServiceType
* cancelationReason 0..0 // Do not allow cancelation reason since it does not make sense with Appointment.status #proposed
