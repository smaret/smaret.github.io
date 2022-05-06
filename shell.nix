with import
  (fetchTarball {
    # Get the revision by choosing a version from https://github.com/nixos/nixpkgs/commits/master
    url = "https://github.com/nixos/nixpkgs/archive/21.11.tar.gz";
    # Get the hash by running `nix-prefetch-url --unpack <url>` on the above url
    sha256 = "162dywda2dvfj1248afxc45kcrg83appjd0nmdb541hl7rnncf02";
  })
{ };
  let jekyll = pkgs.jekyll.override { withOptionalDependencies = true; }; in
  pkgs.mkShell rec {
    buildInputs = [ jekyll ];
  }
