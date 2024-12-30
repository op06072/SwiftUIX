//
// Copyright (c) Vatsal Manot
//

import SwiftUI

#if swift(>=5.8)
@_documentation(visibility: internal)
#endif
public struct _ViewTraitsReader<Key: _ViewTraitKey, Content: View>: View where Key.Value: Equatable {
    private let key: Key.Type
    private let content: ([AnyHashable: Key.Value]) -> Content
    
    @State private var value = [AnyHashable: Key.Value]()
    
    public init(
        _ key: Key.Type = Key.self,
        @ViewBuilder content: @escaping ([AnyHashable: Key.Value]) -> Content
    ) {
        self.key = key
        self.content = content
    }
    
    public var body: some View {
        content(value)._onViewTraitsChange(key) {
            self.value = $0
        }
    }
}
