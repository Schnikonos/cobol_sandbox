# 09 - Program Calls (Subprograms)

Learn how one COBOL program can reuse another using `CALL`.

## Concepts
- Caller program vs subprogram
- `CALL "program-name" USING ...`
- `LINKAGE SECTION` in the subprogram
- `PROCEDURE DIVISION USING ...`
- Returning control with `GOBACK`

## Files in this lesson
- `09-program-calls-main.cob` (caller)
- `09-program-calls-sub.cob` (subprogram)

## Build (GnuCOBOL)

Compile both together from project root:

```bash
cobc -x intermediate/09-program-calls-main.cob intermediate/09-program-calls-sub.cob -o intermediate/bin/program-calls
```

Run:

```bash
./intermediate/bin/program-calls
```

## Try
- Change amount and tax rate in the caller
- Add a second call with different values
- Change one parameter to `BY CONTENT` and compare behavior
