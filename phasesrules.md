Got it—let's shift gears completely to **Project Manager / Product Lead** mode.

Since your app is called **Jua** (not STEM AI) and you have junior Flutter developers writing the actual code, your role is to set non-negotiable quality standards, enforce coding guidelines, and manage a strict visual/functional handover workflow.

Here is your **Project Manager Specification & Handover Rulebook** to hand to your junior dev team for Screen 1.

---

### **1. Screen 1 Technical & UI Requirements (Jua App)**

Deliver this explicit checklist to your developers so they know exactly what to build:

* **Design System & Theme Tokens:**
* **Colors:** Primary Indigo/Purple (`#5C59E8`), Success Green (`#22C55E`), Warning Amber (`#F59E0B`), Neutral Surface (`#F9FAFB`). No hardcoded `Color(0xFF...)` values in screen widgets—everything must reference `Theme.of(context)`.
* **Typography:** Set up a central text theme (e.g., Inter or Plus Jakarta Sans). Font sizes and weights must be modularly structured.


* **Screen 1 Components (Landing / Home):**
* **Top Bar:** Menu action button (left), notification action button (right).
* **Hero Section:** Graduation cap branding logo, app title (**Jua**), headline, and descriptive subhead.
* **CTA Buttons:** Primary action button (*"Get My Exam Predictions"*), Secondary action button (*"Log In"*).
* **Social/Social Proof Card:** Student testimonial card with circular avatar, quote text, and author attribution.
* **Footer Block:** Clickable WhatsApp and Email contact triggers pointing to Jua domain (`hello@jua.co.ke` / WhatsApp link).



---

### **2. Code Quality & Project Structure Rules**

Make these rules mandatory before accepting any code pull requests (PRs):

* **Folder Architecture Standard:** The codebase must adhere to a strict **Feature-First Architecture** (`lib/features/auth_onboarding/`, `lib/core/theme/`, `lib/core/widgets/`). Unorganized single-folder projects will be rejected.
* **Zero Hardcoded Values:** All string literals must be managed in a dedicated constants/localization file. Padding, radii, and margin values must use shared spacing constants.
* **Linting & Warnings:** `flutter analyze` must return **0 errors and 0 warnings**. The standard `flutter_lints` rules must remain active and enforced.
* **Responsive Layouts:** The UI must be wrapped in scrollable containers (`SingleChildScrollView`) to prevent pixel overflows on smaller physical screens.
* **State Mocking:** Until the Go backend is ready, all buttons and navigation flows must execute mock callbacks cleanly (e.g., tapping *"Get My Exam Predictions"* must transition smoothly to an empty placeholder for Screen 2).

---

### **3. Phase 1 Milestone & APK Handover Protocol**

To ensure tight quality control, enforce this step-by-step sign-off process:

1. **Sprint Assignment:** Junior devs are given 48 hours (or your agreed timeframe) to build Screen 1 strictly as a UI mockup using dummy local data.
2. **Build Generation:** Devs must generate a release/debug **APK** (`flutter build apk --debug`) and upload it to your designated shared folder (Google Drive, Slack, or GitHub Releases).
3. **PM Visual & Functional Audit:** You install the APK on your device and review against the following acceptance criteria:
* **Visual Fidelity:** Does it match the design mockup pixel-for-pixel?
* **Responsiveness:** Does it render correctly without overflow warnings on different screen sizes?
* **Interactivity:** Do button ripples, state changes, and navigation triggers function smoothly?


4. **Approval Gate:**
* **Approved:** You give written sign-off for Phase 1. The team may proceed to Screen 2.
* **Rejected:** You issue a revision ticket listing exact UI/functional defects. Devs must fix and re-submit a new APK before moving forward.



---

### **Action Item for Your Devs**

Copy and paste this message directly to your team:

> *"Team, for Phase 1 we are building **Screen 1 (Landing Screen) for Jua**.
>  Follow our Feature-First folder architecture and design tokens (`#5C59E8` primary).
>  Use static mock data and ensure `flutter analyze` has zero warnings. Do not start work on API layers or Screen 2 yet.
> Once Screen 1 UI and basic navigation triggers are complete, build and submit the APK file to me for visual audit and sign-off."*
>
Here is your complete Project Manager Specification and Handover Roadmap for **Phase 2 through Phase 5**.

This document defines the clear rules, acceptance criteria, and APK sign-off gates your junior developers must meet before moving from one phase to the next.

---

### **Phase 2: Screen 2 (User Onboarding Form)**

**Scope:** Form layout, selection chips, dropdown state management, and input validation UI.

**Developer Acceptance Requirements:**

* **Form Controls:**
* University and Course inputs must use styled Flutter `DropdownButtonFormField` widgets matching design tokens.
* Year of study must use a `SegmentedButton` or `ChoiceChip` grid (1st–4th Year) allowing single selection with active purple highlights (`#5C59E8`).


* **Validation Logic (UI Level):**
* Primary button (**"Get Exam Predictions"**) must validate that all fields are selected. If incomplete, display clean inline error hints.


* **Mock State:** Upon successful form submission, trigger navigation to a placeholder for Screen 3.

**Handover Gate (Phase 2 Sign-Off):**

1. Devs submit Phase 2 APK.
2. **PM Audit:** Test form interaction, chip selection states, and dropdown behaviors on physical devices.
3. **Approval:** Written sign-off granted to begin Phase 3.

---

### **Phase 3: Screen 3 (Predictions Dashboard)**

**Scope:** Main dashboard UI, progress bars, mock dynamic lists, and bottom tab navigation shell.

**Developer Acceptance Requirements:**

* **Navigation Shell:** Implement a global `BottomNavigationBar` (Predictions, Topics, Past Papers, Account) with active tab state highlighted in purple.
* **Prediction Progress Indicators:**
* Build a reusable custom component for topic rows with color-coded progress bars: Green (`#22C55E`) for >80%, Yellow (`#F59E0B`) for 60%–79%.
* Display mock top topics (*Trees: 92%*, *Graphs: 85%*, *Sorting Algorithms: 78%*, *Hashing: 65%*, *Linked Lists: 60%*).


* **Interactivity:** Tapping any topic card (e.g., "Trees") must navigate to Screen 4 (Topic Details placeholder).

**Handover Gate (Phase 3 Sign-Off):**

1. Devs submit Phase 3 APK.
2. **PM Audit:** Verify bottom bar navigation switches views smoothly and progress bar percentage visual colors accurately match design specs.
3. **Approval:** Written sign-off granted to begin Phase 4.

---

### **Phase 4: Screens 4 & 5 (Topic Details & Subscription)**

**Scope:** Screen 4 detailed checklist UI and Screen 5 pricing tier paywall.

**Developer Acceptance Requirements:**

* **Screen 4 (Topic Details):**
* Top card displaying probability badge (*"92% chance"*).
* Checklist section listing key sub-topics using green checkmark leading icons.
* Highlighted tip callout card (*"Tip: 22 out of 24 past exams..."*).
* Action button (*"View Past Questions"*) linked to mock modal or notification.


* **Screen 5 (Subscription Paywall):**
* Side-by-side or stacked plan cards: **Premium Plan (KES 500/month)** with crown icon, full feature checklist, and primary CTA button; **Free Plan (KES 0/month)** with secondary outline button.
* Footer WhatsApp (`hello@jua.co.ke`) contact action links.



**Handover Gate (Phase 4 Sign-Off):**

1. Devs submit Phase 4 APK.
2. **PM Audit:** Perform complete end-to-end UI walk-through across all 5 screens (Screen 1 $\rightarrow$ Screen 5).
3. **Approval:** Full UI sign-off granted. Project advances to API integration.

---

### **Phase 5: Backend Integration (Connecting to Go Backend)**

**Scope:** Data models, Dio network layer, JWT authentication, and Go API wiring.

**Developer Acceptance Requirements:**

* **Networking Layer:** Set up `Dio` or `http` client in `core/network/` with base URL configured and automatic JWT auth header injection via interceptors.
* **Data Models & Parsing:** Map Go JSON API schemas to Dart data models cleanly (using `freezed` or `json_serializable`).
* **State Management:** Connect UI screens to BLoC or Riverpod providers. Replace all static mock lists with live API calls.
* **Error & Offline Handling:** Implement user-friendly error banners (snackbars/dialogs) for network failures or server errors (e.g., 401 Unauthorized, 500 Internal Server Error).

**Handover Gate (Final Production Sign-Off):**

1. Devs submit Production-Ready APK connected to staging/live Go API.
2. **PM Audit:** Test real data loading, login authentication flows, onboarding submissions, dynamic dashboard data from Go backend, and error handling when offline.
3. **Final Sign-Off:** APK approved for QA testing and deployment.

---

### **Copy-Paste Instructions for Your Developers**

> *"Team, here is our development schedule for Phase 2 onwards:*
> * **Phase 2:** Build Screen 2 (Onboarding Form) UI with dropdowns, selection chips, and form validation. Submit APK for review.
> * **Phase 3:** Build Screen 3 (Predictions Dashboard) UI with progress bars and 4-tab bottom navigation shell. Submit APK for review.
> * **Phase 4:** Build Screen 4 (Topic Details) and Screen 5 (Subscription Pricing) UIs. Complete full visual walk-through. Submit APK for review.
> * **Phase 5:** Wire up Dio network client and integrate live data endpoints from our Go backend engineer.
> 
> 
> *Do not write backend/API code during Phases 2–4. Each phase requires an APK submission and written approval before proceeding."*
