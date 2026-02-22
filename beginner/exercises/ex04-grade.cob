      * maps score to grade:
      * - A: 90+
      * - B: 80-89
      * - C: 70-79
      * - D: 60-69
      * - F: below 60

       IDENTIFICATION DIVISION. 
       PROGRAM-iD. GRADE.

       DATA DIVISION. 
       WORKING-STORAGE SECTION.
       01 GRADE PIC 9(3).

       PROCEDURE DIVISION.
       MAIN SECTION.

           DISPLAY "Enter your grade:".
           ACCEPT GRADE.

           EVALUATE TRUE
              WHEN GRADE >= 99
                 DISPLAY "A"
              WHEN GRADE >= 80
                 DISPLAY "B"
              WHEN GRADE >= 70
                 DISPLAY "C"
              WHEN GRADE >= 60
                 DISPLAY "D"
              WHEN OTHER
                 DISPLAY "F"
           END-EVALUATE.

           EXIT PROGRAM.