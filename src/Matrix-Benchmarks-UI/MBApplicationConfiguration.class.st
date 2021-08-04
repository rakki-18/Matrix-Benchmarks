"
I extend the style of presenters used in `MBApplication` class.

A custom style class myButton is implemented.

Usage

```Smalltalk
aButtonPresenter addStyle: 'myButton'
```
"
Class {
	#name : #MBApplicationConfiguration,
	#superclass : #SpMorphicConfiguration,
	#category : #'Matrix-Benchmarks-UI'
}

{ #category : #styling }
MBApplicationConfiguration >> styleSheet [

	^ super styleSheet, (SpStyleVariableSTONReader   fromString: '
		.application [

	 		.button [ 

			.myButton[
				Container {  #padding: 5 }
			]
		]
		 
	]')




]
