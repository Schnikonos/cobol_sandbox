       IDENTIFICATION DIVISION.
       PROGRAM-ID. VARIABLES-DEMO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 USER-NAME          PIC X(20) VALUE "Nico".
       01 USER-AGE           PIC 9(3)  VALUE 2225.
       01 COPY-OF-NAME       PIC X(20).
       01 CITY               PIC X(20) VALUE "New York".

       PROCEDURE DIVISION.
           MOVE USER-NAME TO COPY-OF-NAME

           DISPLAY "Name: " USER-NAME
           DISPLAY "Age : " USER-AGE
           DISPLAY "Copy: " COPY-OF-NAME
           DISPLAY "City: " CITY

           STOP RUN.
