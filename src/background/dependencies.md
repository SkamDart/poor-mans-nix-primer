# Dependencies

Question: When we want to share code, where are things stored?

Each distribution handles dependency management a little bit differently.
More often than not headers are thrown into a common location such as
`/usr/local/include` and `/usr/include`. Similarly, dynamically linked-libararies
can be found in `/usr/lib/`, `/usr/local/lib`.

Example:

`tree -L 1 /usr/include/`

Questions:

What could go wrong/What are the limitations of this?
How can we do better? Does the compiler help us out at all?

```
$ nix-shell -p clang --run "clang++ --help | less"
```

- Show example
