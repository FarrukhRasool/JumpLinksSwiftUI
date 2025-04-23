//
//  ScrollViewState.swift
//  JumpLinksSwiftUI
//
//  Created by Farrukh on 23/04/2025.
//
import SwiftUI
import Foundation

class ScrollViewState: ObservableObject {
    var hasToScroll: Bool = false
    @Published var scrollOffset: [Int: CGFloat] = [:]
    @Published  var selectedValue: Int = 1
}
