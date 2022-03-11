Profile: DDGCoreComposition
Parent: Composition
Id: ddg-core-composition
Title: "DDG Core Composition Profile"
Description: "Base definition for a Composition with the DDG Core profiles."
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-11T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "DDG Core Bundle (Composition)"
* subject only Reference(Patient)
* subject ^definition = "Who or what the composition is about. \r\nIn general a composition can be about a person, (patient or healthcare practitioner), a device (e.g. a machine) or even a group of subjects (such as a document about a herd of livestock, or a set of patients that share a common exposure).\r\nFor the IPS the subject is always the patient."
* subject.reference 1..
// TODO disable? * encounter only Reference(DDGCoreEncounter)
* author only Reference(Practitioner or Organization)
// Disable attester?
// * author.reference 1..
// * attester.party only Reference(DDGCorePatient or RelatedPerson or DDGCorePractitioner or DDGCorePractitionerRole or DDGCoreOrganization)
// * attester.party.reference 1..

// Disable custodian?
// * custodian only Reference(DDGCoreOrganization)
// * custodian.reference 1..

// Disable relatesTo?
//* relatesTo.target[x] only Identifier or Reference(DDGCoreComposition)
//* section.author only Reference(DDGCorePractitioner or DDGCorePractitionerRole or Device or DDGCorePatient or RelatedPerson or DDGCoreOrganization)