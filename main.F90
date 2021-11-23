program main

   use test_class, only: test
   implicit none

   class(test), allocatable :: T

   allocate(T)
   call T%say_hi()
   deallocate(T)

end program
