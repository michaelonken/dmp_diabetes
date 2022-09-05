ValueSet: VS_DdgDmpEducationServiceType
Id: ddg-dmp-educations
Title: "DDG DMP education Service Type"
Description: "DDG DMP education Service Type"
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"

* $sct#6143009                                           // Diabetic Education
* $sct#39155009                                          // Hypertension Education
* $sct#429785003                                         // Education about cardiovascular disease

// Alternative diabetic education code from FHIR-builtin codes: * http://terminology.hl7.org/CodeSystem/service-type#532 // Diabetes Education Service

// TODO: no education is modeled by listing no related appointment resource