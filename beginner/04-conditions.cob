       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONDITIONS-DEMO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 SCORE              PIC 9(3) VALUE 78.
       01 GRADE              PIC X.

       PROCEDURE DIVISION.
           IF SCORE >= 50
               DISPLAY "PASS"
           ELSE
               DISPLAY "FAIL"
           END-IF

           EVALUATE TRUE
               WHEN SCORE >= 90
                   MOVE "A" TO GRADE
               WHEN SCORE >= 80
                   MOVE "B" TO GRADE
               WHEN SCORE >= 70
                   MOVE "C" TO GRADE
               WHEN SCORE >= 60
                   MOVE "D" TO GRADE
               WHEN OTHER
                   MOVE "F" TO GRADE
           END-EVALUATE

           DISPLAY "Grade: " GRADE
           STOP RUN.
