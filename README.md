# Bitly Mobile Deep Linking Example (iOS)

This project demonstrates how to implement [Bitly Mobile Deep Linking](https://dev.bitly.com/docs/deep-linking/) using Universal Links in a minimal iOS app.

It shows how to:
- Set up universal links using a Bitly custom domain
- Handle deep link navigation in-app
- Configure Bitly to route users into the app or fallback to a web/App Store page

## 🔧 Prerequisites

- A [Bitly account](https://bitly.com/) with mobile deep linking enabled
- A claimed **custom domain** (e.g., `b.yourdomain.com`)
- An [Apple Developer Program](https://developer.apple.com/programs/) membership
- Xcode 14+ and a physical iOS device for testing

## 🧪 Behavior

When a Bitly link like `https://b.yourdomain.com/abc123` is tapped:
- If the app is installed → it opens directly to a screen based on the deep link path
- If not → user is sent to the App Store or fallback webpage

## 🚀 How to Use

1. Clone the repo  
   ```bash
   git clone https://github.com/webbjordy/bitly-mobile-deeplink-example.git
