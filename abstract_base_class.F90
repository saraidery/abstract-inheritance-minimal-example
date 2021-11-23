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
end module abstract_base_class
