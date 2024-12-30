//
// Copyright (c) Vatsal Manot
//

import Swift

#if canImport(AppKit)

#if swift(>=5.8)
@_documentation(visibility: internal)
#endif
public enum AppKitOrUIKitBackgroundFetchResult {
    case newData
    case noData
    case failed
}

#elseif canImport(WatchKit)

#if swift(>=5.8)
@_documentation(visibility: internal)
#endif
public enum AppKitOrUIKitBackgroundFetchResult {
    case newData
    case noData
    case failed
}

#else

import UIKit

public typealias AppKitOrUIKitBackgroundFetchResult = UIBackgroundFetchResult

#endif
