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
      - -cppcoreguidelines-special-member-functions
      - -hicpp-special-member-functions
      - -readability-identifier-length
      - -readability-isolate-declaration
      - -boost*
  '';

  home.file.".clang-format".text = ''
    BasedOnStyle: LLVM
    AccessModifierOffset: -4
    IndentWidth: 4
    PointerAlignment: Middle
  '';
}
