//
// Copyright (c) Vatsal Manot
//

import SwiftUI

@available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
#if swift(>=5.8)
@_documentation(visibility: internal)
#endif
public enum _AnyShapeStyle {
    case shapeStyle(AnyShapeStyle)
    case color(Color)
}

// MARK: - Initializers

@available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
extension AnyShapeStyle {
    public init(_ style: _AnyShapeStyle) {
        switch style {
            case .shapeStyle(let style):
                self = style
            case .color(let color):
                self = .init(color)
        }
    }
}
