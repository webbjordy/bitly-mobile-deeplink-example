# Bitly Universal Link Example (iOS)

This iOS demo app shows how to use [Bitly](https://bitly.com/) short links and custom domains to trigger **universal link** behavior in a mobile app. It’s meant for developers who want to understand how Bitly deep linking works with Apple’s native system.

---

## 🔗 What This Project Demonstrates

- How to register a Bitly custom domain (e.g. `b.yourdomain.com`) for mobile deep linking
- How to open your iOS app from a Bitly link like:  
  `https://b.yourdomain.com/profile`
- How to route based on URL path (e.g., `/profile`, `/settings`)
- How to integrate Apple’s Universal Links via `Associated Domains`

---

## ⚙️ Setup Instructions

### 1. Clone This Repo

```bash
git clone https://github.com/yourusername/BitlyUniversalLinkExample.git
cd BitlyUniversalLinkExample
```

### 2. Create an Xcode Project
This repo contains the Swift source files — you'll create a new Xcode project to import them:

- Open Xcode and create a new iOS App project named `BitlyUniversalLinkExample`
- Use **Swift** and **UIKit**
- Replace the generated `AppDelegate.swift`, `main.swift`, and `Info.plist` with the ones in this repo

### 3. Configure Signing and Team

In your new Xcode project:
- Go to the app target → **Signing & Capabilities**
- Set your Apple Developer **Team**
- Update the **Bundle Identifier** to something unique, e.g.:

```
com.yourcompany.bitlydemo
```

---

### 4. Add Associated Domains

Still under **Signing & Capabilities**:
- Click **+ Capability**
- Add **Associated Domains**
- Add your Bitly custom domain:
  ```
  applinks:b.yourdomain.com
  ```

> Replace `b.yourdomain.com` with your verified Bitly deep linking subdomain.
> Bitly will automatically serve the `apple-app-site-association` file from this domain.

---

## 📱 Run the App

- Connect a physical iPhone (Universal Links do not work in the simulator)
- Build and run the app from Xcode
- Tap a Bitly short link (e.g., `https://b.yourdomain.com/profile`) in Safari or Notes
- The app should launch and log routing info to the Xcode console

---

## 🔍 How Routing Works

The app inspects the incoming universal link path and logs a message accordingly:

```swift
switch url.path {
  case "/profile": print("→ Profile Screen")
  case "/settings": print("→ Settings Screen")
  default: print("→ Home or fallback")
}
```

You can swap these out with actual view controller navigation in your real app.

---

## 🔧 Bitlink Setup Example

In Bitly, create a new short link:
- Domain: `b.yourdomain.com`
- Long URL: Can be any valid URL (e.g., `https://example.com`)
- Final short link: `https://b.yourdomain.com/profile`

This triggers routing to the “Profile” section of your app.

---

## 🧪 Notes

- This demo uses **Universal Links**, not custom URL schemes
- Bitly must be configured with your custom domain
- No App Store publishing is required — use Xcode or TestFlight

---

## 🤝 License

MIT — use freely for testing, demos, or production bootstrapping.
