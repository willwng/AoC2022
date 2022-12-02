      PROGRAM SOLVE
      INTEGER IANS
      CHARACTER C1, C2
      IANS=0

      OPEN(1, FILE='input.txt', STATUS='old')
      DO I=1,2500
      READ(1,*)  C1, C2

      IF(C1.EQ.'A')THEN
      IF(C2.EQ.'X')THEN
      IANS=IANS+3+0
      ELSE IF(C2.EQ.'Y')THEN
      IANS=IANS+1+3
      ELSE IF(C2.EQ.'Z')THEN
      IANS=IANS+2+6
      END IF

      ELSE IF(C1.EQ.'B')THEN
      IF(C2.EQ.'X')THEN
      IANS=IANS+1+0
      ELSE IF(C2.EQ.'Y')THEN
      IANS=IANS+2+3
      ELSE IF(C2.EQ.'Z')THEN
      IANS=IANS+3+6
      END IF

      ELSE IF(C1.EQ.'C')THEN
      IF(C2.EQ.'X')THEN
      IANS=IANS+2+0
      ELSE IF(C2.EQ.'Y')THEN
      IANS=IANS+3+3
      ELSE IF(C2.EQ.'Z')THEN
      IANS=IANS+1+6
      END IF
      END IF

      END DO

      
      PRINT*,"ANSWER IS: ", IANS
      END PROGRAM

