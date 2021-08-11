
# CE101

Fundamentals of programming course resources in AUT CE.

## How To Use

The [bank](./bank) folder contains problems categorized by topic. you can find a problem from the bank, then copy the content of `***.md` file into Quera.
If there is a `tc` directory, you can use the `generator.sh` script in `scripts/generator.sh` to create a ready-to-import zip file.

as an example:
```shell
./scripts/generator.sh functions capitallize_strings
```
**Note**: It's better to manually check the test case's zip file with inputs from `{problem}/tc/in` and samples in the probelm description before uploading them.


## How to Add Problems

There are five types of questions in the bank.

 1. Non-code
 2. Manual Input & Output
 4. Manual Input + Generated Output
 5.  Generated Input + Generated Output
 6. Generated Input + `tester.cpp`



 - All types of questions **must** contain a **Markdown file** with problem description.
 - All Coding problems **must contain** `tc/in` and `tc/out` folders.
 - **avoid using `-` or `()` in problem names as it BREAKS the `generator.sh` script**.
 - For automatic output generation, you must write a solution in either **python/go** and save them in the problem's root directory.
	 - Solutions must read input from `stdin` and print output directly to `stdout`.
	 - Example solution in [Go](./bank/decision/check_if_input_is_leapyear/p5.go.backup) and [Python](./bank/decision/check_if_input_is_leapyear/p5.py)
 - For automatic Input generation. You must create a `generator.go` file in `{problem}/tc/generator.go`. Each test case is divided by `;` character. 
	 - [Example generator](./bank/function/progress_stairs/tc/generator.go)
 - For `tester.cpp` documentation refer to Quera.

A sample problem in the pointer category might look like this:
```
pointer\
    |
    |- new_question\
    |    |
    |    |- new_question.md
    |    |- new_question.go
    |    |- tc\
    |	 |     |- generator.go
    |    |     |- in
    |    |     |- out
    |
    |- other_questions\

```


## [Contributors](./Contributors.md)
Many thanks to those who helped us get here :)
