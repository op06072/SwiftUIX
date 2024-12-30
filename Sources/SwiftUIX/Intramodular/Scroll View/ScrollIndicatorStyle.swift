//
// Copyright (c) Vatsal Manot
//

import SwiftUI

/// A type that specifies the appearance and interaction of all scroll indicators within a view hierarchy.
public protocol ScrollIndicatorStyle {
    
}

// MARK: - API

#if swift(>=5.8)
@_documentation(visibility: internal)
#endif
public struct DefaultScrollViewIndicatorStyle: Hashable, ScrollIndicatorStyle {
    public init() {
        
    }
}

/// A scroll indicator style that hides all scroll view indicators within a view hierarchy.
///
/// `HiddenScrollViewIndicatorStyle/init(vertical:horizontal:)` allows you to specify
#if swift(>=5.8)
@_documentation(visibility: internal)
#endif
public struct HiddenScrollViewIndicatorStyle: Hashable, ScrollIndicatorStyle {
    public let vertical: Bool
    public let horizontal: Bool
    
    /// - Parameters:
    ///   - vertical: A Boolean value that indicates whether the vertical scroll indicator should be hidden.
    ///   - horizontal: A Boolean value that indicates whether the horizontal scroll indicator should be hidden.
    public init(vertical: Bool = true, horizontal: Bool = true) {
        self.vertical = vertical
        self.horizontal = horizontal
    }
}

#if swift(>=5.8)
@_documentation(visibility: internal)
#endif
public struct InsetScrollViewIndicatorStyle: Hashable, ScrollIndicatorStyle {
    public let insets: (horizontal: EdgeInsets, vertical: EdgeInsets)
    
    public init(_ insets: EdgeInsets) {
        self.insets = (insets, insets)
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(insets.horizontal.top)
        hasher.combine(insets.horizontal.leading)
        hasher.combine(insets.horizontal.bottom)
        hasher.combine(insets.horizontal.trailing)
        hasher.combine(insets.vertical.top)
        hasher.combine(insets.vertical.leading)
        hasher.combine(insets.vertical.bottom)
        hasher.combine(insets.vertical.trailing)
    }
    
    public static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.insets == rhs.insets
    }
}

extension View {
    public func scrollIndicatorStyle<Style: ScrollIndicatorStyle>(_ scrollIndicatorStyle: Style) -> some View {
        environment(\.scrollIndicatorStyle, scrollIndicatorStyle)
    }
}
// MARK: - Auxiliary

extension EnvironmentValues {
    private struct ScrollIndicatorStyleKey: EnvironmentKey {
        static let defaultValue: ScrollIndicatorStyle = DefaultScrollViewIndicatorStyle()
    }
    
    var scrollIndicatorStyle: ScrollIndicatorStyle {
        get {
            self[ScrollIndicatorStyleKey.self]
        } set {
            self[ScrollIndicatorStyleKey.self] = newValue
        }
    }
}
