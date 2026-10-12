{self, ...}: {
  flake.templates = {
    simple = {
      path = "${self}/templates/simple";

      description = ''
        A minimal flake-parts based Nix template, pre-configured with direnv,
        pre-commit hooks, and treefmt.
      '';
    };
  };
}
