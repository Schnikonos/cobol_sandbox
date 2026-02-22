# Lesson 4: IF / ELSE and EVALUATE

COBOL supports classic branching.

## IF / ELSE

```cobol
IF SCORE >= 50
    DISPLAY "PASS"
ELSE
    DISPLAY "FAIL"
END-IF
```

## EVALUATE (like switch)

Use `EVALUATE` when you have multiple choices.

## Try this

- Change threshold from 50 to 60.
- Add grade bands:
  - A for 90+
  - B for 80-89
  - C for 70-79
  - D for 60-69
  - F below 60
