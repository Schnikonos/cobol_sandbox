      * - Writes 3 product lines to a file
      * - Reads and displays each line

       IDENTIFICATION DIVISION. 
       PROGRAM-ID. READER.

       ENVIRONMENT DIVISION. 
       INPUT-OUTPUT SECTION. 
       FILE-CONTROL.
           SELECT PRODUCT-FILE ASSIGN TO "beginner/exercises/prod.txt"
              ORGANIZATION IS LINE SEQUENTIAL
              FILE STATUS IS FILE-STATUS.



       DATA DIVISION. 
       FILE SECTION.
       FD PRODUCT-FILE.
       01 PRODUCT-RECORD.
          05 PD-NAME PIC X(10).
          05 PD-DESC PIC X(10).

       WORKING-STORAGE SECTION.
       01 FILE-STATUS PIC XX.
       01 FILE-END PIC X VALUE 'N'.

       01 PRODUCT-NAME PIC X(10).
       01 PRODUCT-DESC PIC X(10).

       PROCEDURE DIVISION.
       MAIN SECTION.
           OPEN OUTPUT PRODUCT-FILE.
           MOVE "PR1" TO PRODUCT-NAME.
           MOVE "DESC1" TO PRODUCT-DESC.
           MOVE PRODUCT-NAME TO PD-NAME.
           MOVE PRODUCT-DESC TO PD-DESC.
           WRITE PRODUCT-RECORD.

           MOVE "PR2" TO PRODUCT-NAME.
           MOVE "DESC2" TO PRODUCT-DESC.
           MOVE PRODUCT-NAME TO PD-NAME.
           MOVE PRODUCT-DESC TO PD-DESC.
           WRITE PRODUCT-RECORD.

           CLOSE PRODUCT-FILE.

           OPEN INPUT PRODUCT-FILE.
           PERFORM UNTIL FILE-END = "Y"
              READ PRODUCT-FILE
                 AT END
                    MOVE "Y" TO FILE-END
                 NOT AT END
                    DISPLAY "Content: " PRODUCT-RECORD
              END-READ
           END-PERFORM
           CLOSE PRODUCT-FILE.

           EXIT PROGRAM.
              
           

