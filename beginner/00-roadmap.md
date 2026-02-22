# COBOL Beginner Roadmap

This folder contains a practical mini-course.

## Study order

1. `01-hello-world.md` + `01-hello-world.cob`
2. `02-variables-and-move.md` + `02-variables-and-move.cob`
3. `03-input-and-output.md` + `03-input-and-output.cob`
4. `04-conditions.md` + `04-conditions.cob`
5. `05-loops-and-perform.md` + `05-loops-and-perform.cob`
6. `06-working-with-files.md` + `06-working-with-files.cob`
7. `exercises.md`

## How to compile and run (GnuCOBOL)

From the project root:

```bash
cobc -x beginner/01-hello-world.cob -o beginner/bin/hello
./beginner/bin/hello
```

On Windows PowerShell with WSL paths, run these commands inside WSL, or adapt output paths.

## Learning tips

- Read one lesson file (`.md`).
- Run the matching `.cob` program.
- Change values and run again.
- Do one exercise before moving on.
