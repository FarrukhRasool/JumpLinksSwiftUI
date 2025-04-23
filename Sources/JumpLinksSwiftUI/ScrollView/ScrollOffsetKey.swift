//
//  ScrollOffsetKey.swift
//  JumpLinksSwiftUI
//
//  Created by Farrukh on 23/04/2025.
//

import SwiftUI

struct ScrollOffsetKey: PreferenceKey {
    typealias Value = [Int: CGFloat]
    static let defaultValue: [Int: CGFloat] = [:]
    
    static func reduce(value: inout [Int: CGFloat], nextValue: () -> [Int: CGFloat]) {
        value.merge(nextValue(), uniquingKeysWith: { $1 })
    }
}
