# JumpLinksSwiftUI

**JumpLinksSwiftUI** is a modular SwiftUI framework for building interactive, scroll-linked tab navigation experiences. It provides seamless synchronization between a top navigation tab bar and scrollable content sections, enabling intuitive user interaction in views with multiple dynamic content areas.

This framework is ideal for building content-heavy interfaces such as onboarding flows, forms, documentation pages, or settings views where users need to quickly jump between logically separated sections.

---

## Features

- Section-based navigation: Tap on a tab to scroll to the corresponding content section.
- Scroll tracking: Automatically updates the active tab based on the current scroll position.
- SwiftUI native: Built entirely with SwiftUI using best practices and reactive data management.
- Modular design: Clean separation of UI components for ease of maintenance and customization.
- Robust state management: Leverages `@StateObject` for reliable, responsive updates during scroll or tap interactions.

---

## Preview

| Scroll-Linked Tab Behavior |
|----------------------------|
| ![ScrollSync](https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExMzRtY3ljMnViNnl6cXVseDd3c2NqY3V0N2ZzcDkwZWp6bTAwYzJ0biZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/rxreBE1Pm5i8Pq7pjT/giphy.gif) |

---

## Components

- `TabBarMenuView`: The top navigation menu displaying tab options.
- `TabBarItemView`: A reusable and customizable tab button view.
- `TabBarBodySectionView`: A wrapper for each scrollable content section.
- `TabBarBodySectionListView`: The scrollable container that houses all the sections and interacts with the tab bar.
- `ScrollViewState`: An observable object that manages the currently selected tab, scroll trigger flags, and current scroll offset.

---

## Usage

```swift
import ScrollViewTargetBehaviourKit

struct MyView: View {
    @StateObject var scrollViewState = ScrollViewState()

    var body: some View {
        ScrollViewTargetBehaviour(scrollViewState: scrollViewState)
    }
}

```

📦 Installation
Add the package to your project via Swift Package Manager:

https://github.com/FarrukhRasool/ScrollViewTargetBehaviourKit.git

Or 

manually include the source files in your project.


MIT License. Feel free to use and modify for personal or commercial projects.

Developed by Farrukh Rasool

Suggestions, bugs, or ideas? Feel free to open an issue!

---
