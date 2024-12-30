//
// Copyright (c) Vatsal Manot
//

import Combine
import Swift
import SwiftUI

#if os(iOS) || os(tvOS) || os(visionOS) || targetEnvironment(macCatalyst)

#if swift(>=5.8)
@_documentation(visibility: internal)
#endif
public struct CollectionViewDropInfo: Hashable {
    public let dragItems: [DragItem]
    public let destination: Int?
}

@available(tvOS, unavailable)
public protocol CollectionViewDropDelegate {
    func performDrop(info: CollectionViewDropInfo) -> Bool
    func validateDrop(info: CollectionViewDropInfo) -> Bool
    @available(iOS 13.4, *)
    func dropUpdated(info: CollectionViewDropInfo) -> DropProposal?
}

// MARK: - Implementation

@available(iOS 13.4, *)
@available(tvOS, unavailable)
#if swift(>=5.8)
@_documentation(visibility: internal)
#endif
public struct AnyCollectionViewDropDelegate: CollectionViewDropDelegate {
    let performDropImpl: (CollectionViewDropInfo) -> Bool
    let validateDropImpl: (CollectionViewDropInfo) -> Bool
    let dropUpdatedImpl: (CollectionViewDropInfo) -> DropProposal?
    
    public init(
        performDrop: @escaping (CollectionViewDropInfo) -> Bool,
        validateDrop: @escaping (CollectionViewDropInfo) -> Bool,
        dropUpdated: @escaping (CollectionViewDropInfo) -> DropProposal?
    ) {
        self.performDropImpl = performDrop
        self.validateDropImpl = validateDrop
        self.dropUpdatedImpl = dropUpdated
    }
    
    public func performDrop(info: CollectionViewDropInfo) -> Bool {
        performDropImpl(info)
    }
    
    public func validateDrop(info: CollectionViewDropInfo) -> Bool {
        validateDropImpl(info)
    }
    
    public func dropUpdated(info: CollectionViewDropInfo) -> DropProposal? {
        dropUpdatedImpl(info)
    }
}

#endif
