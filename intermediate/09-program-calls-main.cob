       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALLS-MAIN.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-AMOUNT          PIC 9(5)V99 VALUE 250.00.
       01 WS-TAX-RATE        PIC 9V99 VALUE 0.07.
       01 WS-TAX-OUT         PIC 9(5)V99 VALUE 0.

       PROCEDURE DIVISION.
           DISPLAY "Amount:   " WS-AMOUNT
           DISPLAY "Tax rate: " WS-TAX-RATE

           CALL "CALLS-SUB"
               USING WS-AMOUNT WS-TAX-RATE WS-TAX-OUT
           END-CALL

           DISPLAY "Tax out:  " WS-TAX-OUT
           STOP RUN.
