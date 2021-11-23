module test_class
!
   use abstract_derived_class, only: derived
   implicit none
!
   type :: test
!
      !class(derived), allocatable :: A
!
   contains
      procedure, public :: say_hi
   end type
!
contains
      subroutine say_hi(this)
!
         implicit none
!
         class(test) :: this
!
         print*, 'Hello little friend'
!
      end subroutine say_hi
!
end module test_class
