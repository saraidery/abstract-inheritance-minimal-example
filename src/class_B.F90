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
