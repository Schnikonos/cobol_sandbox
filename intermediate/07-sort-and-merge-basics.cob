       IDENTIFICATION DIVISION.
       PROGRAM-ID. SORT-BASICS.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT UNSORTED-FILE ASSIGN TO "intermediate/unsorted.txt"
               ORGANIZATION IS LINE SEQUENTIAL.
           SELECT SORTED-FILE ASSIGN TO "intermediate/sorted.txt"
               ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD UNSORTED-FILE.
       01 UNSORTED-REC       PIC X(20).

       FD SORTED-FILE.
       01 SORTED-REC         PIC X(20).

       SD SORT-WORK.
       01 SORT-REC.
          05 SORT-KEY        PIC X(5).
          05 SORT-DATA       PIC X(15).

       PROCEDURE DIVISION.
           SORT SORT-WORK
               ON ASCENDING KEY SORT-KEY
               USING UNSORTED-FILE
               GIVING SORTED-FILE

           DISPLAY "Sort completed"
           STOP RUN.
