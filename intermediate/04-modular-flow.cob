       IDENTIFICATION DIVISION.
       PROGRAM-ID. MODULAR-FLOW.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 USER-NAME          PIC X(20).
       01 USER-SCORE         PIC 9(3).

       PROCEDURE DIVISION.
           PERFORM INIT-PROGRAM
           PERFORM READ-INPUT
           PERFORM SHOW-RESULT
           STOP RUN.

       INIT-PROGRAM.
           MOVE SPACES TO USER-NAME
           MOVE 0 TO USER-SCORE.

       READ-INPUT.
           DISPLAY "Enter name: "
           ACCEPT USER-NAME
           DISPLAY "Enter score: "
           ACCEPT USER-SCORE.

       SHOW-RESULT.
           DISPLAY "User:  " USER-NAME
           DISPLAY "Score: " USER-SCORE.
