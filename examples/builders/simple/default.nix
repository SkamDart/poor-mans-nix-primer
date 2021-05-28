{ local ? true
}:
let
	bootpkgs = import <nixpkgs> {};
	pkgs = if local
	       then bootpkgs
		   else import (builtins.fetchTarball {
				url    = "https://github.com/NixOS/nixpkgs/archive/3389f23412877913b9d22a58dfb241684653d7e9.tar.gz";
				sha256 = "0wgm7sk9fca38a50hrsqwz6q79z35gqgb9nw80xz7pfdr4jy9pf8";
			}) {};
in with pkgs;
writeScriptBin "hello" ''
  #!${stdenv.shell}
  echo Is it me you\'re looking for?
''
