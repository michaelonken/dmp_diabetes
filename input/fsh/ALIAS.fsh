// External Code Systems
Alias:   $lnc =                         http://loinc.org
Alias:   $sct =                         http://snomed.info/sct
Alias:   $obs_category  =               http://terminology.hl7.org/CodeSystem/observation-category
Alias:   $cond_status   =               http://terminology.hl7.org/CodeSystem/condition-clinical
Alias:   $cond_category =               http://terminology.hl7.org/CodeSystem/condition-category
Alias:   $yes_no_uknown =               http://terminology.hl7.org/CodeSystem/v2-0532

// Structure Definitions
// TODO: Replace with https://fhir.kbv.de/StructureDefinition/KBV_PR_MIO_TELE_Patient once available
// also see https://chat.fhir.org/#narrow/stream/215610-shorthand/topic/dependency.20on.20package.20without.20IG
Alias: $DMPPatient = https://fhir.kbv.de/StructureDefinition/KBV_PR_Base_Patient
//Alias: $DMPPatient = https://fhir.kbv.de/StructureDefinition/KBV_PR_MIO_TELE_Patient
Alias: $DMPPractitioner = https://fhir.kbv.de/StructureDefinition/KBV_PR_Base_Practitioner
Alias: $DMPBodyWeight = https://fhir.kbv.de/StructureDefinition/KBV_PR_Base_Observation_Body_Weight
Alias: $DMPBodyHeight = https://fhir.kbv.de/StructureDefinition/KBV_PR_Base_Observation_Body_Height
Alias: $BloodPressure = http://hl7.org/fhir/StructureDefinition/bp
Alias: $SocialHistory = http://terminology.hl7.org/CodeSystem/observation-category#social-history


// Codes

Alias: $CurrentSmoker = $lnc#64234-8