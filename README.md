# ⌚ SwiftUI Watch App Demo

A watchOS app demo showing how to build and target Apple Watch in SwiftUI — including a Watch app target, a WatchWidget extension, and the multi-target Xcode setup that makes it work.

---

## 🤔 What this is

This project demonstrates how to set up a native watchOS app using SwiftUI. It includes a standalone Watch app target and a WatchWidget extension for watch face complications, showing how both live inside a single Xcode project. It's a clean starting point for anyone building their first Apple Watch experience.

## ✅ Why you'd use it

- **Standalone watchOS target** — runs independently on Apple Watch, no iPhone required
- **WatchWidget extension** — adds watch face complication support alongside the main app
- **SwiftUI on watchOS** — same declarative syntax as iOS, tuned for the smaller screen
- **Multi-target project structure** — see how Watch app + Widget targets coexist in one `.xcodeproj`
- **Minimal, extensible boilerplate** — easy starting point for any watchOS feature

## 📺 Watch on YouTube

[![Watch on YouTube](https://img.shields.io/badge/YouTube-Watch%20the%20Tutorial-red?style=for-the-badge&logo=youtube)](https://youtu.be/RfA2pNddunQ)

> This project was built for the [NoahDoesCoding YouTube channel](https://www.youtube.com/@noahdoescoding).

---

## 🚀 Getting Started

### 1. Clone the Repo
```bash
git clone https://github.com/NDCSwift/SwiftUIWatchAppDemo.git
cd SwiftUIWatchAppDemo
```

### 2. Open in Xcode
Double-click `SwiftUIWatchAppDemo.xcodeproj`.

### 3. Set Your Development Team
TARGET → Signing & Capabilities → Team (set for both Watch and Widget targets)

### 4. Update the Bundle Identifier
Change `com.example.MyApp` to a unique identifier — update all targets.

### 5. Select the Watch Scheme
Choose `SwiftUIWatchAppDemo Watch App` and target a paired Apple Watch simulator or device.

---

## 🛠️ Notes
- Running on a physical Watch requires iPhone pairing and Watch Developer Mode enabled.
- Code signing errors usually mean mismatched Team or Bundle ID across targets.

## 📦 Requirements
- Xcode 16+
- watchOS 10+

📺 [Watch the guide on YouTube](https://youtu.be/RfA2pNddunQ)
