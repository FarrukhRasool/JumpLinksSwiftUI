import Foundation
import SwiftUI


struct ScrollViewTargetBehaviour: View {
    @StateObject var scrollViewState : ScrollViewState
    
    var tabBarDataSourceAbleArray = [
        TabBarItem(title: "Item 1", id: .view1),
        TabBarItem(title: "Item 2", id: .view2),
        TabBarItem(title: "Item 3", id: .view3),
        TabBarItem(title: "Item 4", id: .view4),
        TabBarItem(title: "Item 5", id: .view5),
        TabBarItem(title: "Item 6", id: .view6)
        
    ]
    
    var tabBarBodyDataSourceAbleArray = [
        TabBarBodySectionView(view: SectionItemView(value: "Farrukh") , id: .view1),
        TabBarBodySectionView(view: SectionItemView2(value: "Rasool"), id: .view2),
        TabBarBodySectionView(view: SectionItemView3(value: "is"), id: .view3),
        TabBarBodySectionView(view: SectionItemView4(value: "a"), id: .view4),
        TabBarBodySectionView(view: SectionItemView5(value: "good"), id: .view5),
        TabBarBodySectionView(view: SectionItemView6(value: "boy"), id: .view6),
    ]
    
    var body: some View {
        VStack {
            TabBarMenuView(dataSource: tabBarDataSourceAbleArray,
                           selectedValue: self.$scrollViewState.selectedValue,
                           hasToScroll: self.$scrollViewState.hasToScroll,
                           view: { item in
                TabBarItemView(item: item,isSelected: item.id.rawValue == self.scrollViewState.selectedValue)
            }
            )
            
            TabBarBodySectionListView(selectedValue: self.$scrollViewState.selectedValue, scrollOffset: $scrollViewState.scrollOffset, hasToScroll: $scrollViewState.hasToScroll, dataArray: tabBarBodyDataSourceAbleArray)
        }
        .padding()
    }
}

#Preview {
    ScrollViewTargetBehaviour(scrollViewState: ScrollViewState())
}
