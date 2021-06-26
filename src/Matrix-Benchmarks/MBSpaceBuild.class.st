Class {
	#name : #MBSpaceBuild,
	#superclass : #MBSpaceAbstract,
	#category : #'Matrix-Benchmarks'
}

{ #category : #normal }
MBSpaceBuild >> buildPMMatrix [

	|a|
	
	a := MessageTally spyOn: [ PMMatrix new: 500] reportOtherProcesses: false cutoff: 1 openResultWindow: false.
	
	" Used Memory is stored in gcStats"
	^ a gcStats at: 2.
	
]
