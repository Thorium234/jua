

### **Screen 1: Landing / Home Screen**

* **App Bar Top Row:** Hamburger menu icon (`IconButton`) on the left, notification bell (`IconButton`) on the right.
* **Hero Section:**
* Graduation cap logo & **Jua** title header.
* Headline: *"Know What to Study Before Your Next Exam"* (Large bold typography).
* Subhead: *"Get AI-powered exam predictions based on past questions from your school and course."*


* **Action Buttons:**
* Primary Action (`ElevatedButton` / Purple): **"Get My Exam Predictions"**.
* Secondary Action (`OutlinedButton`): **"Log In"**.


* **Testimonial Card:**
* Circular avatar (`CircleAvatar`) featuring a student image.
* Quote text: *'"I focused on the predicted topics and passed my Calculus exam without spending weeks revising everything."'*
* Attribution: *"— Brian, 2nd Year Engineering"*.


* **Footer Links:** Row containing contact options:
* WhatsApp icon + *"WhatsApp Us"* button.
* Email icon + *"hello@jua.co.ke"* contact link.



---

### **Screen 2: User Onboarding / Details Form**

* **Top Bar:** Back arrow button (`IconButton`).
* **Header:**
* Title: **"Tell us about you"**.
* Subtitle: *"This helps us give you accurate exam predictions"*.


* **Form Inputs:**
* **University Field:** Dropdown menu (`DropdownButtonFormField`), pre-filled with *"University of Nairobi"*.
* **Course Field:** Dropdown menu (`DropdownButtonFormField`), pre-filled with *"Bachelor of Science in Computer Science"*.
* **Year of Study Selection:** 2x2 grid of selectable chip buttons (`ChoiceChip` / `SegmentedButton`):
* `1st Year` (Unselected)
* `2nd Year` (Selected - Active purple background)
* `3rd Year` (Unselected)
* `4th Year` (Unselected)




* **Bottom Action:** Primary full-width button: **"Get Exam Predictions"**.

---

### **Screen 3: Predictions Dashboard (Main Screen)**

* **Top Bar:** Back arrow button, refresh/sync button (`IconButton`).
* **Screen Header:**
* Title: **"Predictions for Data Structures"**.
* Subtitle: *"2nd Year • University of Nairobi"*.


* **Hero Visual:** Crystal ball illustration/icon centered above text: *"Here are the topics most likely to be tested in your next exam"*.
* **Top Predicted Topics List:**
* Header: **TOP PREDICTED TOPICS**
* List of progress indicators (`LinearProgressIndicator` + `Percent` values):
1. **Trees:** `92%` (Green bar)
2. **Graphs:** `85%` (Green bar)
3. **Sorting Algorithms:** `78%` (Green-Yellow bar)
4. **Hashing:** `65%` (Yellow bar)
5. **Linked Lists:** `60%` (Yellow-Orange bar)




* **Info Banner:** Lightweight container text: *"These predictions are based on analysis of 8 past exams from your school."*
* **Bottom Navigation Bar (`BottomNavigationBar`):** 4 tabs:
* `Predictions` (Active tab)
* `Topics`
* `Past Papers`
* `Account`



---

### **Screen 4: Topic Details View**

* **Top Bar:** Back arrow button, bookmark icon (`IconButton`).
* **Header Section:**
* Title: **"Topic Details"** (Centered app bar).
* Topic Name: **"Trees"** (Large bold header).
* Probability Badge: Green chip displaying **"92% chance"**.


* **Key Areas Checklist:**
* Header: *"Focus on these key areas"*
* Checkmark List (`ListView` / `ListTile` with green check icons):
* `✓ Tree Traversals (Inorder, Preorder, Postorder)`
* `✓ Binary Search Trees`
* `✓ Heap Trees`
* `✓ Tree Implementations`




* **Tip Callout Card:** Light purple highlighted box containing:
* *"Tip: 22 out of 24 past exams had questions from this topic."*


* **Past Questions Card:**
* Section title: **"Past Questions"**
* Subtitle: *"See questions from past exams on this topic."*
* Action button: **"View Past Questions"** (`OutlinedButton`).


* **Bottom Navigation Bar:** Retains identical 4-tab bottom navigation (`Predictions` active).

---

### **Screen 5: Subscription / Paywall Screen**

* **Top Bar:** Back arrow button (`IconButton`).
* **Screen Header:** **"Subscription"**.
* **Premium Plan Card (Highlighted / Featured):**
* Top Icon: Crown icon inside a purple header block.
* Title: **"Premium Plan"**
* Subtitle: *"Get accurate predictions for all your courses and past papers."*
* Pricing: **"KES 500 / month"**
* Feature Checklist (Checkmarks):
* `✓ Exam predictions for all your courses`
* `✓ Access to past questions`
* `✓ Topic breakdown & probability`
* `✓ Study tips & recommendations`
* `✓ Cancel anytime`


* CTA Button: **"Get Premium"** (Full-width purple button).


* **Free Plan Card (Secondary):**
* Title: **"Free Plan"**
* Subtitle: *"Get predictions for one course."*
* Pricing: **"KES 0 / month"**
* CTA Button: **"Continue with Free"** (`OutlinedButton`).


* **Support Footer:** *"Need help? WhatsApp or Email us"* with inline WhatsApp and Email links (`WhatsApp Us` / `hello@jua.co.ke`).

---

### **App-Wide Color Palette & Theme Tokens**

* **Primary Accent:** Deep Indigo / Purple (`#5C59E8` or similar)
* **Secondary/Status Colors:**
* High Probability / Success: Green (`#22C55E`)
* Medium-High Probability: Light Green / Lime (`#84CC16`)
* Medium Probability: Yellow / Amber (`#F59E0B`)


* **Backgrounds:** Clean White (`#FFFFFF`) / Light Grey Cards (`#F9FAFB` or `#F3F4F6`)
* **Typography:** Modern Sans-Serif (e.g., *Inter* or *Plus Jakarta Sans*)
