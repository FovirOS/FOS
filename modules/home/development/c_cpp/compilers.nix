{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    llvmPackages_19.clang-tools # For LSP.
    gcc # Global compiler.
  ];

  home.file.".clang-tidy".text = ''
    Checks: '*, -llvm*, -modernize-use-trailing-return-type, -readability-braces-around-statements, -altera*'
  '';

  home.file.".clang-format".text = ''
    AccessModifierOffset: -4

    AlignAfterOpenBracket: Align

    AlignArrayOfStructures: None

    AlignConsecutiveMacros: None

    AlignConsecutiveAssignments: Consecutive

    AlignConsecutiveBitFields: None

    AlignConsecutiveDeclarations: Consecutive

    AlignEscapedNewlines: Left

    AlignOperands: Align

    AlignTrailingComments: true

    AllowAllParametersOfDeclarationOnNextLine: true

    AllowShortEnumsOnASingleLine: true

    AllowShortBlocksOnASingleLine: Never

    AllowShortCaseLabelsOnASingleLine: false

    AllowShortFunctionsOnASingleLine: InlineOnly

    AllowShortLambdasOnASingleLine: All

    AllowShortIfStatementsOnASingleLine: Never

    AllowShortLoopsOnASingleLine: true

    AlwaysBreakAfterReturnType: None

    AlwaysBreakBeforeMultilineStrings: false


    BreakTemplateDeclarations: Yes
    AttributeMacros:
      - __capability

    BinPackArguments: true

    BinPackParameters: true

    BraceWrapping:
      AfterCaseLabel: true
      AfterClass: true
      AfterControlStatement: Always
      AfterEnum: false
      AfterFunction: true
      AfterNamespace: true
      AfterObjCDeclaration: false
      AfterStruct: true
      AfterUnion: true
      AfterExternBlock: false
      BeforeCatch: true
      BeforeElse: true
      BeforeLambdaBody: false
      BeforeWhile: false
      IndentBraces: false
      SplitEmptyFunction: true
      SplitEmptyRecord: true
      SplitEmptyNamespace: true

    BreakBeforeBinaryOperators: None

    BreakBeforeConceptDeclarations: true

    BreakBeforeBraces: Custom

    BreakInheritanceList: AfterColon

    BreakBeforeTernaryOperators: true

    BreakConstructorInitializers: BeforeComma

    BreakAfterJavaFieldAnnotations: false

    ColumnLimit: 80

    CommentPragmas: "^ IWYU pragma:"

    CompactNamespaces: false

    ConstructorInitializerIndentWidth: 4

    ContinuationIndentWidth: 4

    Cpp11BracedListStyle: true

    DeriveLineEnding: true

    DerivePointerAlignment: false

    DisableFormat: false

    EmptyLineAfterAccessModifier: Never

    EmptyLineBeforeAccessModifier: LogicalBlock

    ExperimentalAutoDetectBinPacking: false

    FixNamespaceComments: true

    ForEachMacros:
      - foreach
      - Q_FOREACH
      - BOOST_FOREACH
    IfMacros:
      - KJ_IF_MAYBE

    IncludeBlocks: Merge

    IncludeCategories:
      - Regex: '^"(llvm|llvm-c|clang|clang-c)/'
        Priority: 2
        SortPriority: 0
        CaseSensitive: false
      - Regex: '^(<|"(gtest|gmock|isl|json)/)'
        Priority: 3
        SortPriority: 0
        CaseSensitive: false
      - Regex: ".*"
        Priority: 1
        SortPriority: 0
        CaseSensitive: false
    IncludeIsMainRegex: "(Test)?$"
    IncludeIsMainSourceRegex: ""

    IndentAccessModifiers: false

    IndentCaseLabels: false

    IndentCaseBlocks: false

    IndentGotoLabels: false

    IndentPPDirectives: None

    IndentExternBlock: AfterExternBlock

    IndentRequires: false

    IndentWidth: 4

    IndentWrappedFunctionNames: false

    InsertTrailingCommas: None

    JavaScriptQuotes: Leave

    JavaScriptWrapImports: true

    KeepEmptyLinesAtTheStartOfBlocks: true

    LambdaBodyIndentation: Signature

    MacroBlockBegin: ""

    MacroBlockEnd: ""

    MaxEmptyLinesToKeep: 3

    NamespaceIndentation: All
    ObjCBinPackProtocolList: Auto

    ObjCBlockIndentWidth: 4
    ObjCBreakBeforeNestedBlockParam: true

    ObjCSpaceAfterProperty: false

    ObjCSpaceBeforeProtocolList: true
    PenaltyBreakAssignment: 2
    PenaltyBreakBeforeFirstCallParameter: 19
    PenaltyBreakComment: 300
    PenaltyBreakFirstLessLess: 120
    PenaltyBreakString: 1000
    PenaltyBreakTemplateDeclaration: 10
    PenaltyExcessCharacter: 1000000
    PenaltyReturnTypeOnItsOwnLine: 60
    PenaltyIndentedWhitespace: 0

    PointerAlignment: Middle

    PPIndentWidth: -1

    ReferenceAlignment: Pointer

    ReflowComments: true

    ShortNamespaceLines: 1

    SortIncludes: CaseSensitive

    SortJavaStaticImport: Before

    SortUsingDeclarations: true

    SpaceAfterCStyleCast: true

    SpaceAfterLogicalNot: false

    SpaceAfterTemplateKeyword: true

    SpaceBeforeAssignmentOperators: true

    SpaceBeforeCaseColon: false

    SpaceBeforeCpp11BracedList: true

    SpaceBeforeCtorInitializerColon: true

    SpaceBeforeInheritanceColon: true

    SpaceBeforeParens: ControlStatements

    SpaceAroundPointerQualifiers: Default

    SpaceBeforeRangeBasedForLoopColon: true

    SpaceInEmptyBlock: false

    SpaceInEmptyParentheses: false

    SpacesBeforeTrailingComments: 1

    SpacesInAngles: Never

    SpacesInConditionalStatement: false

    SpacesInContainerLiterals: true

    SpacesInCStyleCastParentheses: false

    SpacesInLineCommentPrefix:
      Minimum: 1
      Maximum: -1

    SpacesInParentheses: false

    SpacesInSquareBrackets: false

    SpaceBeforeSquareBrackets: false

    BitFieldColonSpacing: Both

    Standard: Auto

    StatementAttributeLikeMacros:
      - Q_EMIT

    StatementMacros:
      - Q_UNUSED
      - QT_REQUIRE_VERSION

    TabWidth: 4

    UseCRLF: false

    UseTab: Never

    WhitespaceSensitiveMacros:
      - STRINGIZE
      - PP_STRINGIZE
      - BOOST_PP_STRINGIZE
      - NS_SWIFT_NAME
      - CF_SWIFT_NAME

    PackConstructorInitializers: CurrentLine
    InsertNewlineAtEOF: true
  '';
}
