# Lesson 2: Variables, PIC, and MOVE

COBOL variables are declared in `WORKING-STORAGE SECTION`.

## Important ideas

- `PIC` defines variable format.
- `X` means alphanumeric character positions.
- `9` means numeric digits.
- `VALUE` gives an initial value.
- `MOVE` copies values between variables.

Examples:

- `PIC X(20)` -> text up to 20 chars
- `PIC 9(3)` -> number from 000 to 999

## Try this

- Increase age by changing the initial value.
- Add a `CITY` variable and display it.
- Move `USER-NAME` into another variable and display both.
