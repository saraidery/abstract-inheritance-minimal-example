!
!
!  eT - a coupled cluster program
!  Copyright (C) 2016-2021 the authors of eT
!
!  eT is free software: you can redistribute it and/or modify
!  it under the terms of the GNU General Public License as published by
!  the Free Software Foundation, either version 3 of the License, or
!  (at your option) any later version.
!
!  eT is distributed in the hope that it will be useful,
!  but WITHOUT ANY WARRANTY; without even the implied warranty of
!  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
!  GNU General Public License for more details.
!
!  You should have received a copy of the GNU General Public License
!  along with this program. If not, see <https://www.gnu.org/licenses/>.
!
!
   module subroutine submodule_routine_1_class_A(this, A1, A2)
      implicit none
!
      class(class_A), intent(inout) :: this
      class(class_C), intent(inout) :: A1
      class(class_C), intent(inout) :: A2
!
   end subroutine submodule_routine_1_class_A
!
!
   module subroutine submodule_routine_2_class_A(this, A1, A2)
      use class_D_class, only : class_D ! Without this no error
!
      implicit none
!
      class(class_A), intent(inout) :: this
      class(class_C), intent(inout) :: A1
      class(class_C), intent(inout) :: A2
!
   end subroutine submodule_routine_2_class_A
