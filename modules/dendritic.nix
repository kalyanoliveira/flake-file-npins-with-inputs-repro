{ inputs, ... }:
{
  imports = [
    inputs.flake-file.flakeModules.dendritic
    inputs.den.flakeModule
    inputs.flake-file.flakeModules.npins
  ];
}
