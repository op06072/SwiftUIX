//
// Copyright (c) Vatsal Manot
//

import Swift
import SwiftUI

#if swift(>=5.8)
@_documentation(visibility: internal)
#endif
public struct SearchToken: Codable, Hashable {
    public let text: String
}

// MARK: - Auxiliary

#if os(iOS) || os(visionOS) || targetEnvironment(macCatalyst)
extension UISearchToken {
    var _SwiftUIX_text: String {
        representedObject as! String
    }
    
    public convenience init(_ token: SearchToken) {
        self.init(icon: nil, text: token.text)
        
        self.representedObject = token.text
    }
}
#endif
