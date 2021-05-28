# C++

A simple derivation for [matplotplusplus](https://github.com/alandefreitas/matplotplusplus)

```nix
{ stdenv
, cmake
}:

let
  name = "matlabplusplus";
  src = builtins.fetchGit ({
    url = "https://github.com/alandefreitas/matplotplusplus";
    rev = "5c9fa683672c8e555356374a80efb16e000c8459";
    ref = "master";
  });
  version = "1.0.0.0";
in stdenv.mkDerivation rec {
  inherit name;
  inherit src;
  inherit version;

  buildInputs = [
    cmake
  ];

  cmakeFlags = [
    "-DBUILD_SHARED_LIBS=ON"
    "-DBUILD_EXAMPLES=OFF"
    "-DBUILD_TESTS=OFF"
  ];
}
```

References
- [derivation docs](https://nixos.org/manual/nix/stable/#ssec-derivation)
- [nixpkgs](https://nixos.org/manual/nixpkgs/stable/#chap-stdenv)
