       IDENTIFICATION DIVISION.
       PROGRAM-ID. LOOPS-DEMO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 COUNTER            PIC 9(2) VALUE 1.
       01 SUM-TOTAL            PIC 9(2) VALUE 0.

       PROCEDURE DIVISION.
           PERFORM UNTIL COUNTER > 5
               DISPLAY "Counter: " COUNTER
               ADD 1 TO COUNTER
           END-PERFORM

           MOVE 0 TO COUNTER.
           PERFORM UNTIL COUNTER > 10
               DISPLAY "Counter 10: " COUNTER
               ADD 1 TO COUNTER
           END-PERFORM

           MOVE 0 TO COUNTER.
           PERFORM UNTIL COUNTER > 10
               IF FUNCTION MOD(COUNTER, 2) = 0
                     DISPLAY "Counter Pair: " COUNTER
               END-IF
               ADD 1 TO COUNTER
           END-PERFORM

           MOVE 0 TO COUNTER.
           PERFORM UNTIL COUNTER > 5
               ADD COUNTER TO SUM-TOTAL
               ADD 1 TO COUNTER
           END-PERFORM
           DISPLAY "Sum Total: " SUM-TOTAL.

           STOP RUN.
