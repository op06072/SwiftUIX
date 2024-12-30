//
// Copyright (c) Vatsal Manot
//

import Combine
import Swift
import SwiftUI

@frozen
#if swift(>=5.8)
@_documentation(visibility: internal)
#endif
public struct PassthroughView<Content: View>: _opaque_View, View {
    public let content: Content
    
    @_optimize(speed)
    @inlinable
    public init(content: Content) {
        self.content = content
    }
    
    @_optimize(speed)
    @inlinable
    public init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
        
    @_optimize(speed)
    @inlinable
    public var body: some View {
        content
    }
}
