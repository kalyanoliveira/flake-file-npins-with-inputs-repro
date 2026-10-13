let
  with-inputs-fn = import sources.with-inputs;
  sources = import ./npins;
  runtime-overrides-fn = inputs: { };
  outputs-fn =
    inputs: inputs.flake-parts.lib.mkFlake { inherit inputs; } (inputs.import-tree ./modules);
in
with-inputs-fn sources runtime-overrides-fn outputs-fn
