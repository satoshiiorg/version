# version
Show version of any command.

Usage:
```
$ version <command>
```

E.g. `$ version node` is the same as `$ node --version` and `$ version java` is the same as `$ java -version`.

The current implementation executes `<command>` with options `--version`, `-version`, `-v` or `-V`
while the exit status is not `0`.

