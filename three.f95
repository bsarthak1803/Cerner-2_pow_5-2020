!cerner_2^5_2020
MODULE Circle_Operations
IMPLICIT NONE
CONTAINS
FUNCTION Area(radius)
REAL :: Area
REAL, INTENT(IN) :: Radius
Area = Radius**2 * 3.14159
END FUNCTION Area
FUNCTION Circumference(radius)
REAL :: Circumference
REAL, INTENT(IN) :: Radius
Circumference = Radius * 2 * 3.14159
END FUNCTION Circumference
END MODULE Circle_Operations

PROGRAM Circle
USE Circle_Operations
IMPLICIT NONE
REAL :: r=5.0
PRINT *,"Area=",Area(r)
PRINT *,"Circumference=",Circumference(r)
END PROGRAM Circle