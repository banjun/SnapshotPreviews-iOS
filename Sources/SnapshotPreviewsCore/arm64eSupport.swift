extension UnsafeRawPointer {
    init?(bitPatternStrippingPointerAuthentication bitPattern: UInt) {
        guard let p = arm64e_ptrauth_strip(.init(bitPattern: bitPattern)) else { return nil }
        self = p
    }

    init?(signingUnauthenticatedFunctionPointer other: UnsafeRawPointer) {
        guard let p = arm64e_ptrauth_sign_unauthenticated_function_pointer(other) else { return nil }
        self = p
    }
}
