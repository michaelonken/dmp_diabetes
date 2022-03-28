ValueSet: DdgDmpRelevantEvents
Id: ddg-dmp-relevant-events
Title: "DDG DMP Relevant Events"
Description: "DDG DMP Relevant Events"
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
// Nierenersatztherapie
// Erblindung
// Amputation
// Herzinfarkt
// Schlaganfall
// Keine der genannten Ereignisse

// TODO: Check whether all codes are acceptable!

* $sct#398887003 // Renal Replacement
* $sct#193699007 // Blindness - both eyes (disorder)
* $sct#81723002  // Amputation (procedure)
* $sct#22298006  // Myocardial infarction (disorder)
* $sct#230690007 // Cerebrovascular accident (disorder)
* CS_DDGDmpRelevantEvents#none_from_list // No event from list
