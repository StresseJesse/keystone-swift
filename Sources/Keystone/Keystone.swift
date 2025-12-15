// The Swift Programming Language
// https://docs.swift.org/swift-book


import Foundation
import CKeystone
//import KeystoneEngine


public class Keystone {
    
    var engine: ks_engine?
    // Store your custom Swift enum here
    var arch: Architecture
    var mode: Mode

    public init?(arch: Architecture, mode: Mode) {
        var engine: ks_engine? = nil
        let arch: Architecture = .x86 // Clean dot syntax
        let mode: Mode = mode
        
        let errCode = ks_open(arch.archValue, mode.rawValue, &engine)

        if errCode == KS_ERR_OK {
            self.engine = engine
            self.arch = arch
            self.mode = mode
        } else {
            // ... error handling ...
            print("Failed to initialize Keystone engine.")
            print("Error code: \(errCode)")
            return nil
        }
    }
    
    deinit {
        if let engineHandle = self.engine {
            ks_close(engineHandle)
        }
    }
    
    /// Assembles a string of assembly code into machine code bytes.
    /// - Parameters:
    ///   - assemblyCode: The input assembly string (e.g., "mov ah, 0x01")
    ///   - address: The base address for assembly (optional, default 0)
    /// - Returns: An array of assembled bytes (UInt8) on success, or nil on failure.
    public func assemble(_ assemblyCode: String, startingAt address: UInt64 = 0) -> [UInt8]? {
        guard let engineHandle = self.engine else {
            print("Error: Engine not initialized.")
            return nil
        }

        var encoding: UnsafeMutablePointer<UInt8>? = nil
        var encodingSize: Int = 0
        var statementCount: Int = 0
        
        // Call the C function ks_asm
        // Swift automatically converts String to UnsafePointer<CChar>
        let result = ks_asm(
            engineHandle,
            assemblyCode,
            address,
            &encoding,
            &encodingSize,
            &statementCount
        )

        // ks_asm returns 0 on success, -1 on failure
        if result == 0, let encodingPtr = encoding {
            
            // Create a Swift Array from the C pointer and size
            let byteArray = Array(UnsafeBufferPointer(start: encodingPtr, count: encodingSize))
            
            // CRITICAL: Must free the memory allocated by the C library using ks_free
            ks_free(encodingPtr)
            
            return byteArray
            
        } else {
            // Get the specific error code if it failed
            let errorCode = ks_errno(engineHandle)
            let errorString = String(cString: ks_strerror(errorCode))
            print("Assembly failed: \(errorString)")
            return nil
        }
    }

}


