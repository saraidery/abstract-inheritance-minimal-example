program main

   use test_derived_class, only: test_derived
   implicit none

   class(test_derived), allocatable :: T

   allocate(T)
   call T%say_hi()
   deallocate(T)

end program
