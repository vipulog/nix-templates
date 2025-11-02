{inputs, ...}: {
  imports = [inputs.git-hooks-nix.flakeModule];

  perSystem = {
    pre-commit.settings = {
      default_stages = ["pre-commit"];

      hooks = {
        check-added-large-files.enable = true;
        check-case-conflicts.enable = true;
        check-merge-conflicts.enable = true;
        fix-byte-order-marker.enable = true;
        mixed-line-endings.enable = true;
        trim-trailing-whitespace.enable = true;
        end-of-file-fixer.enable = true;
        check-symlinks.enable = true;
        treefmt.enable = true;
      };
    };
  };
}
