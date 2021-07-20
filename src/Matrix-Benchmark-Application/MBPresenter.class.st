Class {
	#name : #MBPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'matrixSize',
		'operations',
		'benchmarkButton',
		'stopButton'
	],
	#category : #'Matrix-Benchmark-Application'
}

{ #category : #specs }
MBPresenter class >> defaultSpec [

	^ SpBoxLayout newTopToBottom
	
	add: #matrixSize withConstraints: [ :constraints | constraints height: self labelHeight];
	add: 'Select the operation to benchmark' expand: false;
	add: #operations ;
	
	addLast: (SpBoxLayout newLeftToRight 
		add: #benchmarkButton ;
		add: #stopButton ; yourself
		);
	yourself
]

{ #category : #initialization }
MBPresenter >> initializePresenters [

	matrixSize := self instantiate: (SpLabeledPresenter label: 'Matrix Size' input: (self newTextInput placeholder: '100') description: 'Size of the square matrices on which the benchmarks will be run.').
	
	operations := self newList.
	operations 
		items: MBAbstract subclasses.
	benchmarkButton  := self newButton label: 'benchmark'; color: Color orange ; yourself.
	stopButton := self newButton label: 'Stop'; color: Color red; yourself.
	self focusOrder add: matrixSize.
]

{ #category : #accessing }
MBPresenter >> matrixSize [

	^ matrixSize
]
