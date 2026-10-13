bootstrap:
  rm -rf ./npins

  nix-shell 'https://github.com/denful/flake-file/archive/refs/heads/main.zip' \
    -I nixpkgs=https://github.com/nixos/nixpkgs/archive/nixos-unstable.tar.gz \
    -A write-npins \
    --run write-npins \
    --arg modules ./modules/inputs.nix \
    --arg bootstrap true

  git add -N ./npins

  nix run .#write-npins
