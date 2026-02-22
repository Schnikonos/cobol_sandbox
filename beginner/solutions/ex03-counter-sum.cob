       IDENTIFICATION DIVISION.
       PROGRAM-ID. EX03-COUNTER-SUM.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 COUNTER            PIC 9(2) VALUE 1.
       01 TOTAL              PIC 9(3) VALUE 0.

       PROCEDURE DIVISION.
           PERFORM UNTIL COUNTER > 5
               DISPLAY "Number: " COUNTER
               ADD COUNTER TO TOTAL
               ADD 1 TO COUNTER
           END-PERFORM

           DISPLAY "Total: " TOTAL
           STOP RUN.
