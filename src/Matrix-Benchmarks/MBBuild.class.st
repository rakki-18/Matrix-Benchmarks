Class {
	#name : #MBBuild,
	#superclass : #MBSetup,
	#category : #'Matrix-Benchmarks'
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

{ #category : #diagonal }
MBBuild >> buildAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>

	100 timesRepeat:[  AIDiagonalMatrix new: 500 ].
	
]

{ #category : #normal }
MBBuild >> buildAIRowMatrix [

	
	<benchmark: 'AIRow'>

	100 timesRepeat:[  AIRowMatrix new: 500 ].
	
]

{ #category : #symmetric }
MBBuild >> buildAISymetricMatrix [

	
	<benchmark: 'AISymetric'>

	100 timesRepeat:[  AISymetricMatrix new: 500 ].
	
]

{ #category : #normal }
MBBuild >> buildArray2D [

	
	<benchmark: 'Array2D'>

	100 timesRepeat:[  Array2D new: 500 ].
	
]

{ #category : #normal }
MBBuild >> buildPMMatrix [

	
	<benchmark: 'PMMatrix'>


	100 timesRepeat:[  PMMatrix new: 500 ].
]

{ #category : #symmetric }
MBBuild >> buildPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetric'>


	100 timesRepeat:[  PMSymmetricMatrix new: 500 ].
]
