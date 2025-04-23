//
//  TabBarMenuView.swift
//  JumpLinksSwiftUI
//
//  Created by Farrukh on 23/04/2025.
//

import SwiftUI

struct TabBarMenuView<Content: View>: View {
    var dataSource: [TabBarItem]
    @Binding var selectedValue: Int
    @Binding var hasToScroll: Bool
    @ViewBuilder var view: (any TabBarMenuDataSourceAble) -> Content
    
    var body: some View {
        TabBarMenuGenericView(selectedValue: $selectedValue, items: dataSource,
                              view: { item in
            view(item)
        }, onTabTap: {
            id in
            selectedValue = id
            hasToScroll = true
        })
    }
    
}

#Preview {
    TabBarMenuView(dataSource: [
        TabBarItem(title: "Item 1", id: .view1),
        TabBarItem(title: "Item 2", id: .view2),
        TabBarItem(title: "Item 3", id: .view3),
        TabBarItem(title: "Item 4", id: .view4),
        TabBarItem(title: "Item 5", id: .view5),
        TabBarItem(title: "Item 6", id: .view6)
        
    ],
                   selectedValue: .constant(1),
                   hasToScroll: .constant(false),
                   view: { item in
        TabBarItemView(item: item,isSelected: item.id.rawValue == 1)
    }
    )
}
