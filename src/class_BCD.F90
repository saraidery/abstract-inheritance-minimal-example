!
!
module class_B_class
!
   implicit none
!
   type class_B
!
      integer, public :: first  = 0
      integer, public :: length = 0
!
   contains
!
      procedure, private   :: is_equal_range
!
   end type class_B
!
   interface class_B
!
      procedure :: new_range
!
   end interface class_B
!
contains
!
!
   function new_range(first, length) result(this)
!
      implicit none
!
      integer, intent(in) :: first, length
!
      type(class_B) :: this
!
      this%first  = first
      this%length = length
!
   end function new_range
!
!
   function is_equal_range(this, that) result(is_equal)
!
      implicit none
!
      class(class_B), intent(in) :: this
      class(class_B), intent(in) :: that
!
      logical :: is_equal
!
      is_equal = ((this%first  .eq. that%first)  .and. &
                  (this%length .eq. that%length))
!
   end function is_equal_range
!
!
end module class_B_class
!
module class_C_class
!
   use, intrinsic :: iso_fortran_env, only: real64
   use class_B_class,                 only: class_B
!
   implicit none
!
   type, abstract :: class_C
!
      integer :: dim_
!
      type(class_B), dimension(:), allocatable :: array_B
!
   contains
!
      procedure (get_C), public, deferred :: get
      procedure (set_C), public, deferred :: set
!
   end type class_C
!
   abstract interface
!
      subroutine set_C(this, L)
!
         use, intrinsic :: iso_fortran_env, only: real64
         import class_C
!
         implicit none
!
         class(class_C), intent(inout):: this
!
         real(real64), dimension(this%dim_), intent(in)   :: L
!
      end subroutine set_C
!
      subroutine get_C(this, L)
!
         use, intrinsic :: iso_fortran_env, only: real64
         import class_C
!
         implicit none
!
         class(class_C), intent(inout):: this
!
         real(real64), dimension(this%dim_), intent(out)  :: L
!
      end subroutine get_C
!
   end interface
!
!
end module class_C_class
!
!
module class_D_class
!
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
