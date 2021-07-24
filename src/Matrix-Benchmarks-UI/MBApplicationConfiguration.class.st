Class {
	#name : #MBApplicationConfiguration,
	#superclass : #SpMorphicConfiguration,
	#category : #'Matrix-Benchmarks-UI'
}

{ #category : #styling }
MBApplicationConfiguration >> styleSheet [


	^ super styleSheet, (SpStyleVariableSTONReader  fromString: '
		.application [

				.myButton [
					Container { 
					#padding: 5
					}
				]
			]	
		]')


]
