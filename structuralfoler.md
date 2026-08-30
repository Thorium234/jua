Here is a production-ready, feature-first Flutter folder architecture designed to integrate cleanly with a REST/gRPC Go backend API.

This structure follows **Clean Architecture principles using BLoC/Riverpod** state management patterns, keeping API contracts, models, and UI screens completely decoupled.

---

### **Project Directory Structure**

```text
lib/
│
├── main.dart                   # Entry point (initializes services, state observers)
├── app/                        # Root application setup
│   ├── app.dart                # MaterialApp configuration, router binding
│   ├── routes/                 # Navigation setup
│   │   ├── app_router.dart     # GoRouter / AutoRoute definition
│   │   └── route_names.dart    # Route path constants
│   └── theme/                  # Design system tokens
│       ├── app_colors.dart     # Primary purple (#5C59E8), status greens/yellows
│       ├── app_typography.dart # Font styles and text themes
│       └── app_theme.dart      # ThemeData configuration
│
├── core/                       # Shared modules across all features
│   ├── constants/              # Global app constants
│   │   ├── api_endpoints.dart  # Go API routes (/v1/predictions, /v1/auth)
│   │   └── storage_keys.dart   # Secure storage & key constants
│   ├── error/                  # Error handling & exceptions
│   │   ├── exceptions.dart     # ServerException, NetworkException
│   │   └── failures.dart       # Failure mappings for UI feedback
│   ├── network/                # HTTP Client / API Connection layer
│   │   ├── api_client.dart     # Dio / http wrapper (base URLs, timeouts)
│   │   ├── interceptors.dart # JWT Auth header injector, retry handlers
│   │   └── network_info.dart  # Connection status checking
│   ├── utils/                  # Global utilities
│   │   ├── formatters.dart     # KES currency formatting, date helpers
│   │   └── validators.dart     # Form input validation rules
│   └── widgets/                # Reusable UI components
│       ├── custom_button.dart  # Primary (filled) & secondary (outlined) buttons
│       ├── progress_bar.dart   # Probability bar indicator for topics
│       └── custom_textfield.dart
│
├── features/                   # Business domain modules (Feature-First Structure)
│   │
│   ├── auth_onboarding/        # Feature 1: Landing, Login & Details Form
│   │   ├── data/
│   │   │   ├── datasources/    # Remote API calls via Core ApiClient
│   │   │   │   └── auth_remote_data_source.dart
│   │   │   ├── models/         # JSON serialization (from/to Go JSON response)
│   │   │   │   ├── user_model.dart
│   │   │   │   └── onboarding_request_model.dart
│   │   │   └── repositories/   # Data fetching implementation
│   │   │       └── auth_repository_impl.dart
│   │   ├── domain/             # Business logic layer
│   │   │   ├── entities/       # Plain Dart user/onboarding objects
│   │   │   ├── repositories/   # Repository interfaces (Contracts)
│   │   │   └── usecases/       # SaveUserOnboarding, LoginUser
│   │   └── presentation/       # UI & State
│   │       ├── state/          # State management (BLoC / Riverpod providers)
│   │       └── screens/
│   │           ├── landing_screen.dart
│   │           └── onboarding_form_screen.dart
│   │
│   ├── predictions/            # Feature 2: Dashboard & Topic Detail Views
│   │   ├── data/
│   │   │   ├── datasources/
│   │   │   │   └── predictions_remote_data_source.dart
│   │   │   ├── models/
│   │   │   │   ├── topic_prediction_model.dart
│   │   │   │   └── past_question_model.dart
│   │   │   └── repositories/
│   │   │       └── predictions_repository_impl.dart
│   │   ├── domain/
│   │   │   ├── entities/
│   │   │   │   ├── topic_prediction.dart
│   │   │   │   └── past_question.dart
│   │   │   ├── repositories/
│   │   │   └── usecases/       # GetCoursePredictions, GetTopicDetails
│   │   └── presentation/
│   │       ├── state/
│   │       ├── screens/
│   │       │   ├── dashboard_screen.dart
│   │       │   └── topic_details_screen.dart
│   │       └── widgets/        # Feature-specific components
│   │           ├── topic_progress_tile.dart
│   │           └── tip_callout_card.dart
│   │
│   └── subscription/           # Feature 3: Pricing & M-Pesa Integration
│       ├── data/
│       │   ├── datasources/
│       │   │   └── subscription_remote_data_source.dart
│       │   ├── models/
│       │   │   └── plan_model.dart
│       │   └── repositories/
│       │       └── subscription_repository_impl.dart
│       ├── domain/
│       │   ├── entities/
│       │   ├── repositories/
│       │   └── usecases/       # InitiateMpesaPayment, CheckSubscriptionStatus
│       └── presentation/
│           ├── state/
│           └── screens/
│               └── subscription_screen.dart
│
└── shared/                     # Global App Shell Components
    └── navigation/
        └── main_scaffold.dart  # Shared BottomNavigationBar wrapper for tabs

```

---

### **How Layer Responsibilities Work With Your Go API**

1. **`core/network/`**:
* Setup your `Dio` or HTTP client with base URL pointing to the Go backend (`[https://api.stemai.co.ke/v1](https://api.stemai.co.ke/v1)`).
* Attach `interceptors.dart` to automatically append `Authorization: Bearer <JWT>` header on requests after authentication.


2. **`data/models/`**:
* Contains exact JSON mapping for requests/responses coming from Go models (using `json_serializable` or `freezed`).
* Example: Converts Go's JSON response `{"topic_name": "Trees", "probability": 0.92}` into Dart classes.


3. **`data/datasources/`**:
* Holds the direct HTTP/API call logic targeting endpoints defined in `core/constants/api_endpoints.dart`.


4. **`domain/`**:
* Keeps UI logic completely agnostic of how backend data is served. If your backend engineer updates the Go server endpoint paths or structure, you only adjust the `data/` layer without breaking UI code.


5. **`presentation/screens/`**:
* Represents the 5 screens analyzed earlier (`landing_screen`, `onboarding_form_screen`, `dashboard_screen`, `topic_details_screen`, and `subscription_screen`).
