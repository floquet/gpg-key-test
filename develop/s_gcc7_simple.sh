#!/bin/sh

echo "start = $(date)"

# python_packages="pillow pycodestyle pyflakes pyparsing pytz requests setuptools six subprocess32"
gcc7="boost caliper dos2unix font-util fontconfig freetype gasnet gettext glib glm googletest gperf gsl icu4c"
gcc7="${gcc7} inputproto intel-mkl jpeg kbproto kokkos lcms legion libffi libmng libpng libpthread-stubs libquo libtiff libunwind libx11 libxau libxcb libxdmcp libxml2"
gcc7="${gcc7} matio metis moab mumps netcdf openblas papi pcre petsc python qt"
gcc7="${gcc7} readline silo sqlite suite-sparse trilinos valgrind xcb-proto xextproto xproto xtrans"

for my_package in ${gcc7}
    do
        package="${my_package}"

        echo ""; echo "+   +    +   +   +   +   +"

        echo "spack clean ${package}"
              spack clean ${package}

        echo "spack install ${package} % gcc @ 7.1.0"
              spack install ${package} % gcc @ 7.1.0

        echo "spack clean ${package}"
              spack clean ${package}
    done

echo "stop = $(date)"
