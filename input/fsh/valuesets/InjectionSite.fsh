ValueSet: DdgDmpInjectionSite
Id: ddg-dmp-injection-site
Title: "DDG DMP Injection Site"
Description: "DDG DMP Injection Site"
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
// Unauffällig
// Auffällig
// Nicht untersucht

* include codes from valueset DdgDmpNormalAbnormal
* $sct#416237000 // Procedure not done // TODO: KBV: "Nicht untersucht"
