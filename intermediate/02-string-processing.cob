       IDENTIFICATION DIVISION.
       PROGRAM-ID. STRING-PROCESSING.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 RAW-LINE           PIC X(40) VALUE "ALICE|31|PARIS".
       01 NAME-FIELD         PIC X(15).
       01 AGE-FIELD          PIC X(3).
       01 CITY-FIELD         PIC X(15).

       PROCEDURE DIVISION.
           UNSTRING RAW-LINE
               DELIMITED BY "|"
               INTO NAME-FIELD AGE-FIELD CITY-FIELD
           END-UNSTRING

           DISPLAY "Name: " NAME-FIELD
           DISPLAY "Age:  " AGE-FIELD
           DISPLAY "City: " CITY-FIELD

           STOP RUN.
