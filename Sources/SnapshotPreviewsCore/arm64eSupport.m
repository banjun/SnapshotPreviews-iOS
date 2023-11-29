#import "arm64eSupport.h"
#import <ptrauth.h>

const void *arm64e_ptrauth_strip(const void * p) {
#if __has_feature(ptrauth_calls)
    // arm64e
    return ptrauth_strip(p, ptrauth_key_process_dependent_data);  // any key will do
#else
    // arm64
    return p;
#endif
}
const void *arm64e_ptrauth_sign_unauthenticated_function_pointer(const void *p) {
#if __has_feature(ptrauth_calls)
    // arm64e
    __auto_type stripped = arm64e_ptrauth_strip(p); // NOTE: no effect in this case
    ptrauth_extra_data_t data = 0; // NOTE: crash on deref if salt is nonzero
    // ptrauth_key_function_pointer for c function ptr such as: unsafeBitCast(p, to: (@convention(c) () -> UInt64).self)
    return ptrauth_sign_unauthenticated(stripped, ptrauth_key_function_pointer, data);
#else
    // arm64
    return p;
#endif
}
