//
// Copyright (c) Vatsal Manot
//

import SwiftUI

#if swift(>=5.8)
@_documentation(visibility: internal)
#endif
public struct _SwiftUIX_FixedSizeInfo: Codable, Hashable, Sendable {
    public var horizontal: Bool
    public var vertical: Bool
    
    public var value: (horizontal: Bool, vertical: Bool) {
        get {
            (horizontal, vertical)
        } set {
            (horizontal, vertical) = newValue
        }
    }
    
    public init(horizontal: Bool, vertical: Bool) {
        self.horizontal = horizontal
        self.vertical = vertical
    }
    
    public init(_ value: (Bool, Bool)) {
        self.horizontal = value.0
        self.vertical = value.1
    }
}
