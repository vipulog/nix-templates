{
  description = "My Nix flake templates.";

  outputs = _: {
    templates = {
      simple = {
        path = ./simple;
        description = ''
          A minimal flake-parts based Nix template, pre-configured with direnv,
          pre-commit hooks, and treefmt.
        '';
      };
    };
  };
}
