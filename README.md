# 💰 Flutter Money Transfer App

A simple Flutter screen that allows a user to:

- View their name and balance inside a styled `Card` widget.
- Enter an amount to transfer.
- Validate the amount against their available balance.
- Simulate a money transfer and print the result to the console.

---

## ✨ Features

- Clean and modular Dart code
- Real-time input validation
- Styled UI with Material design widgets
- Snackbar feedback on successful transfer

---

## 📁 File Structure

```
lib/
├── user_balance_screen.dart   # Main UI screen
└── main.dart                  # App entry point
```

---

## 🧪 Usage

1. Clone the repository or copy the files into your Flutter project.
2. Run the app using:
```bash
flutter run
```
3. You will see a screen showing:
   - User's name
   - Current balance
   - Input for amount
   - Send Money button

---

## 🧱 Code Overview

### Constructor
```dart
UserBalanceScreen({
  required this.name,
  required this.balance,
})
```

### Main Widgets
- `TextField` for amount entry
- `ElevatedButton` triggers `_sendMoney()`
- `SnackBar` displays success feedback

### Validation Logic
- Disallows empty, non-numeric, or negative inputs
- Checks if amount exceeds balance

### Example Output (Console)
```
Sending $50.00 to Jane Doe
```

---

## 🔧 Dependencies
This example uses only **Flutter SDK** components. No external packages required.

---


---

## 👨‍💻 Author
**Wakil Abubakar**  
Flutter Developer

---

## 📄 License
This project is open-source and available under the [MIT License](LICENSE).



# kobi_finance

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
