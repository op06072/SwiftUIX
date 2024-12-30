//
// Copyright (c) Vatsal Manot
//

import Swift
import SwiftUI

#if swift(>=5.8)
@_documentation(visibility: internal)
#endif
public struct _AnyCocoaListItemID: Hashable {
    let _base: AnyHashable
    
    public var base: Any {
        _base.base
    }
    
    init(_ base: AnyHashable) {
        self._base = base
    }
}

#if swift(>=5.8)
@_documentation(visibility: internal)
#endif
public struct _AnyCocoaListSectionID: Hashable {
    let _base: AnyHashable
    
    public var base: Any {
        _base.base
    }
    
    init(_ base: AnyHashable) {
        self._base = base
    }
}
