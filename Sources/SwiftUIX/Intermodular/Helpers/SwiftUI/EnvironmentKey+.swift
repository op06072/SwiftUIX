//
// Copyright (c) Vatsal Manot
//

import SwiftUI

#if swift(>=5.8)
@_documentation(visibility: internal)
#endif
open class DefaultEnvironmentKey<Value>: EnvironmentKey {
    public static var defaultValue: Value? {
        nil
    }
}
