//
//  TabBarItemView.swift
//  JumpLinksSwiftUI
//
//  Created by Farrukh on 23/04/2025.
//
import SwiftUI
public struct TabBarItemView: View {
    public var item: any TabBarMenuDataSourceAble
    public var isSelected: Bool
    public var body: some View {
        Text(item.title)
            .underline(isSelected, color: .white)
            .padding(.horizontal, 12)
    }
}
