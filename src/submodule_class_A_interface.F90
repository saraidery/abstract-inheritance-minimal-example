!
   module subroutine submodule_routine_1_class_A(this, A1, A2)
      implicit none
!
      class(class_A), intent(inout) :: this
      class(class_C), intent(inout) :: A1
      class(class_C), intent(inout) :: A2
!
   end subroutine submodule_routine_1_class_A
!
!
   module subroutine submodule_routine_2_class_A(this, A1, A2)
      use class_D_class, only : class_D ! Without this no error
!
      implicit none
!
      class(class_A), intent(inout) :: this
      class(class_C), intent(inout) :: A1
      class(class_C), intent(inout) :: A2
!
   end subroutine submodule_routine_2_class_A
