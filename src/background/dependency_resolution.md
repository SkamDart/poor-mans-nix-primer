# Dependency Resolution

How do I figure out which dependencies an executable is using?

- Compiler invocations
- Build system dependent files such as `compile_commands.json`
- Include Paths: These two commands
```bash
$ g++ -E -x c++ - -v < /dev/null 
$ clang++ -E -x c++ - -v < /dev/null
```
- ld (show example)
- LD_INCLUDE_PATH, LD_LIBRARY_PATH, LD_DEBUG?
- Manually inspect source if using [dlopen](https://man7.org/linux/man-pages/man3/dlopen.3.html)


![alt](https://i.kym-cdn.com/entries/icons/original/000/018/489/nick-young-confused-face-300x256-nqlyaa.jpg)
