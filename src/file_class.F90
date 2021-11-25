!
module file_class
!
   type:: file_
!
   contains
!
      procedure, public :: open_  => open_file_
      procedure, public :: printf => printf_file_
!
   end type file_
!
   interface file_
!
      procedure new_file_
!
   end interface file_
!
contains
!
!
   function new_file_(name_) result(this)
!!
      implicit none
!
      type(file_) :: this
!
      character(len=*), intent(in) :: name_
!
      print*, 'this is the name of the file: ' // name_
!
   end function new_file_
!
!
   subroutine open_file_(this)
!!
!!    Open the output file
!!    Written by Rolf H. Myhre, May 2019
!!
      implicit none
!
      class(file_) :: this
!
      print*, 'open file'
!
   end subroutine open_file_
!
!
   subroutine printf_file_(this)
!!
      implicit none
!
      class(file_), intent(in) :: this
!
      print*, 'hello from file'
!
   end subroutine printf_file_
!
!
end module file_class
