"
Main UI class for user-based execution of Matrix Benchmarking operations.

With this UI the user can specify the parameter of interest, run and visualize results in a graphical way.

MBApplication new start.
"
Class {
	#name : #MBApplication,
	#superclass : #SpApplication,
	#category : #'Matrix-Benchmarks-UI'
}

{ #category : #menu }
MBApplication class >> menu00MatrixBenchmarkslOn: aBuilder [
	<worldMenu>
	(aBuilder item: #MB)
		parent: #Tools;
		label: 'Matrix Benchmarks';
		"icon: self mbIcon;"
		help: 'Open the Matrix Benchmarks Spec Application';
		order: 778;
		action: [ MBPresenter new openWithSpec ]
]

{ #category : #accessing }
MBApplication >> start [

	^ (self new: MBPresenter) openWithSpec.
]
