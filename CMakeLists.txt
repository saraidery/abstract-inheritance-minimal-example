cmake_minimum_required(VERSION 3.7)

project(test_abstract_inheritance Fortran C)

option(USE_64BIT_INTEGERS "Use 64-bit integers" ON)

# Compiler flags
if(CMAKE_Fortran_COMPILER_ID MATCHES GNU)

    set(CMAKE_Fortran_FLAGS "-std=f2008 -Wall")

    if(USE_64BIT_INTEGERS)
        set(CMAKE_Fortran_FLAGS
            "${CMAKE_Fortran_FLAGS} -fdefault-integer-8"
            )
    endif()

    message("-- Fortran compiler flags: ${CMAKE_Fortran_FLAGS}")
endif()

if(CMAKE_Fortran_COMPILER_ID MATCHES Intel)
    set(CMAKE_Fortran_FLAGS "-warn all -stand f18")

    if(USE_64BIT_INTEGERS)
        set(CMAKE_Fortran_FLAGS
            "${CMAKE_Fortran_FLAGS} -i8"
            )
    else()
        set(CMAKE_Fortran_FLAGS
            "${CMAKE_Fortran_FLAGS} -i4"
            )
    endif()

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
    src/parameters.F90
)


add_executable(test_abstract_inheritance.x ${sources})

set_target_properties(test_abstract_inheritance.x PROPERTIES LINKER_LANGUAGE Fortran)
