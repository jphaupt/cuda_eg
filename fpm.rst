################################################################################
@run
option run --compiler nvfortran --flag "-cuda -Mpreprocess"

@build
option build --compiler nvfortran --flag "-cuda -Mpreprocess"

@test
option build --compiler nvfortran --flag "-cuda -Mpreprocess"
################################################################################