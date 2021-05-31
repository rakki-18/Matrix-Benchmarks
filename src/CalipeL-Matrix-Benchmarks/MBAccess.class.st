Class {
	#name : #MBAccess,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBAccess >> accessAIRowMatrix [

	
	<benchmark: 'Accessing AIRowMatrix'>
	<setup: #setupAIRowMatrix>

	1000000 timesRepeat:[  a1 at: 250 and: 250 ].
]

{ #category : #benchmarks }
MBAccess >> accessArray2D [

	
	<benchmark: 'Accessing Array 2D'>
	<setup: #setupArray2D>

	1000000 timesRepeat:[  a1 at: 250 at: 250 ].
]

{ #category : #benchmarks }
MBAccess >> accessPMMatrix [

	
	<benchmark: 'Accessing PMMatrix'>
	<setup: #setupPMMatrix>

	1000000 timesRepeat:[  a1 at: 250 at: 250 ].
]

{ #category : #benchmarks }
MBAccess >> accessPMSymmetricMatrix [

	
	<benchmark: 'Accessing PMSymmetricMatrix'>
	<setup: #setupPMSymmetricMatrix>

	1000000 timesRepeat:[  a1 at: 250 at: 250 ].
]
