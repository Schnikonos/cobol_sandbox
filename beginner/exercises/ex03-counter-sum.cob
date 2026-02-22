      * Prints numbers 1 to 5
      * Calculates and displays total sum

       IDENTIFICATION DIVISION.
       PROGRAM-ID. COUNTER-SUM.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 COUNTER PIC 9.
       01 TOTAL PIC 99.

       PROCEDURE DIVISION.
       MAIN SECTION.
       
           MOVE 0 TO COUNTER.
           PERFORM UNTIL COUNTER > 5
              DISPLAY "Counter=" COUNTER
              ADD COUNTER TO TOTAL
              ADD 1 TO COUNTER
           END-PERFORM.

           DISPLAY "Total=" TOTAL.

           EXIT PROGRAM.
