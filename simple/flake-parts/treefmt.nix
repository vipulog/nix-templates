{inputs, ...}: {
  imports = [inputs.treefmt-nix.flakeModule];

  perSystem = {
    treefmt = {
      programs = {
        alejandra.enable = true;
        deadnix.enable = true;
      };

      settings.formatter = {
        deadnix.no_lambda_arg = true;
      };
    };
  };
}
