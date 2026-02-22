      * Reads a score (0-100)
      * Displays `PASS` if score >= 50 else `FAIL`
       IDENTIFICATION DIVISION. 
       PROGRAM-ID. PASS-FAIL.

       DATA DIVISION. 
       WORKING-STORAGE SECTION.
       01 SCORE PIC 9(3) VALUE 0.
       
       PROCEDURE DIVISION.
       MAIN SECTION.
           DISPLAY "Enter the score (0-100): ".
           ACCEPT SCORE.
           IF SCORE >= 50
              DISPLAY "PASS"
           ELSE
              DISPLAY "FAIL"
           END-IF

           EVALUATE TRUE
               WHEN SCORE >= 50
                  DISPLAY "PASS2"
               WHEN OTHER
                  DISPLAY "FAIL2"
           END-EVALUATE


           STOP RUN.