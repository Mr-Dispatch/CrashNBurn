Class {
	#name : #CNBObject,
	#superclass : #Object,
	#instVars : [
		'id',
		'foo',
		'bar',
		'baz'
	],
	#category : #CrashNBurn
}

{ #category : #'instance creation' }
CNBObject class >> dummy [
	^ self new
		  foo: 'aaa';
		  bar: 'bbb';
		  baz: 'ccc';
		  yourself
]

{ #category : #accessing }
CNBObject >> bar [

	^ bar
]

{ #category : #accessing }
CNBObject >> bar: anObject [

	bar := anObject
]

{ #category : #accessing }
CNBObject >> baz [

	^ baz
]

{ #category : #accessing }
CNBObject >> baz: anObject [

	baz := anObject
]

{ #category : #accessing }
CNBObject >> foo [

	^ foo
]

{ #category : #accessing }
CNBObject >> foo: anObject [

	foo := anObject
]

{ #category : #accessing }
CNBObject >> id [

	^ id
]

{ #category : #accessing }
CNBObject >> id: anObject [

	id := anObject
]
