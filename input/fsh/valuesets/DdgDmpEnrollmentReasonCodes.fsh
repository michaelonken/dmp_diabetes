ValueSet: DdgDmpEnrollmentReasonCodes
Id: ddg-dmp-enrollment-reason-codes
Title: "DDG DMP Enrollment Reason"
Description: "DDG DMP Enrollment Reason"
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"

// Values required from KBV specification:
// - Asthma bronchiale
// - KHK
// - Diabetes mellitus Typ 1
// - Diabetes mellitus Typ 2
// - COPD
// - Chronische Herzinsuffizienz
// - Depression
// - chronischer Rückenschmerz
// - Osteoporose

* $sct#195967001 "Asthma Bronchiale" // Asthma (disorder). TODO: Check whether code is specific enough
* $sct#53741008  // Coronary arteriosclerosis (disorder). TODO: Check whether code is too specific? ( Meaning:  )
* $sct#46635009  // Diabetes mellitus type 1 (disorder)
* $sct#44054006  // Diabetes mellitus type 1 (disorder)
* $sct#13645005  // Chronic obstructive lung disease (disorder)
* $sct#48447003  // Chronic heart failure (disorder). TODO: Check whether code is specific enough
* $sct#35489007  // Depression (disorder)
* $sct#134407002 // Chronic back pain (finding). TODO: Code ok?
* $sct#64859006  // Osteoporosis (disorder)
