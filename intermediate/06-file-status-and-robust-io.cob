       IDENTIFICATION DIVISION.
       PROGRAM-ID. FILE-STATUS-DEMO.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT IN-FILE ASSIGN TO "intermediate/sample.txt"
               ORGANIZATION IS LINE SEQUENTIAL
               FILE STATUS IS FS.

       DATA DIVISION.
       FILE SECTION.
       FD IN-FILE.
       01 IN-REC             PIC X(80).

       WORKING-STORAGE SECTION.
       01 FS                 PIC XX.
       01 END-FLAG           PIC X VALUE "N".
       01 REC-COUNT          PIC 9(4) VALUE 0.

       PROCEDURE DIVISION.
           OPEN INPUT IN-FILE
           IF FS NOT = "00"
               DISPLAY "Open failed, FS=" FS
               STOP RUN
           END-IF

           PERFORM UNTIL END-FLAG = "Y"
               READ IN-FILE
                   AT END
                       MOVE "Y" TO END-FLAG
                   NOT AT END
                       ADD 1 TO REC-COUNT
                       DISPLAY "Line: " IN-REC
               END-READ
           END-PERFORM

           CLOSE IN-FILE
           DISPLAY "Records read: " REC-COUNT
           STOP RUN.
