//
// Copyright (c) Vatsal Manot
//

import Swift
import SwiftUI

#if swift(>=5.8)
@_documentation(visibility: internal)
#endif
public enum PresentationTransitionPhase {
    case willBegin
    case didEnd
    case willDismiss
    case didDismiss
}

extension EnvironmentValues {
    var _presentationTransitionPhase: PresentationTransitionPhase? {
        get {
            self[DefaultEnvironmentKey<PresentationTransitionPhase>.self]
        } set {
            self[DefaultEnvironmentKey<PresentationTransitionPhase>.self] = newValue
        }
    }
}
