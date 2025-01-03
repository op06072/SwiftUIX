//
// Copyright (c) Vatsal Manot
//

import SwiftUI

#if swift(>=5.8)
@_documentation(visibility: internal)
#endif
public struct _CollectionViewItemContent {
    
}

extension _CollectionViewItemContent {
    public struct ResolvedView: View {
        private let base: AnyView
        
        public var body: some View {
            base
        }
        
        init<T: View>(_ base: T) {
            self.base = base.eraseToAnyView()
        }
        
        func _precomputedDimensionsThatFit(
            in dimensions: OptionalDimensions
        ) -> OptionalDimensions? {
            // FIXME: Implement using view traits
            // base._opaque_frameModifier.dimensionsThatFit(in: dimensions)
            
            return nil
        }
    }
}
