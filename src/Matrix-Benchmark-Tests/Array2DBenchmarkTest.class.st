Class {
	#name : #Array2DBenchmarkTest,
	#superclass : #TestCase,
	#category : #'Matrix-Benchmark-Tests'
}

{ #category : #test }
Array2DBenchmarkTest >> testcolumnVector [
	|aBenchmark time|
	
	aBenchmark := Array2DBenchmark new.
	time := aBenchmark columnVector.
	self assert: time >= 0.
]

{ #category : #test }
Array2DBenchmarkTest >> testdiagonal [
	|aBenchmark time|
	
	aBenchmark := Array2DBenchmark new.
	time := aBenchmark diagonal.
	self assert: time > 0.
]

{ #category : #test }
Array2DBenchmarkTest >> testequalMatrix [
	|aBenchmark time|
	
	aBenchmark := Array2DBenchmark new.
	time := aBenchmark equalMatrix.
	self assert: time > 0.
]

{ #category : #test }
Array2DBenchmarkTest >> testidentity [
	|aBenchmark time|
	
	aBenchmark := Array2DBenchmark new.
	time := aBenchmark identity.
	self assert: time > 0.
]

{ #category : #test }
Array2DBenchmarkTest >> testnullMatrix [
	|aBenchmark time|
	
	aBenchmark := Array2DBenchmark new.
	time := aBenchmark nullMatrix.
	self assert: time > 0.
]

{ #category : #test }
Array2DBenchmarkTest >> testrandomMatrix [
	|aBenchmark time|
	
	aBenchmark := Array2DBenchmark new.
	time := aBenchmark randomMatrix.
	self assert: time > 0.
]

{ #category : #test }
Array2DBenchmarkTest >> testrowVector [
	|aBenchmark time|
	
	aBenchmark := Array2DBenchmark new.
	time := aBenchmark rowVector.
	self assert: time >= 0.
]
