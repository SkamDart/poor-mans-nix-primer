# Simple

```nix
# Arguments
{ local ? true
}:
let
	bootpkgs = import <nixpkgs> {};
	# if-else control flow
	pkgs = if local
	       then bootpkgs
		   else import (builtins.fetchTarball {
				url    = "https://github.com/NixOS/nixpkgs/archive/3389f23412877913b9d22a58dfb241684653d7e9.tar.gz";
				sha256 = "0wgm7sk9fca38a50hrsqwz6q79z35gqgb9nw80xz7pfdr4jy9pf8";
			}) {};
# Using
in with pkgs;
writeScriptBin "hello" ''
  #!${stdenv.shell}
  echo Is it me you\'re looking for?
''
```

References:
- [How To fetch Nixpkgs from git](https://nixos.wiki/wiki/How_to_fetch_Nixpkgs_with_an_empty_NIX_PATH)
- [Trivial Builders](https://github.com/NixOS/nixpkgs/blob/master/pkgs/build-support/trivial-builders.nix#L58)
