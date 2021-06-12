Class {
	#name : #CSPMSymmetricMatrixBenchmark,
	#superclass : #CSAbstractMatrixBenchmark,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #benchmarking }
CSPMSymmetricMatrixBenchmark >> identityMatrix [

	<benchmark: 'Identity Matrix initialization'>

	self initRepetitions timesRepeat:[ PMSymmetricMatrix identity:  self elementSize  ].
]

{ #category : #benchmarking }
CSPMSymmetricMatrixBenchmark >> randomMatrix [

	<benchmark: 'Random Matrix initialization'>

	self initRepetitions timesRepeat:[ PMSymmetricMatrix new: self elementSize random: 10000  ].
]
