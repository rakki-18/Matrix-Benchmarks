Class {
	#name : #BaselineOfMatrixBenchmark,
	#superclass : #BaselineOf,
	#category : #BaselineOfMatrixBenchmark
}

{ #category : #baselines }
BaselineOfMatrixBenchmark >> baseline: spec [
  <baseline>
	spec
		for: #(common)
		do: [ 
			spec 
				package: 'Matrix-Benchmark'.

			spec 
				group: 'Core' 			with: #('Matrix-Benchmarks')]
]
