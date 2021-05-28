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
[nix-shell]$ clang++ main.cc -o hello-world
[nix-shell]$ ./hello-world
Hello World!
```

Sure this is nice and dandy but let's do something a _little_ more exciting.

