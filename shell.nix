{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/4f91766e8c58501176aa67e34a460e588f9a56fb.tar.gz") {} }:

pkgs.mkShell {
  packages = with pkgs; [
    git
    git-crypt
    kubectl
    pre-commit
    azure-cli
    kubeseal
  ];
}
