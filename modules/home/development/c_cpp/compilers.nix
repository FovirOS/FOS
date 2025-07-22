{pkgs, ...}: {
  home.packages = with pkgs; [
    llvmPackages_19.clang-tools # For LSP.
    gcc # Global compiler.
  ];

  home.file.".clang-tidy".text = ''
    Checks:
      - '*'
      - -llvm*
      - -altera*
      - -google*
      - -fuchsia*
      - -boost*
      - -cppcoreguidelines*

      - -modernize-use-trailing-return-type
      - -modernize-use-nodiscard

      - -hicpp-special-member-functions
      - -hicpp-explicit-conversions

      - -readability-identifier-length
      - -readability-isolate-declaration
      - -readability-static-definition-in-anonymous-namespace

      - -misc-non-private-member-variables-in-classes
      - -misc-no-recursion
      - -misc-use-anonymous-namespace
      - -misc-use-internal-linkage

      - -readability-implicit-bool-conversion
      - -readability-convert-member-functions-to-static

      - -bugprone-easily-swappable-parameters
  '';

  home.file.".clang-format".text = ''
    BasedOnStyle: LLVM
    AccessModifierOffset: -4
    IndentWidth: 4
    PointerAlignment: Middle
    IndentCaseLabels: true
  '';
}
