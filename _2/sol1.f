      PROGRAM SOLVE
      INTEGER IANS
      CHARACTER C1, C2
      IANS=0

      OPEN(1, FILE='input.txt', STATUS='old')
      DO I=1,2500
      READ(1,*)  C1, C2

      IF(C1.EQ.'A')THEN
      IF(C2.EQ.'X')THEN
      IANS=IANS+3+1
      ELSE IF(C2.EQ.'Y')THEN
      IANS=IANS+6+2
      ELSE IF(C2.EQ.'Z')THEN
      IANS=IANS+0+3
      END IF

      ELSE IF(C1.EQ.'B')THEN
      IF(C2.EQ.'X')THEN
      IANS=IANS+0+1
      ELSE IF(C2.EQ.'Y')THEN
      IANS=IANS+3+2
      ELSE IF(C2.EQ.'Z')THEN
      IANS=IANS+6+3
      END IF

      ELSE IF(C1.EQ.'C')THEN
      IF(C2.EQ.'X')THEN
      IANS=IANS+6+1
      ELSE IF(C2.EQ.'Y')THEN
      IANS=IANS+0+2
      ELSE IF(C2.EQ.'Z')THEN
      IANS=IANS+3+3
      END IF
      END IF

      END DO

      
      PRINT*,"ANSWER IS: ", IANS
      END PROGRAM

