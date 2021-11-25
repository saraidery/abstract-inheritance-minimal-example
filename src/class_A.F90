!
module class_A_class
!
   use parameters
   use global_out, only: output
   use class_C_class, only: class_C
!
   implicit none
!
   type :: class_A
!
      class(class_C), allocatable :: A

      integer :: b
      integer :: c
!
   contains
!
     procedure :: cleanup  => cleanup_class_A
     procedure :: submodule_routine_1 => submodule_routine_1_class_A
     procedure :: submodule_routine_2  => submodule_routine_2_class_A

   end type class_A
!
!
   interface
!
     include "submodule_class_A_interface.F90"
!
   end interface
!
contains
!
   subroutine cleanup_class_A(this)
!
      implicit none
!
      class(class_A) :: this
!
      call output%printf()
!
   end subroutine cleanup_class_A
!
!
end module class_A_class
