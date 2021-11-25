!
submodule (class_A_class) submodule_class_A
!
      implicit none
!
contains
!
!
   module subroutine submodule_routine_1_class_A(this, A1, A2)
!
      implicit none
!
      class(class_A), intent(inout) :: this
!
      class(class_C), intent(inout) :: A1
      class(class_C), intent(inout) :: A2
!
      call this%submodule_routine_2(A1, A2)
!
   end subroutine submodule_routine_1_class_A
!
!
   module subroutine submodule_routine_2_class_A(this, A1, A2)
!
      use class_D_class, only : class_D ! Without this no error
!
      implicit none
!
      class(class_A), intent(inout) :: this
!
      class(class_C), intent(inout) :: A1
      class(class_C), intent(inout) :: A2
!
      real(dp), dimension(:,:,:), allocatable :: L
!
      type(class_D) :: batch_v ! Without this no error
!
      integer :: v_batch
!
      batch_v = class_D(this%c)
!
      do v_batch = 1, batch_v%dim_
!
         call batch_v%determine_limits()
!
         call A1%get(L)
         call A2%set(L)
!
      enddo
!
   end subroutine submodule_routine_2_class_A
!
!
end submodule submodule_class_A
