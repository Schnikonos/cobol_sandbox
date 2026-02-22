       IDENTIFICATION DIVISION.
       PROGRAM-ID. REPORT-FORMATTING.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 ITEM-NAME          PIC X(12) VALUE "NOTEBOOK".
       01 ITEM-QTY           PIC 9(3) VALUE 3.
       01 ITEM-PRICE         PIC 9(3)V99 VALUE 12.50.
       01 ITEM-TOTAL         PIC 9(5)V99 VALUE 0.

       PROCEDURE DIVISION.
           COMPUTE ITEM-TOTAL = ITEM-QTY * ITEM-PRICE

           DISPLAY "ITEM         QTY  PRICE   TOTAL"
           DISPLAY "------------ ---- ------- -------"
           DISPLAY ITEM-NAME " " ITEM-QTY " " ITEM-PRICE " " ITEM-TOTAL

           STOP RUN.
