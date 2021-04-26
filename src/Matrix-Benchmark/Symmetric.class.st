Class {
	#name : #Symmetric,
	#superclass : #Object,
	#category : #'Matrix-Benchmark'
}

{ #category : #benchmarking }
Symmetric >> benchmark [
	"benchmarks initialisation time of Symmetric Matrix class"

			
	|time|
   	time:= Time millisecondsToRun: [ PMSymmetricMatrix new: 5000 random: 10000].
	^ time

]
