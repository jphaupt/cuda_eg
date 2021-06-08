# cuda_eg

This is just a minimum example for building CUDA Fortran programs with `fpm`. Provided for [this discussion](https://github.com/fortran-lang/fpm/discussions/493).

Build and run with
```
nvfortran -c src/cuda_eg.f90 -cuda
nvfortran -o check cuda_eg.o app/main.f90 -cuda
./check
```

This is the output using instructions from the discussion for `fpm`:
```
fpm build --compiler nvfortran --flag '-cuda -Mpreprocess'
Unable to find source for module dependency: "cudafor" used by "./src/cuda_eg.f90"
ERROR STOP 1

Error termination. Backtrace:
#0  0x5590655701cc in ???
#1  0x5590654ff13f in ???
#2  0x7fc723eafb24 in ???
#3  0x5590654ff1b8 in ???
```

Actual programs I want to write will also need to be able to link to outside libraries, for example `curand`. 