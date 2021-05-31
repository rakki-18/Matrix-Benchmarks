Class {
	#name : #MBElementWiseMultiplication,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBElementWiseMultiplication >> elementWiseMultiplyAIColumnMatrix [

	
	<benchmark: 'AIColumnMatrix element-wise multiplication'>
	<setup: #setuptwoAIColumnMatrix>

	100 timesRepeat:[  a1 productFromMatrix: a2 ].
	
]

{ #category : #benchmarks }
MBElementWiseMultiplication >> elementWiseMultiplyAIRowMatrix [

	
	<benchmark: 'AIRowMatrix element-wise multiplication'>
	<setup: #setuptwoAIRowMatrix>

	100 timesRepeat:[  a1 productFromMatrix: a2 ].
	
]

{ #category : #benchmarks }
MBElementWiseMultiplication >> elementWiseMultiplyArray2D [

	
	<benchmark: 'Array2D element-wise multiplication'>
	<setup: #setuptwoArray2D>

	100 timesRepeat:[  a1 * a2 ].
	
]

{ #category : #benchmarks }
MBElementWiseMultiplication >> elementWiseMultiplyPMMatrix [

	
	<benchmark: 'PMMatrix element-wise multiplication'>
	<setup: #setuptwoPMMatrix>

	100 timesRepeat:[  a1 hadamardProduct: a2 ].
	
]

{ #category : #benchmarks }
MBElementWiseMultiplication >> elementWiseMultiplyPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetricMatrix element-wise multiplication'>
	<setup: #setuptwoPMSymmetricMatrix>

	100 timesRepeat:[  a1 hadamardProduct: a2 ].
	
]
