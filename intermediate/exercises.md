# COBOL Exercises (Intermediate)

## Exercise 1: Price calculator with decimals

Create `ex01-price-calculator.cob` that:
- Reads quantity and unit price
- Computes subtotal, tax, total
- Displays with 2 decimals

## Exercise 2: Pipe-delimited parser

Create `ex02-parse-line.cob` that:
- Reads one line like `name|age|city`
- Uses `UNSTRING`
- Displays parsed fields

## Exercise 3: Table lookup

Create `ex03-grade-lookup.cob` that:
- Stores grade letters and labels in a table (`OCCURS`)
- Searches by letter and displays label

## Exercise 4: Validation loop

Create `ex04-validated-input.cob` that:
- Re-prompts until score is numeric and between 0 and 100
- Displays final accepted value

## Exercise 5: Robust file reader

Create `ex05-safe-reader.cob` that:
- Opens an input file with `FILE STATUS`
- Reads and counts records
- Handles empty file and open/read errors

## Exercise 6: Caller + subprogram

Create `ex06-caller.cob` and `ex06-subprogram.cob` that:
- Calls the subprogram using `CALL ... USING`
- Passes amount and tax rate in, returns computed tax out
- Displays the returned value in the caller
