!
submodule (class_A_class) submodule_class_A
!
      implicit none
!
contains
!
!
   module subroutine submodule_routine_1_class_A(this, C)
!
      implicit none
!
      class(class_A), intent(inout) :: this
!
      class(class_C), intent(inout) :: C
!
      call this%submodule_routine_2(C)
!
   end subroutine submodule_routine_1_class_A
!
!
   module subroutine submodule_routine_2_class_A(this, C)
!
      use, intrinsic :: iso_fortran_env, only: real64
      use class_D_class, only : class_D
!
      implicit none
!
      class(class_A), intent(inout) :: this
!
      class(class_C), intent(inout) :: C
!
      real(real64), dimension(:,:,:), allocatable :: L
!
      type(class_D) :: D
!
      integer :: i
!
      allocate(L(1,1,1))
!
      D = class_D(this%c)
!
      do i = 1, D%dim_
!
         call D%class_routine()
!
         call C%get(L)
         call C%set(L)
!
      enddo
!
      deallocate(L)
!
   end subroutine submodule_routine_2_class_A
!
!
end submodule submodule_class_A
