Profile: DDGDmpContraIndication
Parent: MedicinalProductContraindication
Id: ddg-dmp-contra-indication
Title: "DDG DMP Contra Indication"
Description: "DDG Contra Indication as part of DMP."
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "DDG DMP Contra Medication"
* subject 1..1 MS
* subject only Reference(DDGDmpMedication)


