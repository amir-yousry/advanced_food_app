# 🍔 Hungry Flutter App

<div align="center">

## ✨ A Modern Food Delivery Experience Built with Flutter

**Hungry App** is a modern and intuitive food delivery application built with **Flutter**, designed to provide users with a smooth and enjoyable food ordering experience.

The application focuses on clean layouts, delicious food presentation, intuitive navigation, reusable UI components, and a streamlined ordering and checkout flow.

![Flutter](https://img.shields.io/badge/Flutter-Framework-02569B?logo=flutter)
![Dart](https://img.shields.io/badge/Dart-Language-0175C2?logo=dart)
![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS-green)
![License](https://img.shields.io/badge/License-MIT-yellow)

</div>

---

# 📌 Overview

<p align="center">
  <img src="assets/screenshots/preview.jpg" alt="Hungry Flutter App">
</p>

**Hungry App** is a Flutter-based food delivery application that provides users with a complete food ordering journey — from discovering meals and viewing product details to adding items to the cart, completing checkout, and confirming a successful payment.

The application follows a modern and user-friendly design system with clean spacing, attractive food-focused layouts, intuitive interactions, and reusable components.

The project focuses on creating:

* 🍔 Modern food delivery UI
* 🎨 Clean and attractive design
* 🧩 Reusable Flutter components
* 📱 Responsive layouts
* 🛍️ Smooth food ordering experience
* 🛒 Simple and intuitive cart management
* 💳 Streamlined checkout and payment flow
* 👤 Complete authentication and profile experience
* ✨ Modern mobile e-commerce experience

---

# ✨ Features

## 🚀 Splash Screen

* Attractive application launch screen.
* Displays the Hungry App branding.
* Smooth transition to the main application.
* Clean and minimal visual presentation.

---

## 🏠 Home Screen

* Modern food delivery home interface.
* Browse available food and meals.
* Featured and popular food items.
* Attractive food cards and categories.
* Easy navigation throughout the application.
* Clean and intuitive user experience.

---

## 🍔 Product Details Screen

* Display detailed food information.
* Show product image and description.
* Display food price.
* Select product quantity.
* Add products directly to the cart.
* Clear and focused product presentation.

---

## 🛒 Cart Screen

* View all selected food items.
* Increase or decrease item quantities.
* Remove products from the cart.
* Display individual item prices.
* Calculate the cart subtotal.
* Continue directly to checkout.

---

## 💳 Checkout Screen

* Review the selected order.
* Display order summary.
* Review subtotal and total price.
* Manage checkout information.
* Select or review payment details.
* Complete the payment process.

---

## 🎉 Success Payment Screen

* Confirmation screen after successful payment.
* Clear order completion feedback.
* Display a successful payment state.
* Smooth transition after completing the order.
* Friendly and satisfying completion experience.

---

## 👤 Profile Screen

* Display user profile information.
* Manage personal account details.
* Access user-related options.
* Clean and organized profile interface.
* Easy navigation to account features.

---

## 🔐 Login Screen

* User authentication interface.
* Email and password fields.
* Clean login experience.
* Validation-ready form structure.
* Navigation to the signup screen.
* Simple and intuitive authentication flow.

---

## 📝 Signup Screen

* Create a new user account.
* Collect basic user information.
* Email and password registration fields.
* Clean and accessible registration form.
* Easy navigation back to login.
* Simple onboarding experience.

---

# 📱 Application Flow

The application follows a simple and intuitive food ordering flow:

```text
                 Splash Screen
                      │
                      ▼
                  Home Screen
                      │
                      ▼
             Product Details Screen
                      │
                      ▼
                  Cart Screen
                      │
                      ▼
                Checkout Screen
                      │
                      ▼
             Payment Success Screen


Authentication Flow

              Login Screen
                  │
                  ├───────────────┐
                  │               │
                  ▼               ▼
            Home Screen      Signup Screen
                                  │
                                  ▼
                              Home Screen


Profile Flow

              Home Screen
                  │
                  ▼
             Profile Screen
```

---

# 📸 Screenshots

## 🚀 Splash Screen

The application launch screen introducing the Hungry App brand before entering the main experience.

<p align="center">
  <img src="assets/screenshots/splash_screen.png" width="280">
</p>

---

## 🏠 Home Screen

The main food discovery interface where users can explore meals, categories, and featured products.

<p align="center">
  <img src="assets/screenshots/home_screen.png" width="280">
</p>

---

## 🍔 Product Details Screen

A detailed product interface where users can view meal information, select quantity, and add the product to their cart.

<p align="center">
  <img src="assets/screenshots/product_details_screen.png" width="280">
</p>

---

## 🛒 Cart Screen

A simple and intuitive cart interface for reviewing selected food items and managing quantities.

<p align="center">
  <img src="assets/screenshots/cart_screen.png" width="280">
</p>

---

## 💳 Checkout Screen

The checkout interface where users can review their order and complete the payment process.

<p align="center">
  <img src="assets/screenshots/checkout_screen.png" width="280">
</p>

---

## 🎉 Success Payment Screen

A confirmation screen displayed after successfully completing the payment process.

<p align="center">
  <img src="assets/screenshots/success_payment_screen.png" width="280">
</p>

---

## 👤 Profile Screen

The user profile interface for viewing and managing personal account information.

<p align="center">
  <img src="assets/screenshots/profile_screen.png" width="280">
</p>

---

## 🔐 Login Screen

A clean authentication interface allowing existing users to securely access their accounts.

<p align="center">
  <img src="assets/screenshots/login_screen.png" width="280">
</p>

---

## 📝 Signup Screen

A simple registration interface allowing new users to create an account.

<p align="center">
  <img src="assets/screenshots/signup_screen.png" width="280">
</p>

---

# 🏗️ Project Structure

```text
lib/
│
├── core/
│   ├── constants/
│   ├── helpers/
│   ├── network/
│   ├── theme/
│   ├── routes/
│   └── utils/
│
├── features/
│   ├── splash/
│   ├── home/
│   ├── product_details/
│   ├── cart/
│   ├── checkout/
│   ├── payment_success/
│   ├── profile/
│   ├── login/
│   └── signup/
│
├── shared/
│   ├── widgets/
│   └── components/
│
└── main.dart
```

---

# 🛠️ Technologies Used

| Technology          | Description                          |
| ------------------- | ------------------------------------ |
| **Flutter**         | Cross-platform application framework |
| **Dart**            | Programming language                 |
| **Material Design** | UI design foundation                 |
| **Flutter Widgets** | Reusable interface components        |

---

# 🎨 Design System

The application follows a modern, clean, and food-focused design system.

### 📏 4pt Grid System

The UI follows a consistent spacing system to maintain visual balance, alignment, and hierarchy throughout the application.

### 🎨 Color Style

The interface uses a vibrant and appetizing color palette designed to create a friendly and engaging food delivery experience.

### 🔤 Typography

The application uses clean and readable typography with clear hierarchy, balanced spacing, and appropriate font sizing.

### 🧩 Reusable Components

Reusable Flutter widgets and components are used throughout the application to maintain consistency, reduce code duplication, and simplify future development.

---

# 📱 Responsive Design

The application is designed with responsive layouts in mind.

* 📱 Mobile-friendly interface
* 📐 Flexible layouts
* 📏 Consistent spacing
* 🧩 Reusable responsive widgets
* 🔄 Adaptable UI components
* 📲 Optimized mobile experience

---

# 🔐 Authentication

Hungry App includes a dedicated authentication experience with:

* 🔑 Login
* 📝 Signup
* 📧 Email-based authentication UI
* 🔒 Password fields
* 👤 User profile
* 🔄 Smooth authentication navigation

---

# 🛒 Shopping Experience

The application provides a complete shopping journey:

```text
Discover Food
      │
      ▼
View Product Details
      │
      ▼
Select Quantity
      │
      ▼
Add To Cart
      │
      ▼
Review Cart
      │
      ▼
Checkout
      │
      ▼
Complete Payment
      │
      ▼
Payment Success
```

---

# 🚀 Installation & Running

## Requirements

Make sure you have the following installed:

* Flutter SDK
* Dart SDK
* Android Studio or VS Code
* Android Emulator or Physical Device
* Xcode for iOS development

---

## 📥 Clone Repository

```bash
git clone https://github.com/your-username/hungry-app.git
```

Navigate to the project:

```bash
cd hungry-app
```

Install dependencies:

```bash
flutter pub get
```

Run the application:

```bash
flutter run
```

---

# 🧪 Build

To create an Android APK:

```bash
flutter build apk
```

For a release build:

```bash
flutter build apk --release
```

To build for iOS:

```bash
flutter build ios --release
```

---

# 🤝 Contributing

Contributions are welcome!

To contribute:

1. Fork the repository.

2. Create a feature branch:

```bash
git checkout -b feature/your-feature
```

3. Make your changes.

4. Commit your changes:

```bash
git commit -m "feat: add your feature"
```

5. Push your branch:

```bash
git push origin feature/your-feature
```

6. Open a Pull Request.

---

# 📄 License

This project is licensed under the **MIT License**.

---

# 👨‍💻 Author

**Your Name**

Flutter Developer

GitHub: https://github.com/your-username

---

<div align="center">

⭐ **If you find this project useful, consider giving it a star!**

Made with ❤️ and Flutter

</div>
