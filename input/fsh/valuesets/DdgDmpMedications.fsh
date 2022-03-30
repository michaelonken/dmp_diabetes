ValueSet: VS_DdgDmpMedications
Id: ddg-dmp-medications
Title: "DDG DMP Medications"
Description: "DDG DMP Medications"
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-15T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"

* $sct#67866001     // Insulin
* $sct#384978002    // Gilbenclamide
* $sct#372567009    // Metformin

// TODO Note that Thrombozytenaggregationshemmer code values yes and orale Antikoagulation) have been split into:
// $sct#771452004 and $sct#414010005. Is this acceptable? It also means that someone could select both codes in the
// medication section (yes and "Direct acting anticoagulant")
* $sct#771452004    // Substance with platelet aggregation inhibitor mechanism of action (substance). TODO: Correct mapping from "Thrombozytenaggregationshemmer"?
* $sct#414010005    //  Substance with direct thrombin inhibitor mechanism of action (substance). TODO: Correct mapping from "orale Koagulation?" specific to "Thrombozytenaggregationshemmer"?

* $sct#373254001    // Substance with beta adrenergic receptor antagonist mechanism of action (substance) TODO: Correct mapping for "Betablocker"?
* $sct#372733002    // Substance with angiotensin-converting enzyme inhibitor mechanism of action (substance) TOOD: Correct mapping for ACE Hemmer?
* $sct#372912004    // Substance with 3-hydroxy-3-methylglutaryl-coenzyme A reductase inhibitor mechanism of action (substance). TODO Correct mapping for "HMG-CoA-Reduktase-Hemmer"?
* $sct#372747003    // Thiazide diuretic (substance). TODO: Correct maping from "Thiaziddiuretika, einschließlich Chlorthalidon"?
