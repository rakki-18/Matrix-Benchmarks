Class {
	#name : #MBPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'matrixSize',
		'operations',
		'button'
	],
	#category : #'Matrix-Benchmark-Application'
}

{ #category : #specs }
MBPresenter class >> defaultSpec [

	^ SpBoxLayout newTopToBottom
	
	add: #matrixSize withConstraints: [ :constraints | constraints height: self labelledPresenterHeight];
	add: 'Select the operation to benchmark' expand: false;
	add: #operations ;
	
	addLast: #button expand: false;
	yourself
]

{ #category : #initialization }
MBPresenter >> initializePresenters [

	matrixSize := self instantiate: (SpLabelledPresenter label: 'Matrix Size' input: (self newTextInput placeholder: '100') description: 'Size of the square matrices on which the benchmarks will be run.').
	
	operations := self newList.
	operations 
		items: MBAbstract subclasses.
	button := self newButton label: 'benchmark'.
	self focusOrder add: matrixSize.
]

{ #category : #accessing }
MBPresenter >> matrixSize [

	^ matrixSize
]
