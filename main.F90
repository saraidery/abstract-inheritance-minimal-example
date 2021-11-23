program main

   use abstract_derived_class, only: derived
   implicit none

   class(derived), allocatable :: derived_instance

   print*, 'HELLO WORLD'
end program
