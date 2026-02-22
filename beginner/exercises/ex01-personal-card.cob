      * - Asks for first name
      * - Asks for age
      * - Displays: `Name: <name> | Age: <age>`
       IDENTIFICATION DIVISION. 
       PROGRAM-ID. PERSONAL-CARD.

       DATA DIVISION. 
       WORKING-STORAGE SECTION.
       01 FIRST-NAME PIC X(20).
       01 AGE PIC 99.

       PROCEDURE DIVISION.
       MAIN SECTION.
           DISPLAY "Enter your first name: ".
           ACCEPT FIRST-NAME.
           DISPLAY "Enter your age: ".
           ACCEPT AGE.
           DISPLAY "Name: " FIRST-NAME " | Age: " AGE.
           STOP RUN.
