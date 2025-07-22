{pkgs, ...}: {
  home.packages = with pkgs; [
    llvmPackages_19.clang-tools # For LSP.
    gcc # Global compiler.
  ];

  home.file.".clang-tidy".text = ''
    Checks:
      - '*'
      - -llvm*
      - -modernize-use-trailing-return-type
      - -altera*
      - -google*
      - -fuchsia*
      - -modernize-use-nodiscard
      - -hicpp-special-member-functions
      - -readability-identifier-length
      - -readability-isolate-declaration
      - -boost*
      - -misc-non-private-member-variables-in-classes
      - -cppcoreguidelines*
  '';

  home.file.".clang-format".text = ''
    BasedOnStyle: LLVM
    AccessModifierOffset: -4
    IndentWidth: 4
    PointerAlignment: Middle
    IndentCaseLabels: true
  '';
}
