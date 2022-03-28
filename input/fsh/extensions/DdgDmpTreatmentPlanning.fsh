Extension: DDGDmpTreatmentPlanning
Id: ddg-dmp-treatment-planning
Title: "DDG DMP Treatment Planning"
Description: "Planning for further treatment of the patient"
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "DDG DMP Treatment Planning"
* ^context.type = #fhirpath
* ^context.expression = "Composition"
* . ^short = "DDG DMP Treatment Planning"
* . ^definition = "Planning for further treatment of the patient"
* extension contains
    patientRequestedInformationTopic 0..3 MS and
    documentationInteveral 1..1 MS and
    hba1cTargetReached 1..1 MS and
    treatmentAtDiabeticFootSyndromInstitution 1..1 MS and
    outpatientHospitalAdmissionForDiabetes 1..1 MS and
    intervalFeetInspectionAdults 0..1 MS
* extension[patientRequestedInformationTopic] only Extension
* extension[documentationInteveral] only Extension
* extension[hba1cTargetReached] only Extension
* extension[outpatientHospitalAdmissionForDiabetes] only Extension
* extension[patientRequestedInformationTopic] ^short = "Vom Patienten gewünschte Informationsangebote der Krankenkasse"
* extension[patientRequestedInformationTopic].value[x] only Coding
* extension[patientRequestedInformationTopic].valueCoding from DdgDmpPatientRequestedInformationTopic (required)
* extension[documentationInteveral] ^short = "Dokumentationsintervall"
* extension[documentationInteveral].value[x] only Coding
* extension[documentationInteveral].valueCoding from DdgDmpDocumentationInterval (required)
* extension[hba1cTargetReached] ^short = "HbA1c-Zielwert"
* extension[hba1cTargetReached].value[x] only Coding
* extension[hba1cTargetReached].valueCoding from DdgDmpHba1cValueReached (required)
* extension[treatmentAtDiabeticFootSyndromInstitution] ^short = "Behandlung/Mitbehandlung in einer für das Diabetische Fußsyndrom qualifizierten Einrichtung"
* extension[treatmentAtDiabeticFootSyndromInstitution].value[x] only Coding
* extension[treatmentAtDiabeticFootSyndromInstitution].valueCoding from DdgDmpYesNoPlanned (required)
* extension[outpatientHospitalAdmissionForDiabetes] ^short = "Diabetesbezogene stationäre Einweisung"
* extension[outpatientHospitalAdmissionForDiabetes].value[x] only Coding
* extension[outpatientHospitalAdmissionForDiabetes].valueCoding from DdgDmpYesNoPlanned (required)
* extension[intervalFeetInspectionAdults] ^short = "Interval for future feet inspections (for patients >= 18 years of age)"
* extension[intervalFeetInspectionAdults].value[x] only Coding
* extension[intervalFeetInspectionAdults].valueCoding from DdgDmpFeetInspectionInterval (required)
