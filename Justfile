working-bootstrap:
  rm -rf ./npins

  nix-shell 'https://github.com/kalyanoliveira/flake-file/archive/refs/heads/chore%2Fintegration-verify-bootstrap-fixes.zip' \
    -I nixpkgs=https://github.com/nixos/nixpkgs/archive/nixos-unstable.tar.gz \
    -A write-npins \
    --run write-npins \
    --arg modules ./modules/inputs.nix \
    --arg bootstrap true

  nix run .#write-npins

broken-bootstrap:
  rm -rf ./npins

  nix-shell 'https://github.com/denful/flake-file/archive/refs/heads/main.zip' \
    -I nixpkgs=https://github.com/nixos/nixpkgs/archive/nixos-unstable.tar.gz \
    -A write-npins \
    --run write-npins \
    --arg modules ./modules/inputs.nix \
    --arg bootstrap true

  nix run .#write-npins
