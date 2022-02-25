# Matrix-Benchmarks
Package to benchmark different matrix types and operations in Pharo


## How to install the package?

1. Go to Playground (Ctrl+O+W) in your [Pharo](https://pharo.org/) image.
2. Execute the following Metacello script (select it and press Do-it button or Ctrl+D):

```Smalltalk
EpMonitor disableDuring: [ 
	Metacello new
		baseline: 'MatrixBenchmark';
		repository: 'github://rakki-18/Matrix-Benchmarks/src';
		load ]
```
In order to supress load warnings, you may prefer
```Smalltalk
[ Metacello new
  baseline: 'MatrixBenchmark';
  repository: 'github://rakki-18/Matrix-Benchmarks/src';
  load ] 
on: MCMergeOrLoadWarning 
do: [:warning | warning load ]
```

## Running the Benchmark GUI
```Smalltalk
MBApplication new start
```

If you prefer not to run the User-Interface, then you can run the benchmarks programatically using
## Running Benchmarks
To run benchmarks on a particular operation for a particular matrix size:
```Smalltalk
MBOperationName runBenchmarks: matrixSize
```

To run benchmarks for a particular operation for a set of matrix sizes:
```Smalltalk
MBOperationName runAllBenchmarks
```
The range of the matrix sizes on which the benchmarks are run can be customized by:
```Smalltalk
MBOperationName runAllBenchmarksFrom: fromMatrixSize to: toMatrixSize by: aNumber
```

To see all the available operations that can be benchmarked:
```Smalltalk
MBAbstract operations
```
### Examples
- On the operation - Addition:
```Smalltalk
MBAddition runAllBenchmarks.
```
- On the operation - Element-wise Multiplication
```Smalltalk
MBElementWiseMultiplication runBenchmarks: 200.
```
- On the operation - Accessing cells of a matrix for the matrix sizes {50,100,150,200}
```Smalltalk
MBAccess runAllBenchmarksFrom: 50 to: 200 by: 50 
```

## Matrix Implementations covered 
- Array2D
- PMMatrix
- PMSymmetricMatrix
- AIColumnMatrix
- AIRowMatrix
- AISymetricMatrix
- AIDiagonalMatrix
- PMJacobiTransformation
- PMLinearEquationSystem
- PMLUPDecomposition


## Matrix Operations covered
- Building an empty Matrix
- Building a matrix filled with zeros
- Accessing matrix cells
- Addition of matrices
- Subtraction of matrices
- Matrix Multiplication
- Element-wise Multiplication
- Multiplication with a number
- Division with a number
- Comparing matrices
- Finding determinant
- Finding inverse
- Transpose of a matrx
- Trace of a matrix
- Finding eigenvectors
- Gaussian Elimination
- LU Decomposition
- QR Decomposition
- Rank factorization
- Singular Value Decomposition
- Strassen Multiplication

## How to depend on the project?

If you want to add a dependency to your project, include the following lines into your baseline method:

```Smalltalk
spec
  baseline: 'MatrixBenchmark'
  with: [ spec repository: 'github://rakki-18/Matrix-Benchmarks/src' ].
```


Check out [Baselines](https://github.com/pharo-open-documentation/pharo-wiki/blob/master/General/Baselines.md) to learn more about baselines.


## Running Benchmark UI
- Select the matrix operation.
- Select the matrix sizes parameters and execute
- Outputs the benchmark results and plots.

![benchmark_ui](https://user-images.githubusercontent.com/55957545/155751533-e4e3f32a-08e8-4322-9236-5802b4dda6f7.png)


![benchmark_result](https://user-images.githubusercontent.com/55957545/155751747-935aa3e0-63ef-43c9-9bda-2b587cd66846.png)
