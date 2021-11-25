!
program program_
!
   use global_out
!
   implicit none
!
   output = file_('filename')
   call program_routine()
!
end program program_
!
!
subroutine program_routine()
!!
   use class_A_class, only: class_A
!
   implicit none
!
   class(class_A), allocatable :: A
!
   allocate(class_A :: A)
!
   call A%routine_()
!
end subroutine program_routine
!
