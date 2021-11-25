cmake_minimum_required(VERSION 3.7)

project(test_ifort_issue Fortran C)

# Compiler flags
if(CMAKE_Fortran_COMPILER_ID MATCHES GNU)

    set(CMAKE_Fortran_FLAGS "-std=f2008 -Wall -fdefault-integer-8")

    message("-- Fortran compiler flags: ${CMAKE_Fortran_FLAGS}")
endif()

if(CMAKE_Fortran_COMPILER_ID MATCHES Intel)
    set(CMAKE_Fortran_FLAGS "-warn all -stand f18 -i8")

     message("-- Fortran compiler flags: ${CMAKE_Fortran_FLAGS}")
endif()

# Set sources to compile
set(sources
    src/program.F90
    src/class_A.F90
    src/class_B.F90
    src/class_C.F90
    src/class_D.F90
    src/submodule_class_A.F90
    src/file_class.F90
    src/global_out.F90
    src/kinds.F90
)


add_executable(test_ifort_issue.x ${sources})

set_target_properties(test_ifort_issue.x PROPERTIES LINKER_LANGUAGE Fortran)
