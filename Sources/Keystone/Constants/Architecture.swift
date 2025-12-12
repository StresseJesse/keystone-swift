import CKeystone
import Foundation

// Define a protocol to help with the mapping (optional, but good practice)
protocol KeystoneArchProtocol {
    var archValue: ks_arch { get }
}

// Your custom Swift Enum
public enum Architecture: KeystoneArchProtocol {
    case arm
    case arm64
    case mips
    case x86
    case ppc
    case sparc
    case systemz
    case hexagon
    case evm
    case max

    // The single necessary mapping property
    public var archValue: ks_arch {
        switch self {
        case .arm:
            // 🐛 FIX: Construct the ks_arch struct from the global Int constant's raw value
            return ks_arch(rawValue: KS_ARCH_ARM.rawValue)
        case .arm64:
            return ks_arch(rawValue: KS_ARCH_ARM64.rawValue)
        case .mips:
            return ks_arch(rawValue: KS_ARCH_MIPS.rawValue)
        case .x86:
            return ks_arch(rawValue: KS_ARCH_X86.rawValue)
        case .ppc:
            return ks_arch(rawValue: KS_ARCH_PPC.rawValue)
        case .sparc:
            return ks_arch(rawValue: KS_ARCH_SPARC.rawValue)
        case .systemz:
            return ks_arch(rawValue: KS_ARCH_SYSTEMZ.rawValue)
        case .hexagon:
            return ks_arch(rawValue: KS_ARCH_HEXAGON.rawValue)
        case .evm:
            return ks_arch(rawValue: KS_ARCH_EVM.rawValue)
        case .max:
            return ks_arch(rawValue: KS_ARCH_MAX.rawValue)
        }
    }
    
    // Optional helper function
    public func isSupported() -> Bool {
        return ks_arch_supported(self.archValue)
    }
}

// Extension to bridge the gap automatically at the call site (Optional but clean)
extension ks_arch {
    init(_ architecture: Architecture) {
        self = architecture.archValue
    }
}
