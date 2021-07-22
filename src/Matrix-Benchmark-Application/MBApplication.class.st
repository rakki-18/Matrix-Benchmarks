"
Main UI class for user-based execution of Matrix Benchmarking operations.

With this UI the user can specify the parameter of interest, run and visualize results in a graphical way.

MBApplication new start.
"
Class {
	#name : #MBApplication,
	#superclass : #SpApplication,
	#category : #'Matrix-Benchmark-Application'
}

{ #category : #accessing }
MBApplication >> start [

	^ (self new: MBPresenter) openWithSpec.
]
