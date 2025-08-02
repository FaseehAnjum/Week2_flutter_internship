# Week 2: Flutter Data Management & Persistent Storage

This Flutter project demonstrates two core concepts:

- State management using `setState`
- Local data persistence using `SharedPreferences`

It includes two mini-apps:

1. **Counter App** – Increments or decrements a counter and saves the value locally.
2. **To-Do List App** – Allows users to add/remove tasks with local storage.

---

##  Features

###  Counter App

- Displays an interactive counter.
- Uses `setState()` to update UI.
- Saves counter value using `SharedPreferences`.
- Loads saved counter value on app restart.

###  To-Do List App

- Add and remove to-do tasks.
- Displays all tasks in a scrollable `ListView`.
- Stores tasks locally using `SharedPreferences`.

---

## 🛠️ Getting Started

###  Prerequisites

- Flutter SDK (recommended: `>=3.10.0`)
- VS Code or Android Studio
- Emulator or physical device

###  Installation

1. Clone the repository or copy the code files.
2. Open the project in your Flutter editor.
3. Run the app using:

```bash
flutter pub get
flutter run
```

---

## Project Structure

```
lib/
│
├── main.dart             # Home screen with navigation
├── counter_page.dart     # Counter App
└── todo_page.dart        # To-Do List App
```

---

## Dependencies

Add this in `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  shared_preferences: ^2.2.2
  cupertino_icons: ^1.0.8
```



## Future Improvements

- Add editing of to-do tasks.
- Add date/time for each task.
- Use `Provider` or `Riverpod` for more scalable state management.
- Sync tasks with cloud (e.g., Firebase).

---

##  Author

**Muhammad Faseeh Anjum**  
Flutter Developer Intern  
Bachelor of Science in Computer Science
