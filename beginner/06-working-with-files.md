# Lesson 6: Simple file I/O

COBOL is famous for business data processing, so file handling is essential.

## Main steps

1. Declare file in `FILE-CONTROL`.
2. Describe record in `FILE SECTION`.
3. `OPEN` file (INPUT/OUTPUT/I-O).
4. `READ` or `WRITE` records.
5. `CLOSE` file.

## Important status flag

Use a `PIC XX` status field in `FILE STATUS` to detect end-of-file and errors.

## Try this

- Add another `WRITE` record.
- Read and display every line in a loop.
- Print total record count.
