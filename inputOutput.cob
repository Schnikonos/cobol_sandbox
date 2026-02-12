       IDENTIFICATION DIVISION.
       PROGRAM-ID. INPUT-OUTPUT-TEST.

      *-------------------
       ENVIRONMENT DIVISION.
      *-------------------
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT PRINT-LINE ASSIGN TO "aaaaa.txt".
           SELECT ACCT-REC ASSIGN TO "bbbbbb.txt".

      *-------------------
       DATA DIVISION.
      *-------------------
       FILE SECTION.
           
       FD PRINT-LINE.
       01 PRINT-REC PIC X(7).

       FD ACCT-REC.
       01 ACCT-RECORD.
          05 ACCT-NUMBER PIC 9(3).
          05 ACCT-NAME PIC X(4).

      *-------------------
       PROCEDURE DIVISION.
      *-------------------
           OPEN OUTPUT PRINT-LINE
              INPUT ACCT-REC
           
           READ ACCT-REC
              AT END 
                 MOVE "NO MORE RECORDS" TO PRINT-REC
                 WRITE PRINT-REC
           END-READ

           MOVE SPACES TO PRINT-REC
           MOVE ACCT-RECORD TO PRINT-REC
           WRITE PRINT-REC

           CLOSE PRINT-LINE ACCT-REC
           STOP RUN.
