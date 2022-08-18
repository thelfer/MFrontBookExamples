include(cmake/modules/compiler.cmake)
include(cmake/modules/common-compiler-flags.cmake)

pleiades_enable_cxx_compiler_flag(OPTIMISATION_FLAGS "march=auto")

set(OPTIMISATION_FLAGS "-DNO_RUNTIME_CHECK_BOUNDS ${OPTIMISATION_FLAGS}")

if(CMAKE_BUILD_TYPE STREQUAL "Release")
  set(OPTIMISATION_FLAGS "-O3 -DNDEBUG ${OPTIMISATION_FLAGS}")
endif(CMAKE_BUILD_TYPE STREQUAL "Release")

if(MFM_USE_FORTRAN)
  if(${CMAKE_Fortran_COMPILER_ID} STREQUAL "PathScale")
    set(PATHSCALE_FORTRAN_COMPILER ON)
  else(${CMAKE_Fortran_COMPILER_ID} STREQUAL "PathScale")
    message(FATAL_ERROR "unsupported fortran compiler ${CMAKE_Fortran_COMPILER_NAME}")
  endif(${CMAKE_Fortran_COMPILER_ID} STREQUAL "PathScale")
endif(MFM_USE_FORTRAN)
