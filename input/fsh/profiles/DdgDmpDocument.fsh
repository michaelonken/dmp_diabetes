Profile: DDGDmpDocument
Parent: DDGCoreDocument
Id: ddg-dmp-document
Title: "DDG DMP Document"
Description: """Profile to set constraints that specify the DDG DMP-conformant presentation of a document.
The DDG DMP exchange format is defined as a document type corresponding to a Bundle resource."""
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-03-11T00:00:00+00:00"
* ^publisher = "Open Connections GmbH"
* ^contact.name = "Open Connections GmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.open-connections.de/"
* ^jurisdiction = urn:iso:std:iso:3166#DEU
* ^copyright = "CC-BY-SA-4.0"
* . ^short = "DDG DMP Document"
* identifier MS
* identifier ^short = "Document Identifier"
* identifier.system MS
* identifier.system = "urn:ietf:rfc:3986" (exactly)
* identifier.value MS
* identifier.value ^short = "UUID as Document Identifier"
* type MS
* timestamp MS
* timestamp ^short = "Date, the document was created"
* total ..0
* link ..0
* entry MS
* entry[Composition] MS
* entry[Composition].resource only DDGDmpComposition
* entry[Composition].resource MS
