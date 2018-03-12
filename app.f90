SUBROUTINE roll_dice(a, b) 
    INTEGER, intent(in) :: a, b
    REAL :: thrown_dice(a)
    call random_number(thrown_dice)
    thrown_dice = (thrown_dice*b)+1
    print *,int(thrown_dice)
END 


PROGRAM test_getarg
  CHARACTER(len=32) :: num_dice_arg
  CHARACTER(len=32) :: num_sides_arg
  INTEGER :: m, n

  CALL getarg(1, num_dice_arg)
  CALL getarg(2, num_sides_arg)

  read(num_dice_arg , *) m
  read(num_sides_arg , *) n
  CALL roll_dice(m, n)

END PROGRAM
