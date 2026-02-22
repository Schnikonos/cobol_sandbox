       IDENTIFICATION DIVISION.
       PROGRAM-ID. FILE-WRITE-READ-DEMO.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT STUDENT-FILE ASSIGN TO "beginner/students.txt"
               ORGANIZATION IS LINE SEQUENTIAL
               FILE STATUS IS FILE-STATUS.

       DATA DIVISION.
       FILE SECTION.
       FD STUDENT-FILE.
       01 STUDENT-RECORD      PIC X(50).

       WORKING-STORAGE SECTION.
       01 FILE-STATUS         PIC XX.
       01 END-FLAG            PIC X VALUE "N".

       PROCEDURE DIVISION.
           OPEN OUTPUT STUDENT-FILE
           MOVE "ALICE,21" TO STUDENT-RECORD
           WRITE STUDENT-RECORD
           MOVE "BOB,19" TO STUDENT-RECORD
           WRITE STUDENT-RECORD
           CLOSE STUDENT-FILE

           OPEN INPUT STUDENT-FILE
           PERFORM UNTIL END-FLAG = "Y"
               READ STUDENT-FILE
                   AT END
                       MOVE "Y" TO END-FLAG
                   NOT AT END
                       DISPLAY "Record: " STUDENT-RECORD
               END-READ
           END-PERFORM
           CLOSE STUDENT-FILE

           STOP RUN.
