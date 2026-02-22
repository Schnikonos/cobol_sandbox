       IDENTIFICATION DIVISION.
       PROGRAM-ID. INPUT-OUTPUT-DEMO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 USER-NAME          PIC X(30).
       01 USER-SURNAME       PIC X(30).
       01 USER-AGE           PIC 9(3).

       PROCEDURE DIVISION.
           DISPLAY "Enter your name: "
           ACCEPT USER-NAME

           DISPLAY "Enter your surname: "
           ACCEPT USER-SURNAME

           DISPLAY "Enter your age: "
           ACCEPT USER-AGE

           DISPLAY "Hello " USER-NAME " " USER-SURNAME " - Age: " 
                USER-AGE
           STOP RUN.
