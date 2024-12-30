//
// Copyright (c) Vatsal Manot
//

import Swift
import SwiftUI

/// A horizontal spacer.
@frozen
#if swift(>=5.8)
@_documentation(visibility: internal)
#endif
public struct HSpacer: View {
    @inlinable
    public var body: some View {
        HStack {
            Spacer()
        }
    }
    
    @inlinable
    public init() {
        
    }
}

/// A vertical spacer.
@frozen
#if swift(>=5.8)
@_documentation(visibility: internal)
#endif
public struct VSpacer: View {
    @inlinable
    public var body: some View {
        VStack {
            Spacer()
        }
    }
    
    @inlinable
    public init() {
        
    }
}

/// A spacer in both the horizontal and the vertical axis.
///
/// `XSpacer` expands to fill its entire container.
@frozen
#if swift(>=5.8)
@_documentation(visibility: internal)
#endif
public struct XSpacer: View {
    @inlinable
    public var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            HStack(spacing: 0) {
                Spacer()
            }
        }
    }
    
    @inlinable
    public init() {
        
    }
}
