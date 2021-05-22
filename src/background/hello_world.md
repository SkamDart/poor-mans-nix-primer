# Hello World

We've all seen this before

```cpp
// examples/hello-world/hello_world.cc
// clang++ main.cc -o hello-world

#include <iostream>

int main()
{
	std::cout << "Hello World!" << std::endl;
	return 0;
}
```

Simple enough... How do we run this?

```
[nix-shell:building-for-fun-and-profit/examples/hello-world]$ g++ main.cc 

[nix-shell:building-for-fun-and-profit/examples/hello-world]$ ./a.out 

[nix-shell:building-for-fun-and-profit/examples/hello-world]$ echo $?
Hello World!
```

Sure this is nice and dandy but let's do something a _little_ more exciting.

