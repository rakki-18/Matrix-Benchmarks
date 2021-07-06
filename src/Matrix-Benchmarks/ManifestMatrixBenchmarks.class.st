"
I contain the classes to benchmark matrix implementations.

I support two types of benchmarks.
- `runBenchmarks:` which runs the benchmarks for a particular matrix Size as provided by the user.
- `runAllBenchmarks` runs the benchmarks for matrix sizes 50,100,..300 if the operation is not time consuming and for matrix sizes, 50,75,..,150 if the operation is time-consuming.

To check all the operations that have been benchmarked
```Smalltalk
MBAbstract operations
```

Public API to run the Benchmarks

```Smalltalk
MBOperation runBenchmarks: matrixSize. ""or""
MBOperation runAllBenchmarks.
```
where `MBOperation` can be any operation that was listed by `MBAbstract operations`.

Some examples
```Smalltalk
MBAddition runBenchmarks: 300.
MBMultiplication runAllBenchmarks
```

The benchmark inspector output contains visualization of the results along with a report containing the time, space consumed, and the matrix size parameter used.
"
Class {
	#name : #ManifestMatrixBenchmarks,
	#superclass : #PackageManifest,
	#category : #'Matrix-Benchmarks-Manifest'
}
