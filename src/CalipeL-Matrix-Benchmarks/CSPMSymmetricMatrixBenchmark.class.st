Class {
	#name : #CSPMSymmetricMatrixBenchmark,
	#superclass : #Object,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #benchmarking }
CSPMSymmetricMatrixBenchmark >> identityMatrix [

	<benchmark: 'Identity Matrix initialization'>

	100 timesRepeat:[ PMSymmetricMatrix identity:  500  ].
]

{ #category : #benchmarking }
CSPMSymmetricMatrixBenchmark >> randomMatrix [

	<benchmark: 'Random Matrix initialization'>

	100 timesRepeat:[ PMSymmetricMatrix new: 500 random: 10000  ].
]
