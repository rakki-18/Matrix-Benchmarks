Class {
	#name : #MBElementWiseMultiplication,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #accessing }
MBElementWiseMultiplication class >> title [


	^ ' Element-wise Matrix multiplication'
]

{ #category : #benchmarks }
MBElementWiseMultiplication >> elementWiseMultiplyAIColumnMatrix [

	
	<benchmark: 'AIColumn'>
	<setup: #setuptwoAIColumnMatrix>

	100 timesRepeat:[  a1 productFromMatrix: a2 ].
	
]

{ #category : #benchmarks }
MBElementWiseMultiplication >> elementWiseMultiplyAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>
	<setup: #setuptwoAIDiagonalMatrix>

	100 timesRepeat:[  a1 productFromMatrix: a2 ].
	
]

{ #category : #benchmarks }
MBElementWiseMultiplication >> elementWiseMultiplyAIRowMatrix [

	
	<benchmark: 'AIRow'>
	<setup: #setuptwoAIRowMatrix>

	100 timesRepeat:[  a1 productFromMatrix: a2 ].
	
]

{ #category : #benchmarks }
MBElementWiseMultiplication >> elementWiseMultiplyAISymetricMatrix [

	
	<benchmark: 'AISymetric'>
	<setup: #setuptwoAISymetricMatrix>

	100 timesRepeat:[  a1 productFromMatrix: a2 ].
	
]

{ #category : #benchmarks }
MBElementWiseMultiplication >> elementWiseMultiplyArray2D [

	
	<benchmark: 'Array2D'>
	<setup: #setuptwoArray2D>

	100 timesRepeat:[  a1 * a2 ].
	
]

{ #category : #benchmarks }
MBElementWiseMultiplication >> elementWiseMultiplyPMMatrix [

	
	<benchmark: 'PMMatrix'>
	<setup: #setuptwoPMMatrix>

	100 timesRepeat:[  a1 hadamardProduct: a2 ].
	
]

{ #category : #benchmarks }
MBElementWiseMultiplication >> elementWiseMultiplyPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetric'>
	<setup: #setuptwoPMSymmetricMatrix>

	100 timesRepeat:[  a1 hadamardProduct: a2 ].
	
]
