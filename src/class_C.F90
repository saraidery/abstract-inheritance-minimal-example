!
module class_C_class
!
   use kinds
   use global_out,            only : output
   use class_B_class,         only: class_B
!
   implicit none
!
   type, abstract :: class_C
!
      integer :: dim_
!
      type(class_B), dimension(:), allocatable :: array_B ! IF this goes -> no error
!
   contains
!
      procedure (get_abstract), public, deferred :: get
      procedure (set_abstract), public, deferred :: set
!
   end type class_C
!
   abstract interface
!
      subroutine set_abstract(this, L_Jpq)
!
         use kinds
         import class_C
!
         implicit none
!
         class(class_C), intent(inout):: this
!
         real(dp), dimension(this%dim_), intent(in)   :: L_Jpq
!
      end subroutine set_abstract
!
      subroutine get_abstract(this, L_Jpq)
!
         use kinds
         import class_C
!
         implicit none
!
         class(class_C), intent(inout):: this
!
         real(dp), dimension(this%dim_), intent(out)  :: L_Jpq
!
      end subroutine get_abstract
!
   end interface
!
!
end module class_C_class
