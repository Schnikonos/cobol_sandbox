# COBOL Sandbox

## Purpose
A COBOL sandbox application used to familiarize oneself with the concepts of COBOL programming.

## Requirements
- GnuCOBOL compiler

## Build and Run
To build and run the application:

```bash
cobc -x inputOutput.cob -o bin/inputOutput && ./bin/inputOutput
```

This command will:
1. Compile the `inputOutput.cob` source file with the GnuCOBOL compiler
2. Generate an executable in the `bin/` directory
3. Execute the compiled program
