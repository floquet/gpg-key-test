#!/bin/sh

echo "start = $(date)"

# define spack packages with must build under two versions of openmpi
dual="boost caliper gasnet gettext legion matio metis moab mumps netcdf netlib-scalapack"
dual="${dual} parmetis superlu-dist@4.4 superlu-dist@5.1.3 trilinos valgrind"

for package in ${dual}
  do

    echo "+  +  +  +  +  +  ${package}"

    echo "spack install ${package} ^ openmpi @ 2.1.1 % gcc @ 7.1.0"
          spack install ${package} ^ openmpi @ 2.1.1 % gcc @ 7.1.0

    echo "spack install ${package} ^ openmpi @ 1.10.5 % gcc @ 7.1.0"
          spack install ${package} ^ openmpi @ 1.10.5 % gcc @ 7.1.0
  done

echo "stop = $(date)"
