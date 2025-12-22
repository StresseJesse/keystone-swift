
import XCTest
import Foundation
import Keystone
//import CKeystone
//@testable import keystone-swift

final class KeystoneTests: XCTestCase {
    func test() {
        let assembler = Keystone(arch: .x86, mode: Mode.bits.b64)!
        let codeToAssemble = "sub [r12+0x110], r13d"
        if let machineCode = assembler.assemble(codeToAssemble) {
            print("code assembled")
            print("Assembled Bytes (\(machineCode.count) bytes):")
            let hexString = machineCode.map { String(format: "%02x", $0) }.joined(separator: " ")
            print(hexString)

        }
    }
}
//@Test func example() {
//    // Write your test here and use APIs like `#expect(...)` to check expected conditions.
//    print("Initializing X86-64 Wrapper...")
//    let assembler = KeystoneWrapper()
//
//    if assembler.engine != nil {
//        print("Wrapper ready. Assembling 64-bit code...")
//        
//        // --- CHANGE 2: x86-64 assembly instructions ---
//        // Example: move value 0x1 into RAX register, move 0x2 into RBX register, add them
//        let codeToAssemble = "mov rax, 1; mov rbx, 2; add rax, rbx; ret"
//        
//        if let machineCode = assembler.assemble(codeToAssemble) {
//            print("Assembled Bytes (\(machineCode.count) bytes):")
//            
//            // Print bytes in hex format:
//            let hexString = machineCode.map { String(format: "%02x", $0) }.joined(separator: " ")
//            print(hexString)
//            // Expected output for standard Intel syntax: 48 c7 c0 01 00 00 00 48 c7 c3 02 00 00 00 48 01 db c3
//            
//        } else {
//            print("Assembly test failed.")
//        }
//    } else {
//        print("Cannot run assembly test: Engine failed to initialize.")
//    }
//
//}
