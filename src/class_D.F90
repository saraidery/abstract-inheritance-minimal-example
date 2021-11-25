!
module class_D_class
!
   use parameters
   use global_out, only : output
   use class_B_class
!
   type, extends(class_B) :: class_D
!
      integer :: dim_
!
   contains
!
      procedure :: class_routine  => class_routine_class_D
!
   end type class_D
!
!
   interface class_D
!
      procedure :: new_class_D
!
   end interface class_D
!
!
contains
!
!
   function new_class_D(dim_) result(this)
!!
!!    New batching index 
!!
      implicit none
!
      type(class_D) :: this
!
      integer, intent(in) :: dim_
!
      this%dim_ = dim_
!
   end function new_class_D
!
!
   subroutine class_routine_class_D(this)
!!
!!
      implicit none
!
      class(class_D) :: this
!
      this%class_B = class_B(1,10)
!
   end subroutine class_routine_class_D
!
!
end module class_D_class
