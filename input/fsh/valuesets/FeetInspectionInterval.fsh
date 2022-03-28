ValueSet: DdgDmpFeetInspectionInterval
Id: ddg-dmp-feet-inspection-interval
Title: "DDG DMP Feet Inspection Interval"
Description: "DDG DMP Feet Inspection Interval (for adults >= 18 years)"
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"

// KBV Vorgaben:
// Jährlich
// alle 6 Monate
// alle 3 Monate oder häufiger

* $sct#3015006  // Quarterly // TODO: Is it ok to map "alle 3 Monate oder häufiger" to "quarterly"?
* $sct#88561007 // Biannual
* $sct#53281000 // Annual

