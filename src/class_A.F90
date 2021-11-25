!
module class_A_class
!
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
     procedure :: routine_  => routine_class_A
     procedure :: submodule_routine_1 => submodule_routine_1_class_A
     procedure :: submodule_routine_2  => submodule_routine_2_class_A

   end type class_A
!
!
   interface
!
   module subroutine submodule_routine_1_class_A(this, C)
!
      implicit none
!
      class(class_A), intent(inout) :: this
      class(class_C), intent(inout) :: C
!
   end subroutine submodule_routine_1_class_A
!
!
   module subroutine submodule_routine_2_class_A(this, C)
!
      use class_D_class, only : class_D
!
      implicit none
!
      class(class_A), intent(inout) :: this
      class(class_C), intent(inout) :: C
!
   end subroutine submodule_routine_2_class_A
!
   end interface
!
contains
!
   subroutine routine_class_A(this)
!
      implicit none
!
      class(class_A) :: this
!
      call output%printf()
!
   end subroutine routine_class_A
!
!
end module class_A_class
