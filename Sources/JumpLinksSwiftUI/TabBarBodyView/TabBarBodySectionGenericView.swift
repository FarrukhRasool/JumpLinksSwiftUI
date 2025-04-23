//
//  TabBarBodySectionGenericView.swift
//  JumpLinksSwiftUI
//
//  Created by Farrukh on 23/04/2025.
//

import SwiftUI


struct TabBarBodySectionGenericView<T>: View where T: TabBarBodyDataSourceAble {
    var sectionItems: [T]
    @Binding var selectedValue: Int
    @Binding var scrollOffset: [Int: CGFloat]
    @Binding var hasToScroll: Bool
    @State var isScrolling: Bool = true

    var body: some View {
        ScrollViewReader { mainProxy in
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(sectionItems) { section in
                    section.view
                        .id(section.id)
                        .background(
                            GeometryReader { geo in
                                Color.clear.preference(key: ScrollOffsetKey.self, value: [section.id.rawValue: geo.frame(in: .global).maxY])
                            }
                        )
                }
                .onPreferenceChange(ScrollOffsetKey.self) { value in
                    guard isScrolling else { return }
                    self.scrollOffset = value
                }
            }
            .onChange(of: selectedValue) { newValue in
                scrollToIndex(newIndex: newValue, mainProxy: mainProxy)
            }
            .onChange(of: scrollOffset) { newValue in
                guard isScrolling else { return }
                updateSelectedValueBasedOnScroll(newOffset: newValue)
            }
            .gesture(
                    DragGesture().onChanged { _ in
                        isScrolling = true
                    }.onEnded { _ in
                        isScrolling = false
                    }
            )
        }
    }

    private func updateSelectedValueBasedOnScroll(newOffset: [Int: CGFloat]) {
        guard !hasToScroll else { return }
        let sortedOffsets = newOffset.sorted {
            abs($0.value - UIScreen.main.bounds.midY) <= abs($1.value - UIScreen.main.bounds.midY)
        }
        if let closestItem = sortedOffsets.first {
            if let sectionItem = sectionItems.first(where: { $0.id.rawValue == closestItem.key }) {
                selectedValue = sectionItem.id.rawValue
            }
        }
    }

    private func scrollToIndex(newIndex: Int, mainProxy: ScrollViewProxy) {
        if let index = sectionItems.firstIndex(where: { $0.id.rawValue == newIndex }) {
            let item = sectionItems[index]
            guard hasToScroll else { return }
            withAnimation(.easeInOut(duration: 0.4)) {
                mainProxy.scrollTo(item.id, anchor: .top)
            }
            isScrolling = false
            hasToScroll = false
        }
    }
}

