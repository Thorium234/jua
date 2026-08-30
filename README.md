Here is a comprehensive `README.md` file designed for the **Jua** mobile repository. It lays out the project overview, tech stack, architecture rules, setup instructions, and the phased delivery workflow for your junior developers.

---

```markdown
# Jua Mobile App 🚀

**Jua** is a Flutter-based mobile application designed to provide AI-powered exam predictions, topic breakdowns, and study insights for university students based on past examination papers and course structures.

This repository contains the mobile frontend application built with Flutter, which communicates with a Go (Golang) backend API.

---

## 🛠 Tech Stack & Tools

* **Framework:** Flutter (3.x / Dart 3.x)
* **Architecture:** Feature-First Clean Architecture
* **State Management:** BLoC / Riverpod
* **Networking:** Dio (HTTP Client with Interceptors)
* **Design System:** Custom Material Theme Tokens

---

## 📁 Project Architecture & Directory Structure

The project follows a **Feature-First Architecture** to ensure modularity, clear separation of concerns, and easy maintenance.

```text
lib/
├── main.dart                   # Application entry point
├── app/                        # Global app setup (Theme, Router, Global Providers)
│   ├── app.dart
│   ├── routes/                 # Navigation setup (GoRouter)
│   └── theme/                  # Design system tokens (AppColors, AppTypography, AppTheme)
│
├── core/                       # Shared utility modules across features
│   ├── constants/              # Global API routes & storage keys
│   ├── error/                  # Failure mappings & exception models
│   ├── network/                # Dio client, JWT interceptors, connection info
│   ├── utils/                  # Formatters & validation functions
│   └── widgets/                # Shared atomic widgets (CustomButton, Inputs)
│
├── features/                   # Independent business domain modules
│   ├── auth_onboarding/        # Landing, Login & User Setup
│   ├── predictions/            # Predictions Dashboard & Topic Details
│   └── subscription/           # Paywall & Plan Tier UI
│
└── shared/                     # Global shell wrappers
    └── navigation/             # Main scaffold with 4-tab BottomNavigationBar

```

### Core Architecture Rules for Developers

1. **Zero Hardcoded Colors or Fonts:** Always use `Theme.of(context)` or reference tokens defined in `lib/app/theme/`.
2. **Separation of Layers:** UI components (`presentation/`) must never directly invoke HTTP requests. All remote data calls must route through the `data/` and `domain/` layers.
3. **Clean Code Quality:** Running `flutter analyze` must yield **0 errors and 0 warnings**.

---

## 🎨 Theme & Design Specs

* **Primary Color:** Indigo / Purple (`#5C59E8`)
* **Status Colors:**
* High Probability (>80%): Success Green (`#22C55E`)
* Medium Probability (60%–79%): Amber / Yellow (`#F59E0B`)


* **Background:** Pure White (`#FFFFFF`) / Surface Neutral (`#F9FAFB`)
* **Typography:** Modern Sans-Serif (*Inter* / *Plus Jakarta Sans*)

---

## 🚀 Getting Started

### Prerequisites

* Flutter SDK (Latest Stable Channel)
* Android Studio / VS Code with Flutter extensions
* Android Emulator or physical test device

### Installation & Setup

1. **Clone the repository:**
```bash
git clone https://github.com/Thorium234/jua.git
cd jua

```


2. **Install dependencies:**
```bash
flutter pub get

```


3. **Run build runner (if generated files/models are missing):**
```bash
dart run build_runner build --delete-conflicting-outputs

```


4. **Launch the application:**
```bash
flutter run

```



---

## 📅 Development Roadmap & Phased Handover

Work is delivered in strict sequential phases. Each phase requires an **APK submission and PM sign-off** before moving to the next.

| Phase | Scope | Deliverables | Status |
| --- | --- | --- | --- |
| **Phase 1** | Screen 1: Landing / Home UI | Hero section, branding, testimonial card, footers, mock navigation | 🟡 In Progress |
| **Phase 2** | Screen 2: User Onboarding Form | Dropdown inputs, year choice chips, form validation logic | ⏳ Pending |
| **Phase 3** | Screen 3: Predictions Dashboard | Progress bar topic indicators, 4-tab bottom navigation shell | ⏳ Pending |
| **Phase 4** | Screens 4 & 5: Topic Details & Subscription | Topic checklist, probability badge, pricing paywall UI | ⏳ Pending |
| **Phase 5** | Go Backend Integration | Dio network layer, JWT authentication, live backend API wiring | ⏳ Pending |

---

## 📦 APK Build & Handover Protocol (For Devs)

When completing a development phase:

1. **Verify Quality:** Run `flutter analyze` and ensure no lint errors exist.
2. **Generate APK:** Build a test binary:
```bash
flutter build apk --debug

```


3. **Submit for Review:** Upload the generated `.apk` file located at `build/app/outputs/flutter-apk/app-debug.apk` to the project shared drive.
4. **Await Approval:** Do not proceed to the next phase until written PM sign-off is granted.

---

## ✉️ Support & Contact

For questions regarding API contracts or UI specifications, reach out via:

* **Email:** `hello@jua.co.ke`

```

```
