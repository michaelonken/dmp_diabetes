ValueSet: DdgDmpSecondaryDiseases
Id: ddg-dmp-secondary-diseases
Title: "DDG DMP Secondary Diseases"
Description: "DDG DMP Secondary Diseases"
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* $sct#840580004 // AVK
* $sct#267431006 // Disorder of lipid metabolism
// TODO: Arterielle Hypertonie. No good code found in SNOMED or LOINC so far.
* $sct#53741008  // Coronary arteriosclerosis (disorder). TODO: Check whether code is too specific? KBV: "KHK)"
* $sct#195967001 "Asthma Bronchiale" // Asthma (disorder). TODO: Check whether code is specific enough
* $sct#13645005  // Chronic obstructive lung disease (disorder)
* $sct#48447003  // Chronic heart failure (disorder). TODO: Check whether code is specific enough. KBV: "Chronische Herzinsuffizienz"
// TODO: Code for "Keine der genannten" not listed in this value set; in that case, secondary diseases should simply be not listet at all in the medical history (Composition.medicalHistory)

