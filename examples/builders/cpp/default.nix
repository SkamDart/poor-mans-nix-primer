{}:

let
  pkgs = import <nixpkgs> {};
  name = "matlabplusplus";
  src = builtins.fetchGit ({
    url = "https://github.com/alandefreitas/matplotplusplus";
    rev = "92679850bccf4a8df0b45c99110a6309ea3e8816";
    ref = "master";
  });
  version = "1.0.0.0";

in with pkgs;
stdenv.mkDerivation rec {
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
