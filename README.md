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

| Tab Bar | Scroll-Aware Behavior |
|--------|------------------------|
| ![TabBarMenuView](https://user-images.githubusercontent.com/your-preview-gif-1.gif) | ![ScrollSync](https://user-images.githubusercontent.com/your-preview-gif-2.gif) |

> Add your own demo GIFs or screen recordings here

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
Or manually include the source files in your project.

📄 License
MIT License. Feel free to use and modify for personal or commercial projects.

👤 Author
Developed by Farrukh Rasool

💬 Feedback
Suggestions, bugs, or ideas? Feel free to open an issue!

---

Let me know if you'd like help customizing any section (e.g., adding GIFs or linking your GitHub repo correctly).
