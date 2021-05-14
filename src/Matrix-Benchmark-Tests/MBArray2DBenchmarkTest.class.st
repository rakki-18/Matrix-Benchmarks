Class {
	#name : #MBArray2DBenchmarkTest,
	#superclass : #TestCase,
	#instVars : [
		'aBenchmark'
	],
	#category : #'Matrix-Benchmark-Tests'
}

{ #category : #running }
MBArray2DBenchmarkTest >> setUp [
	super setUp.
	
	aBenchmark := MBArray2DBenchmark new.
]

{ #category : #test }
MBArray2DBenchmarkTest >> testcolumnVector [
	|time|
	
	time := aBenchmark columnVector.
	self assert: time >= 0.
]

{ #category : #test }
MBArray2DBenchmarkTest >> testdiagonal [
	|time|
	
	time := aBenchmark diagonal.
	self assert: time > 0.
]

{ #category : #test }
MBArray2DBenchmarkTest >> testequalMatrix [
	|time|
	
	time := aBenchmark equalMatrix.
	self assert: time > 0.
]

{ #category : #test }
MBArray2DBenchmarkTest >> testidentity [
	|time|
	
	time := aBenchmark identity.
	self assert: time > 0.
]

{ #category : #test }
MBArray2DBenchmarkTest >> testnullMatrix [
	|time|
	
	time := aBenchmark nullMatrix.
	self assert: time > 0.
]

{ #category : #test }
MBArray2DBenchmarkTest >> testrandomMatrix [
	|time|
	
	time := aBenchmark randomMatrix.
	self assert: time > 0.
]

{ #category : #test }
MBArray2DBenchmarkTest >> testrowVector [
	|time|
	
	time := aBenchmark rowVector.
	self assert: time >= 0.
]
