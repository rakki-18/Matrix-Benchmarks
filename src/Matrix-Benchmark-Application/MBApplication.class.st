Class {
	#name : #MBApplication,
	#superclass : #SpApplication,
	#category : #'Matrix-Benchmark-Application'
}

{ #category : #accessing }
MBApplication >> start [

	^ ( self new: MBPresenter  ) openWithSpec.
]
