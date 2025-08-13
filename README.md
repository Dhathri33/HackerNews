# HackerNews (UIKit)

A lightweight iOS client for browsing Hacker News, built with **Swift + UIKit**.  
Fast startup, native feel, and a simple, readable UI.

## ✨ Features
- **Launch Screen** with system-brown background and white title
- **Custom App Icon**
- **Login/Welcome screen** with rounded buttons and bordered secondary action
- **Top Stories / New / Best** lists
- **Story detail** with comments
- Pull-to-refresh, loading states, and basic error handling
- Dark Mode + Dynamic Type friendly

## 🧱 Tech Stack
- **Language:** Swift (UIKit, Auto Layout)
- **Arch:** MVVM (thin VC) + Coordinators (optional)
- **Networking:** `URLSession`
- **Concurrency:** async/await
- **HN API:** `https://hacker-news.firebaseio.com/v0/` (JSON)

## 📦 Requirements
- Xcode 15+ (iOS 16+ target recommended)
- Swift 5.9+
- iOS Deployment Target: 16.0 (adjust as you like)

## 🚀 Getting Started
```bash
git clone https://github.com/<you>/HackerNews-UIKit.git
cd HackerNews-UIKit
open HackerNews.xcodeproj
