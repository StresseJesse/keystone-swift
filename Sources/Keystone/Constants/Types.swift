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

public struct OptionValue: OptionSet, Sendable {
    public let rawValue: UInt64
    public init(rawValue: UInt64) { self.rawValue = rawValue }

    public static let syntaxIntel = OptionValue(rawValue: 1)
    public static let syntaxAtt = OptionValue(rawValue: 2)
    public static let syntaxNasm = OptionValue(rawValue: 4)
    public static let syntaxMasm = OptionValue(rawValue: 8)
    public static let syntaxGas = OptionValue(rawValue: 16)
    public static let syntaxRadix16 = OptionValue(rawValue: 32)
}
