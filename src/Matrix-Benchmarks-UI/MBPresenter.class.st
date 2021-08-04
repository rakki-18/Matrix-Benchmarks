Class {
	#name : #MBPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'matrixSizeLabel',
		'matrixSizeInput',
		'benchmarkButton',
		'stopButton',
		'operationsListPresenter'
	],
	#category : #'Matrix-Benchmarks-UI'
}

{ #category : #specs }
MBPresenter class >> defaultSpec [

	^ SpBoxLayout newTopToBottom
		add: #matrixSizeInput withConstraints: [ :constraints | constraints height: self toolbarHeight * 2 ];
		add: 'Select the operation to benchmark' expand: false;
		add: #operationsListPresenter ;
		addLast: (SpBoxLayout newLeftToRight 
			add: #benchmarkButton ;
			add: #stopButton ; 
			yourself);
		yourself
]

{ #category : #accessing }
MBPresenter >> benchmarkButton [

	^benchmarkButton 
]

{ #category : #initialization }
MBPresenter >> connectPresenters [

	"self benchmarkButton action: [ Transcript show: self operations selection selectedItem ]"
	"self benchmarkButton action: [ Transcript show: self matrixSizeInput number  ]."
	self benchmarkButton action: [ 
		| benchmarkClass matrixSize |
		benchmarkClass := self getBenchmarkClass.
		matrixSize :=  self getMatrixSize.
		benchmarkClass perform: #runBenchmarks: with: matrixSize ]
]

{ #category : #accessing }
MBPresenter >> getBenchmarkClass [

	^ self operationsListPresenter selection selectedItem
]

{ #category : #accessing }
MBPresenter >> getMatrixSize [

	"when matrix size is not entered yet, the default size is 0, return 100 in this case"
	self matrixSizeInput number = 0 ifTrue: [ 
		 ^ 100 ].
	
	^ self matrixSizeInput number
]

{ #category : #initialization }
MBPresenter >> initializeFocusOrder [

	self focusOrder 
		add: matrixSizeInput;
		add: operationsListPresenter;
		add: benchmarkButton;
		add: stopButton
]

{ #category : #initialization }
MBPresenter >> initializePresenters [
	" Private - See superimplementor's comment "

	matrixSizeInput := (SpLabeledPresenter 
		label: 'Matrix Size' 
		input: (self newTextInput placeholder: '100') 
		description: 'Size of the square matrices on which the benchmarks will be run.').
	operationsListPresenter := self newList.
	operationsListPresenter items: MBAbstract subclasses.
	benchmarkButton  := self newButton label: 'benchmark'; color: Color orange ; yourself.
	stopButton := self newButton label: 'Stop'; color: Color red; yourself.
	self initializeFocusOrder.
]

{ #category : #accessing }
MBPresenter >> matrixSizeInput [

	^ matrixSizeInput
]

{ #category : #accessing }
MBPresenter >> operationsListPresenter [ 

	^ operationsListPresenter
]
