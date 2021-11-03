Class {
	#name : #CNBDescriptor,
	#superclass : #DescriptorSystem,
	#category : #CrashNBurn
}

{ #category : #'as yet unclassified' }
CNBDescriptor >> classModelForCNBObject: mdl [
	#( foo bar baz ) do: [ :attr | mdl newAttributeNamed: attr ]
]

{ #category : #'as yet unclassified' }
CNBDescriptor >> descriptorForCNBObject: descr [
	descr table: (self tableNamed: 'CNBOBJECT').
	#( id foo bar baz ) do: [ :field | descr directMappingFor: field ]
]

{ #category : #'as yet unclassified' }
CNBDescriptor >> tableForCNBOBJECT: tbl [
	(tbl createFieldNamed: 'id' type: platform serial) bePrimaryKey.
	#( foo bar baz ) do: [ :field | tbl createFieldNamed: field type: (platform varchar: 100) ]
]
