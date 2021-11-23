module abstract_base_class
!
   implicit none
!
   type, abstract :: base
!
      integer :: i
!
   contains
      procedure(routine_base), public, deferred :: routine
!
      procedure :: say_hi_in_another_way
!
   end type
!
   abstract interface
 
      subroutine routine_base(this)
!
         import base
         implicit none
!
         class(base) :: this
!
      end subroutine routine_base 
  
   end interface
!
contains
!
   subroutine say_hi_in_another_way(this)
!
      implicit none
!
      class(base) :: this
!
      integer :: j
!
      this%i = 1
!
      do j = 1, this%i
         print*, 'hello'
      enddo
!
   end subroutine say_hi_in_another_way
!
end module abstract_base_class
