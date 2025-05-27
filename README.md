# 🧭 JumpLinksSwiftUI

A SwiftUI-based framework for creating **interactive, scroll-linked tab bar navigation**. This kit synchronizes a tab menu with scrollable sections — enabling smooth user experiences for content-heavy views like onboarding flows, dynamic forms, and settings pages.

---

## 🚀 Features

- 🎯 Scroll to specific sections via tab tap
- 🌀 Automatically highlights the tab based on scroll position
- 🔄 Fully SwiftUI-compatible
- 🪄 Clean separation of UI components for customization
- 🔧 State-driven with `@StateObject` for robust reactivity

---

## 📸 Preview

| Scroll-Aware Behavior |
|------------------------|
| ![ScrollSync](https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExMzRtY3ljMnViNnl6cXVseDd3c2NqY3V0N2ZzcDkwZWp6bTAwYzJ0biZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/rxreBE1Pm5i8Pq7pjT/giphy.gif) |

---

## 🧩 Components

- `TabBarMenuView`: The top navigation menu
- `TabBarItemView`: A customizable tab button
- `TabBarBodySectionView`: Wraps the target section view
- `TabBarBodySectionListView`: Scrollable container synced with the tab menu
- `ScrollViewState`: Holds state like `selectedValue`, `hasToScroll`, and `scrollOffset`

---

## 🛠️ Usage

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

📄 License
MIT License. Feel free to use and modify for personal or commercial projects.

👤 Author
Developed by Farrukh Rasool

💬 Feedback
Suggestions, bugs, or ideas? Feel free to open an issue!

---
