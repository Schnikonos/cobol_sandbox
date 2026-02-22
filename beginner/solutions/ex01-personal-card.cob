       IDENTIFICATION DIVISION.
       PROGRAM-ID. EX01-PERSONAL-CARD.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 FIRST-NAME         PIC X(20).
       01 USER-AGE           PIC 9(3).

       PROCEDURE DIVISION.
           DISPLAY "First name: "
           ACCEPT FIRST-NAME

           DISPLAY "Age: "
           ACCEPT USER-AGE

           DISPLAY "Name: " FIRST-NAME " | Age: " USER-AGE
           STOP RUN.
