ValueSet: DdgDmpFurtherRiskUlcus
Id: ddg-dmp-further-risk-ulcus
Title: "DDG DMP Further Risk Ulcus"
Description: "DDG DMP Further Risk Ulcus"
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"


// Vorgabe Items KBV:
// Fußdeformität
// Hyperkeratose mit Einblutung
// Z. n. Ulcus
// Z. n. Amputation
// ja
// nein
// nicht untersucht

* $sct#229844004 // Deformity of foot
* CS_DDGDmpMedicalHistoryFurtherRiskUlcus#hypercatosis_with_hemorrhage
* CS_DDGDmpMedicalHistoryFurtherRiskUlcus#condition_after_ulcus
* CS_DDGDmpMedicalHistoryFurtherRiskUlcus#condition_after_amputation

* include codes from valueset VS_DDGDmpYesNoNotdone // Yes / No / Not done
