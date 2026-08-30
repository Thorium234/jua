
---

### **Phase 1: Build Screen 1 UI (Landing Screen)**

#### **Step 1: Set Up Design System Tokens**

Configure the foundational styles in your theme folder to match the UI specs.

* Define primary indigo/purple (`#5C59E8`), background white (`#FFFFFF`), surface greys (`#F9FAFB`), and text colors in `lib/app/theme/app_colors.dart`.
* Set up baseline typography (bold headers, body text styles) in `lib/app/theme/app_typography.dart`.

#### **Step 2: Build Reusable Atomic UI Components**

Create the shared UI widgets in `lib/core/widgets/` so Screen 1 stays clean and modular:

* **`CustomButton`**: A reusable button widget supporting both filled (`ElevatedButton`) and outlined (`OutlinedButton`) variants with custom padding and rounded corners.
* **`SocialLinkButton`**: A lightweight text-with-icon button for WhatsApp and Email links.

#### **Step 3: Construct Screen 1 Layout Scaffold**

Create `lib/features/auth_onboarding/presentation/screens/landing_screen.dart` with a scrollable wrapper (`SingleChildScrollView`) to prevent bottom overflow across screen sizes:

* **Top App Bar:** Implement a custom top bar containing the menu `IconButton` on the left and notification bell `IconButton` on the right.
* **Hero Section:** Add the graduation cap logo, **jua** branding, bold headline (*"Know What to Study Before Your Next Exam"*), and body text.
* **Call-To-Action Block:** Stack the primary button (**"Get My Exam Predictions"**) and secondary button (**"Log In"**).
* **Testimonial Card:** Create a `Card` or `Container` with rounded corners containing a `CircleAvatar` image, quote, and student metadata (*"— Brian, 2nd Year Engineering"*).
* **Footer Block:** Place the WhatsApp and Email contact options side-by-side in a `Row`.

#### **Step 4: Mock Data & UI Verification**

* Hardcode static string constants for the header text, subtext, and testimonial content inside a temporary mock file or directly inside the widget.
* Hook up basic navigation callbacks:
* Tapping **"Get My Exam Predictions"** triggers a navigation push to `OnboardingFormScreen` (Screen 2 placeholder).
* Tapping **"Log In"** prints a debug log or shows a temporary snackbar.


* Run the app on an emulator/device to verify layout responsiveness, text wrapping, and button touch targets.

---

### **Next Steps Overview**

| Phase | Target Screen / Module | Key Focus Area |
| --- | --- | --- |
| **Phase 1** (Current) | **Screen 1: Landing Screen** | Pixel-perfect UI layout, design tokens, mock navigation |
| **Phase 2** | **Screen 2: Details Form** | Form fields, dropdowns, selection chips, input validation |
| **Phase 3** | **Screen 3: Predictions Dashboard** | Custom progress bars, lists, tabbed navigation shell |
| **Phase 4** | **Screen 4 & Screen 5** | Topic detail view, checklist components, pricing card UI |
| **Phase 5** | **API Integration Layer** | Connect Go backend endpoints, Dio client, state management |
