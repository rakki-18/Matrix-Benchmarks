"
I am a dialog presenter. I am responsible for sending warnings to the user when the user clicks on the benchmark button without selecting an operation
"
Class {
	#name : #MBDialogPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'content',
		'flag'
	],
	#category : #'Matrix-Benchmarks-UI'
}

{ #category : #specs }
MBDialogPresenter class >> defaultSpec [

	^ SpBoxLayout newTopToBottom 
	  add: #content;
	  yourself
]

{ #category : #initialization }
MBDialogPresenter >> content [

	flag = 'List' ifTrue: [  
		^ 'Select an operation to benchmark'
		]
	ifFalse: [ 
		^ 'Execute a benchmark to see plots' ]
]

{ #category : #initialization }
MBDialogPresenter >> initializeDialogWindow: aDialogPresenter [ 
	
	super initializeDialogWindow: aDialogPresenter.
	aDialogPresenter
		initialExtent: 300@300;
		title: 'Warning';
		closeOnBackdropClick: true;
		okAction: [ :presenter | self inform: 'Ok' ];
		cancelAction: [ :presenter | self inform: 'Cancel' ]
]

{ #category : #initialization }
MBDialogPresenter >> initializePresenters [ 

	content := self newText.


]

{ #category : #accessing }
MBDialogPresenter >> setFlag: aFlag [


	flag := aFlag.
	self updateContent.
]

{ #category : #initialization }
MBDialogPresenter >> updateContent [

	flag = 'List' ifTrue: [  
		content text: 'Select an operation to benchmark'
		]
	ifFalse: [ 
		content text: 'Execute a benchmark to see plots' ]
]
