Class {
	#name : #MBBuild,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #accessing }
MBBuild class >> title [


	^ 'Building a NULL Matrix'
]

{ #category : #benchmarks }
MBBuild >> buildAIColumnMatrix [

	
	<benchmark: 'AIColumn'>

	100 timesRepeat:[  AIColumnMatrix new: 500 ].
	
]

{ #category : #benchmarks }
MBBuild >> buildAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>

	100 timesRepeat:[  AIDiagonalMatrix new: 500 ].
	
]

{ #category : #benchmarks }
MBBuild >> buildAIRowMatrix [

	
	<benchmark: 'AIRow'>

	100 timesRepeat:[  AIRowMatrix new: 500 ].
	
]

{ #category : #benchmarks }
MBBuild >> buildAISymetricMatrix [

	
	<benchmark: 'AISymetric'>

	100 timesRepeat:[  AISymetricMatrix new: 500 ].
	
]

{ #category : #benchmarks }
MBBuild >> buildArray2D [

	
	<benchmark: 'Array2D'>

	100 timesRepeat:[  Array2D new: 500 ].
	
]

{ #category : #benchmarks }
MBBuild >> buildPMMatrix [

	
	<benchmark: 'PMMatrix'>


	100 timesRepeat:[  PMMatrix new: 500 ].
]

{ #category : #benchmarks }
MBBuild >> buildPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetric'>


	100 timesRepeat:[  PMSymmetricMatrix new: 500 ].
]
