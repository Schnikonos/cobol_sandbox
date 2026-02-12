       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO.

      *-------------------
       ENVIRONMENT DIVISION.
      *-------------------

      *-------------------
       DATA DIVISION.
      *-------------------
       FILE SECTION.
      *FD PRINT-LINE RECORDING MODE F.


       WORKING-STORAGE SECTION.
       01 PRINT-REC.
           05 ACCT-NO-O   PIC X(8).
           05 ACCT-BALANCE-O PIC $$,$$$,$$9.99.
           05 ACCT-BALANCE PIC S9(7)V99 COMP-3.
           05 AAA.
              10 BBB PIC X(10).
              10 CCC PIC 9(10).
              10 DDD PIC 9(10).
              10 EEE PIC 9(10).

       01 TABLE-NAME.
           05 SUBORDINATE-NAME OCCURS 10 TIMES.
              10 ELEMENT1 PIC X(2).
              10 ELEMENT2 PIC 9(2).
           05 TABLE-ELEMENT OCCURS 3 TIMES  PIC X(3) VALUE "ABC".
           05 TABLE-ELEMENT2 OCCURS 3 TIMES INDEXED BY INX-A  PIC X(3).
           05 TAB-3 OCCURS 5 TIMES.
              10 NUMBER1 PIC 9(2) VALUE 10.
              10 TEXT1 PIC X(2) VALUE "AA".
       
       77 PEOPLE-SEARCH-DATA PIC X(20).
       01 PEOPLE-SERIAL.
          05 PEOPLE-NAME OCCURS 50 TIMES
              INDEXED BY PL-IDX  PIC X(20).

       01 NUMBER-VALUES.
           05 FILLER PIC X(05) VALUE "One  ".
           05 FILLER PIC X(05) VALUE "Two  ".
           05 FILLER PIC X(05) VALUE "Three".
           05 FILLER PIC X(05) VALUE "Four ".
           05 FILLER PIC X(05) VALUE "Five ".
       01 NUMBER-TABLE REDEFINES NUMBER-VALUES.
           05 WS-NUMBER PIC X(05) OCCURS 5 TIMES.

       01 MAIN-AREA.
          03 REC-1.
             05 FIELD-1 PIC 9.
             05 FIELD-3 PIC 9.
             05 FIELD-2 OCCURS 1 TO 5 TIMES
                DEPENDING ON FIELD-1 PIC 9(02) VALUE 55.

      *-------------------
       PROCEDURE DIVISION.
      *------------------- Page 49
       DATA-INIT.
           MOVE "Test" TO ACCT-NO-O.
           MOVE 123 TO CCC.
           MOVE 456 TO DDD.
           COMPUTE EEE = CCC + DDD.

           MOVE "Def" TO TABLE-ELEMENT (2).
           MOVE "Ghj" TO TABLE-ELEMENT2 (1).
           MOVE "Def" TO TABLE-ELEMENT2 (2).
           MOVE "Abc" TO TABLE-ELEMENT2 (3).

           MOVE 6 TO FIELD-1.

           INITIALIZE TABLE-NAME REPLACING NUMERIC DATA BY 99.

           MOVE "AAA" TO PEOPLE-NAME (1).
           MOVE "BBB" TO PEOPLE-NAME (2).
           MOVE "CCC" TO PEOPLE-NAME (3).
           MOVE "DDD" TO PEOPLE-NAME (4).

           MOVE "CCC" TO PEOPLE-SEARCH-DATA.

       DISPLAY-MESSAGE.
           DISPLAY "Hello COBOL!".
       DISPLAY-MESSAGE-2.
           DISPLAY "ACCT-NO-O " ACCT-NO-O.
           DISPLAY "CCC " CCC.
           DISPLAY "DDD " DDD.
           DISPLAY "EEE " EEE.
           DISPLAY "AAA " TABLE-NAME.
           DISPLAY "BBB " NUMBER-TABLE.
           DISPLAY "REC-1   " REC-1.
       EXAMPLE-SEARCH.
           SET PL-IDX TO 1.
           SEARCH PEOPLE-NAME VARYING PL-IDX
              AT END DISPLAY "Not found"
              WHEN PEOPLE-SEARCH-DATA = PEOPLE-NAME(PL-IDX)
                 DISPLAY "Found at position " PL-IDX.
           STOP RUN.
