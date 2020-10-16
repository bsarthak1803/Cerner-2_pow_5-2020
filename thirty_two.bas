REM cerner_2^5_2020
DIM d&(2, 2000)
m& = 1000000007
INPUT n%, k%
FOR i% = 1 TO n%
    d&(1, i%) = 1
NEXT
c% = 1
FOR i% = 1 TO k%
    FOR j% = 1 TO n%
        d&(3 - c%, j%) = 0
    NEXT
    FOR j% = 1 TO n%
        FOR k% = 1 TO n% \ j%
            u& = d&(3 - c%, j% * k%)
            u& = (u& + d&(c%, j%)) MOD m&
            d&(3 - c%, j% * k%) = u&
        NEXT
    NEXT
    c% = 3 - c%
NEXT
s& = 0
FOR i% = 1 TO n%
    s& = (s& + d&(3 - c%, i%)) MOD m&
NEXT
PRINT s&
PLAY "cccedddfeeddc"
