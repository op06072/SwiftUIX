//
// Copyright (c) Vatsal Manot
//

import Swift
import SwiftUI

/// A view for presenting a stack of views representing a visible path in a navigation hierarchy.
@available(iOS 13.0, tvOS 13.0, watchOS 7.0, *)
@available(macOS, unavailable)
#if swift(>=5.8)
@_documentation(visibility: internal)
#endif
public struct StackNavigationView<Content: View>: View {
    private let content: Content
    
    public init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    public var body: some View {
        _NestedNavigationView {
            content
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
