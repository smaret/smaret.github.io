with import <nixpkgs> {};
  let jekyll = pkgs.jekyll.override { withOptionalDependencies = true; }; in
  pkgs.mkShell rec {
    buildInputs = [ jekyll ];
  }
