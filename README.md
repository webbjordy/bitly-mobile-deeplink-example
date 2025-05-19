# Bitly Mobile Deep Linking Demo (iOS)

This iOS demo app shows how to use [Bitly](https://bitly.com/) short links and custom domains to trigger **universal link** behavior in a mobile app. It’s meant for developers who want to understand how Bitly deep linking works with Apple’s native system.

---

## 🔗 What This Project Demonstrates

- How to register a Bitly custom domain (`b.jordy.tech`) for mobile deep linking
- How to open your iOS app from a Bitly link like:  
  `https://b.jordy.tech/profile`
- How to route based on URL path (e.g., `/profile`, `/settings`)
- How to integrate Apple’s Universal Links via `Associated Domains`

---

## ⚙️ Setup Instructions

### 1. Clone This Repo

```bash
git clone https://github.com/webbjordy/bitly-mobile-deeplink-example.git
cd bitly-mobile-deeplink-example
open BitlyDemoApp.xcodeproj
```

### 2. Set Your Team + Bundle ID

In Xcode:
- Go to your app target → **Signing & Capabilities**
- Choose your Apple Developer team
- Replace the `Bundle Identifier` with something unique like:
  ```
  com.yourname.bitlydemo
  ```

### 3. Add Associated Domains

Under **Signing & Capabilities**:
- Add the **Associated Domains** entitlement
- Include:
  ```
  applinks:b.jordy.tech
  ```

> Bitly automatically hosts the required `apple-app-site-association` file for your domain.

---

## 📱 Run the App

- Connect a physical iPhone (Universal Links don’t work in simulator)
- Build and run the app
- Tap a Bitly link in Safari or Notes (e.g., `https://b.jordy.tech/profile`)
- The app should open and log the path to console

---

## 🔍 How Routing Works

The app parses the incoming URL and logs a route match based on path:

```swift
switch url.path {
  case "/profile": print("→ Profile Screen")
  case "/settings": print("→ Settings Screen")
  default: print("→ Home or fallback")
}
```

You can replace these logs with actual navigation logic.

---

## 📦 Bitlink Setup Example

To test routing, create a Bitlink in your Bitly account with:
- **Short link**: `https://b.jordy.tech/profile`
- **Destination URL**: Can be any valid HTTPS URL
- (Optional) Add deep link metadata if using Bitly’s API

---

## 🧪 Notes

- This project does **not** use custom URL schemes (e.g., `myapp://`) — only standard HTTPS Universal Links
- No content needs to be hosted on `b.jordy.tech` — Bitly handles domain verification
- This app is not meant for App Store distribution

---

## 🤝 License

MIT — use this for testing, demos, or as a starting point in production.
