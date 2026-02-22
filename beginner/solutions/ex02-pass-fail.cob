       IDENTIFICATION DIVISION.
       PROGRAM-ID. EX02-PASS-FAIL.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 SCORE              PIC 9(3).

       PROCEDURE DIVISION.
           DISPLAY "Score (0-100): "
           ACCEPT SCORE

           IF SCORE >= 50
               DISPLAY "PASS"
           ELSE
               DISPLAY "FAIL"
           END-IF

           STOP RUN.
