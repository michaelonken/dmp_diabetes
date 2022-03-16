Profile: DDGCoreDocument
Parent: Bundle
Id: ddg-core-document
Title: "DDG Core Document Profile"
Description: "Base definition for a document with the DDG profiles."
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-11T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "DDG Core Document"
* identifier 1..
* identifier.system 1..
* identifier.value 1..
* type = #document (exactly)
* type ^short = "document"
* timestamp 1..
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry.fullUrl 1..
* entry.fullUrl obeys ddg-core-doc-1
* entry contains Composition 1..1
* entry[Composition] ^short = "Composition"
* entry[Composition].resource 1..
* entry[Composition].resource only DDGCoreComposition