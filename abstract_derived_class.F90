module abstract_derived_class
   use abstract_base_class, only: base
   implicit none
   type, extends(base), abstract :: derived
   contains
      procedure(another_routine_derived), public, deferred :: another_routine
   end type
   abstract interface

      subroutine another_routine_derived(this)
         import derived
         implicit none
         class(derived) :: this
      end subroutine another_routine_derived

   end interface
end module abstract_derived_class
