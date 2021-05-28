# Dependencies

Question: When we want to share code, where are things stored?

Each distribution handles dependency management a little bit differently.
More often than not headers are thrown into a common location such as
`/usr/local/include` and `/usr/include`. Similarly, dynamically linked-libararies
can be found in `/usr/lib/`, `/usr/local/lib`. Depending on your language, compiler,
package manager, etc there are different environment variables that need to be set.
Most common in C/C++land are the `LD_INCLUDE_PATH` and `LD_LIBRARY_PATH`.

Example:

```bash
nix-shell -p tree --run "tree -L 1 /usr/include/"
```

Questions:

What could go wrong? What are the limitations of this?
How can we do better? Does the compiler help us out at all?

```bash
$ nix-shell -p clang -p less --run "clang++ --help | less"
```
- Show example

What about link time?
```bash
$ nix-shell -p ld -p less --run "ld --help | less"
```


