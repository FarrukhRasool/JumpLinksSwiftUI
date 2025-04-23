//
//  TabBarBodyDataSourceAble.swift
//  JumpLinksSwiftUI
//
//  Created by Farrukh on 23/04/2025.
//
import SwiftUI

public protocol TabBarBodyDataSourceAble: Identifiable {
    @ViewBuilder var view: AnyView { get set }
    var id: ViewType { get set }
}
