       IDENTIFICATION DIVISION.
       PROGRAM-ID. VALIDATION-PATTERNS.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 SCORE-TEXT         PIC X(3).
       01 SCORE-NUM          PIC 9(3) VALUE 0.
       01 VALID-FLAG         PIC X VALUE "N".

       PROCEDURE DIVISION.
           PERFORM UNTIL VALID-FLAG = "Y"
               DISPLAY "Enter score (0-100): "
               ACCEPT SCORE-TEXT

               IF SCORE-TEXT NUMERIC
                   MOVE SCORE-TEXT TO SCORE-NUM
                   IF SCORE-NUM <= 100
                       MOVE "Y" TO VALID-FLAG
                   ELSE
                       DISPLAY "Out of range"
                   END-IF
               ELSE
                   DISPLAY "Not numeric"
               END-IF
           END-PERFORM

           DISPLAY "Accepted score: " SCORE-NUM
           STOP RUN.
