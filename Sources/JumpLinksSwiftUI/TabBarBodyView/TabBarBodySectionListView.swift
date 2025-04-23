//
//  TabBarBodySectionView.swift
//  JumpLinksSwiftUI
//
//  Created by Farrukh on 23/04/2025.
//
import SwiftUI

public struct TabBarBodySectionView: TabBarBodyDataSourceAble{
    public var view: AnyView
    public var id: ViewType
    public init<Content: View>(view: Content, id: ViewType) {
           self.view = AnyView(view)
           self.id = id
       }
}

