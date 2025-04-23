//
//  TabBarBodySectionListView.swift
//  JumpLinksSwiftUI
//
//  Created by Farrukh on 23/04/2025.
//
import SwiftUI
import Foundation

public struct TabBarBodySectionListView: View {
    @Binding var selectedValue: Int
    @Binding var scrollOffset: [Int: CGFloat]
    @Binding var hasToScroll: Bool
    public var dataArray: [TabBarBodySectionView]
    
    public var body: some View {
            TabBarBodySectionGenericView(sectionItems: dataArray, selectedValue: $selectedValue, scrollOffset: $scrollOffset, hasToScroll: $hasToScroll)
        }
    
}

#Preview {
    TabBarBodySectionListView(selectedValue: .constant(1), scrollOffset:.constant([:]), hasToScroll: .constant(false),
        dataArray: [
            TabBarBodySectionView(view: SectionItemView(value: "Farrukh") , id: .view1),
            TabBarBodySectionView(view: SectionItemView2(value: "Rasool"), id: .view2),
            TabBarBodySectionView(view: SectionItemView3(value: "is"), id: .view3),
            TabBarBodySectionView(view: SectionItemView4(value: "a"), id: .view4),
            TabBarBodySectionView(view: SectionItemView5(value: "good"), id: .view5),
            TabBarBodySectionView(view: SectionItemView6(value: "boy"), id: .view6)
        ])
}
