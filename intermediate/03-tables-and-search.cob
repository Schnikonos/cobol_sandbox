       IDENTIFICATION DIVISION.
       PROGRAM-ID. TABLES-SEARCH.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 IDX                PIC 9 VALUE 1.
       01 SEARCH-CODE        PIC X VALUE "C".
       01 FOUND-FLAG         PIC X VALUE "N".

       01 GRADE-TABLE.
          05 GRADE-ENTRY OCCURS 5 TIMES INDEXED BY G-IX.
             10 GRADE-CODE    PIC X.
             10 GRADE-LABEL   PIC X(10).

       PROCEDURE DIVISION.
           MOVE "A" TO GRADE-CODE(1)
           MOVE "EXCELLENT" TO GRADE-LABEL(1)
           MOVE "B" TO GRADE-CODE(2)
           MOVE "GOOD" TO GRADE-LABEL(2)
           MOVE "C" TO GRADE-CODE(3)
           MOVE "FAIR" TO GRADE-LABEL(3)
           MOVE "D" TO GRADE-CODE(4)
           MOVE "LOW" TO GRADE-LABEL(4)
           MOVE "F" TO GRADE-CODE(5)
           MOVE "FAIL" TO GRADE-LABEL(5)

           PERFORM VARYING IDX FROM 1 BY 1 UNTIL IDX > 5 
                 OR FOUND-FLAG = "Y"
               IF GRADE-CODE(IDX) = SEARCH-CODE
                   MOVE "Y" TO FOUND-FLAG
                   DISPLAY "Label: " GRADE-LABEL(IDX)
               END-IF
           END-PERFORM

           IF FOUND-FLAG = "N"
               DISPLAY "Code not found"
           END-IF

           STOP RUN.
