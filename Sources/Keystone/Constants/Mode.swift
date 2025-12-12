//
//  Mode.swift
//  keystone-swift
//
//  Created by Jesse Ramsey on 12/11/25.
//

import CKeystone
import Foundation

public struct Mode: OptionSet, Sendable {
    public let rawValue: Int32

    // Initialize with the raw C type struct from CKeystone
    public init(rawValue: Int32) {
        self.rawValue = rawValue
    }
    
    private init(_ modeValue: ks_mode) {
        self.init(rawValue: Int32(modeValue.rawValue))
    }
    
    // Global constants imported from CKeystone are used to define our Swift static members
    
    // Endianness
    public enum endian {
        public static let littleEndian = Mode(KS_MODE_LITTLE_ENDIAN)
        public static let bigEndian = Mode(KS_MODE_BIG_ENDIAN)
    }

    // Architectures (note that these overlap raw values across archs, so we use descriptive names)
    
    // ARM/ARM64
    public enum arm {
        public static let arm = Mode(KS_MODE_ARM)
        public static let thumb = Mode(KS_MODE_THUMB)
        public static let v8 = Mode(KS_MODE_V8)
    }
    
    
    // MIPS
    public enum mips {
        public static let micro = Mode(KS_MODE_MICRO)
        public static let mips3 = Mode(KS_MODE_MIPS3)
        public static let mips32r6 = Mode(KS_MODE_MIPS32R6)
        public static let mips32 = Mode(KS_MODE_MIPS32)
        public static let mips64 = Mode(KS_MODE_MIPS64)
    }
    
    // X86/X64
    public enum bits {
        public static let b16 = Mode(KS_MODE_16)
        public static let b32 = Mode(KS_MODE_32)
        public static let b64 = Mode(KS_MODE_64)
    }

    // PPC
    public enum ppc {
        public static let ppc32 = Mode(KS_MODE_PPC32)
        public static let ppc64 = Mode(KS_MODE_PPC64)
        public static let qpx = Mode(KS_MODE_QPX)
    }
    
    // SPARC
    public enum sparc {
        public static let sparc32 = Mode(KS_MODE_SPARC32)
        public static let sparc64 = Mode(KS_MODE_SPARC64)
        public static let v9 = Mode(KS_MODE_V9)
    }
}


