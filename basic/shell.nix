{nixpkgs ? <nixpkgs>}: let
  pkgs = import nixpkgs {};
in
  pkgs.mkShell {
    name = "dfs-aip";
    packages = [
      (pkgs.python3.withPackages (ps: with ps; [beautifulsoup4 pillow pikepdf requests pyxdg]))
    ];
  }
