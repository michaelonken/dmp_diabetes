Extension: ECH0010AddressLineType
Id: ch-ext-ech-10-linetype
Title: "Address line type"
Description: "eCH-0010: Extension to define line types for addresses"
* ^version = "2.0.0"
* ^date = "2018-11-27"
* ^publisher = "HL7 Switzerland"
* ^contact.name = "HL7 Switzerland"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.hl7.ch/"
* ^jurisdiction = urn:iso:std:iso:3166#CH
* ^copyright = "CC-BY-SA-4.0"
* ^context.type = #element
* ^context.expression = "Address.line"
* . 0..1
* . ^short = "Extension"
* . ^definition = "eCH-0010: Extension to define line types for an address"
* url only uri
* valueCode 0..1
* valueCode only code
* valueCode from $ech-10-linetype (required)
* valueCode ^short = "Value of extension"
* valueCode ^definition = "Value of extension - may be a resource or one of a constrained set of the data types (see        Extensibility in the spec for list)."
* valueCode ^base.path = "Extension.value[x]"
* valueCode ^base.min = 0
* valueCode ^base.max = "1"
* valueCode ^isModifier = false
* valueCode ^isSummary = false
* valueCode ^binding.description = "A set of codes advising a system or user which name in a set of names to select for a          given purpose."