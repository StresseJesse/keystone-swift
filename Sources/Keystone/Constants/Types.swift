// For Keystone Engine. AUTO-GENERATED FILE, DO NOT EDIT [KeystoneConstants.swift]

import Foundation

//public enum Architecture: Int32 {
//    case arm = 1
//    case arm64 = 2
//    case mips = 3
//    case x86 = 4
//    case ppc = 5
//    case sparc = 6
//    case systemz = 7
//    case hexagon = 8
//    case evm = 9
//    case riscv = 10
//    case max = 11
//}


public enum KeystoneError: Int32 {
//    case asm = 128
//    case asmArch = 512
    case ok = 0
    case nomem = 1
    case arch = 2
    case handle = 3
    case mode = 4
    case version = 5
    case optInvalid = 6
    case asmExprToken = 128
    case asmDirectiveValueRange = 129
    case asmDirectiveId = 130
    case asmDirectiveToken = 131
    case asmDirectiveStr = 132
    case asmDirectiveComma = 133
    case asmDirectiveRelocName = 134
    case asmDirectiveRelocToken = 135
    case asmDirectiveFpoint = 136
    case asmDirectiveUnknown = 137
    case asmDirectiveEqu = 138
    case asmDirectiveInvalid = 139
    case asmVariantInvalid = 140
    case asmExprBracket = 141
    case asmSymbolModifier = 142
    case asmSymbolRedefined = 143
    case asmSymbolMissing = 144
    case asmRparen = 145
    case asmStatToken = 146
    case asmUnsupported = 147
    case asmMacroToken = 148
    case asmMacroParen = 149
    case asmMacroEqu = 150
    case asmMacroArgs = 151
    case asmMacroLevelsExceed = 152
    case asmMacroStr = 153
    case asmMacroInvalid = 154
    case asmEscBackslash = 155
    case asmEscOctal = 156
    case asmEscSequence = 157
    case asmEscStr = 158
    case asmTokenInvalid = 159
    case asmInsnUnsupported = 160
    case asmFixupInvalid = 161
    case asmLabelInvalid = 162
    case asmFragmentInvalid = 163
    case asmInvalidoperand = 512
    case asmMissingfeature = 513
    case asmMnemonicfail = 514
}

public enum OptionType: UInt32 {
    case syntax = 1
    case symResolver = 2
}

public struct OptionValue: OptionSet {
    public let rawValue: UInt64
    public init(rawValue: UInt64) { self.rawValue = rawValue }

    public static let syntaxIntel = OptionValue(rawValue: 1)
    public static let syntaxAtt = OptionValue(rawValue: 2)
    public static let syntaxNasm = OptionValue(rawValue: 4)
    public static let syntaxMasm = OptionValue(rawValue: 8)
    public static let syntaxGas = OptionValue(rawValue: 16)
    public static let syntaxRadix16 = OptionValue(rawValue: 32)
}

//// Raw constants
//public let KS_API_MAJOR = 0
//public let KS_API_MINOR = 9
//public let KS_VERSION_MAJOR = 0
//public let KS_VERSION_MINOR = 9
//public let KS_VERSION_EXTRA = 2
//public let KS_ARCH_ARM = 1
//public let KS_ARCH_ARM64 = 2
//public let KS_ARCH_MIPS = 3
//public let KS_ARCH_X86 = 4
//public let KS_ARCH_PPC = 5
//public let KS_ARCH_SPARC = 6
//public let KS_ARCH_SYSTEMZ = 7
//public let KS_ARCH_HEXAGON = 8
//public let KS_ARCH_EVM = 9
//public let KS_ARCH_RISCV = 10
//public let KS_ARCH_MAX = 11
//public let KS_MODE_LITTLE_ENDIAN = 0
//public let KS_MODE_BIG_ENDIAN = 1073741824
//public let KS_MODE_ARM = 1
//public let KS_MODE_THUMB = 16
//public let KS_MODE_V8 = 64
//public let KS_MODE_MICRO = 16
//public let KS_MODE_MIPS3 = 32
//public let KS_MODE_MIPS32R6 = 64
//public let KS_MODE_MIPS32 = 4
//public let KS_MODE_MIPS64 = 8
//public let KS_MODE_16 = 2
//public let KS_MODE_32 = 4
//public let KS_MODE_64 = 8
//public let KS_MODE_PPC32 = 4
//public let KS_MODE_PPC64 = 8
//public let KS_MODE_QPX = 16
//public let KS_MODE_RISCV32 = 4
//public let KS_MODE_RISCV64 = 8
//public let KS_MODE_SPARC32 = 4
//public let KS_MODE_SPARC64 = 8
//public let KS_MODE_V9 = 16
//public let KS_ERR_ASM = 128
//public let KS_ERR_ASM_ARCH = 512
//public let KS_ERR_OK = 0
//public let KS_ERR_NOMEM = 1
//public let KS_ERR_ARCH = 2
//public let KS_ERR_HANDLE = 3
//public let KS_ERR_MODE = 4
//public let KS_ERR_VERSION = 5
//public let KS_ERR_OPT_INVALID = 6
//public let KS_ERR_ASM_EXPR_TOKEN = 128
//public let KS_ERR_ASM_DIRECTIVE_VALUE_RANGE = 129
//public let KS_ERR_ASM_DIRECTIVE_ID = 130
//public let KS_ERR_ASM_DIRECTIVE_TOKEN = 131
//public let KS_ERR_ASM_DIRECTIVE_STR = 132
//public let KS_ERR_ASM_DIRECTIVE_COMMA = 133
//public let KS_ERR_ASM_DIRECTIVE_RELOC_NAME = 134
//public let KS_ERR_ASM_DIRECTIVE_RELOC_TOKEN = 135
//public let KS_ERR_ASM_DIRECTIVE_FPOINT = 136
//public let KS_ERR_ASM_DIRECTIVE_UNKNOWN = 137
//public let KS_ERR_ASM_DIRECTIVE_EQU = 138
//public let KS_ERR_ASM_DIRECTIVE_INVALID = 139
//public let KS_ERR_ASM_VARIANT_INVALID = 140
//public let KS_ERR_ASM_EXPR_BRACKET = 141
//public let KS_ERR_ASM_SYMBOL_MODIFIER = 142
//public let KS_ERR_ASM_SYMBOL_REDEFINED = 143
//public let KS_ERR_ASM_SYMBOL_MISSING = 144
//public let KS_ERR_ASM_RPAREN = 145
//public let KS_ERR_ASM_STAT_TOKEN = 146
//public let KS_ERR_ASM_UNSUPPORTED = 147
//public let KS_ERR_ASM_MACRO_TOKEN = 148
//public let KS_ERR_ASM_MACRO_PAREN = 149
//public let KS_ERR_ASM_MACRO_EQU = 150
//public let KS_ERR_ASM_MACRO_ARGS = 151
//public let KS_ERR_ASM_MACRO_LEVELS_EXCEED = 152
//public let KS_ERR_ASM_MACRO_STR = 153
//public let KS_ERR_ASM_MACRO_INVALID = 154
//public let KS_ERR_ASM_ESC_BACKSLASH = 155
//public let KS_ERR_ASM_ESC_OCTAL = 156
//public let KS_ERR_ASM_ESC_SEQUENCE = 157
//public let KS_ERR_ASM_ESC_STR = 158
//public let KS_ERR_ASM_TOKEN_INVALID = 159
//public let KS_ERR_ASM_INSN_UNSUPPORTED = 160
//public let KS_ERR_ASM_FIXUP_INVALID = 161
//public let KS_ERR_ASM_LABEL_INVALID = 162
//public let KS_ERR_ASM_FRAGMENT_INVALID = 163
//public let KS_ERR_ASM_INVALIDOPERAND = 512
//public let KS_ERR_ASM_MISSINGFEATURE = 513
//public let KS_ERR_ASM_MNEMONICFAIL = 514
//public let KS_OPT_SYNTAX = 1
//public let KS_OPT_SYM_RESOLVER = 2
//public let KS_OPT_SYNTAX_INTEL = 1
//public let KS_OPT_SYNTAX_ATT = 2
//public let KS_OPT_SYNTAX_NASM = 4
//public let KS_OPT_SYNTAX_MASM = 8
//public let KS_OPT_SYNTAX_GAS = 16
//public let KS_OPT_SYNTAX_RADIX16 = 32
