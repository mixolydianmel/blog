{
  pkgs ? import <nixpkgs> { },
}:
pkgs.mkShell {
  name = "hugo-devshell";
  nativeBuildInputs = with pkgs; [ hugo ];
}
