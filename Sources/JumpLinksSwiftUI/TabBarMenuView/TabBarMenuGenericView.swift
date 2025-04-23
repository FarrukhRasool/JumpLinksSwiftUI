//
//  TabBarMenuGenericView.swift
//  JumpLinksSwiftUI
//
//  Created by Farrukh on 23/04/2025.
//

import SwiftUI

public enum ViewType: Int {
    case view1 = 6
    case view2 = 5
    case view3 = 4
    case view4 = 3
    case view5 = 2
    case view6 = 1
}

public protocol TabBarMenuDataSourceAble: Identifiable {
    var id: ViewType { get set }
    var title: String { get set }
}


struct TabBarMenuGenericView<C, T>: View where C: View, T: TabBarMenuDataSourceAble {
    @Binding var selectedValue: Int
    var items: [T]
    @ViewBuilder var view: ((T) -> C)
   
    var onTabTap: ((Int) -> Void)
    var body: some View {
        ScrollViewReader { proxy in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(items) { item in
                        view(item)
                            .onTapGesture {
                                onTabTap(item.id.rawValue)
                            }
                    }
                }
            }
            .frame(height: 40)
            .background(.orange)
            .onChange(of: selectedValue) { newValue in
                if let item = items.first(where: { $0.id.rawValue == newValue }) {
                    withAnimation(.easeInOut(duration: 0.4)) {
                        proxy.scrollTo(item.id, anchor: .center)
                    }
                }
            }
        }
    }
}
