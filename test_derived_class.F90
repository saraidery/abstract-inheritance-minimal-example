module test_derived_class
!
   use abstract_derived_class, only: derived
   implicit none
!
   type, extends(test) :: test_derived
!
      class(derived), allocatable :: A
!
   contains
      procedure, public :: say_hello
   end type
!
contains
      subroutine say_hello(this)
!
         implicit none
!
         class(test_derived) :: this
!
         print*, 'Hello you'
!
      end subroutine say_hello
!
end module test_derived_class
