//
// Copyright (c) Vatsal Manot
//

import Combine
import Swift
import SwiftUI

/// An empty `ObservableObject` for utility purposes.
#if swift(>=5.8)
@_documentation(visibility: internal)
#endif
public final class EmptyObservableObject: ObservableObject, Hashable {
    public init() {
        
    }
    
    public func notify() {
        _objectWillChange_send()
    }
    
    public static func == (lhs: EmptyObservableObject, rhs: EmptyObservableObject) -> Bool {
        ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(ObjectIdentifier(self))
    }
}
