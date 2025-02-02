# 🍽️ AI Food Suggestion  

This is a **Food Suggestion App** that uses **Generative AI** to provide personalized meal recommendations.

## 📽️ Demo  

 ![ai_food](https://github.com/user-attachments/assets/cc2c5553-287f-4206-b608-51e4d580d52d)


---
## 📌 Setup & Installation  

1. **Clone the repository:**  
  ```
 git clone https://github.com/berkeyilmaz1/ai_food.git
 ```
 
2.**Navigate to the project directory:**  
 ```
 cd ai_food
 ```
3.**Install dependencies:** 
 ```
flutter pub get
 ```
4.**Create the environment file::**  
 ```
assets/env/.env
 ```
Add the following content inside the .env file:
 ```
baseUrl="https://api.spoonacular.com/recipes/"
menuApi="yourapikey"
geminiApi="yourapikey"
 ```
5.**Generate the environment variables:** 
 ```
 flutter pub run build_runner build --delete-conflicting-outputs
 ```
6.**Run the application:**
 ```
flutter run
 ```
---
<details>
  <summary><h2>🔍🔍Please use this QR code for the prototyping phase.🔍🔍 (Click to expand)</h2></summary>

  <img src="https://github.com/user-attachments/assets/8a1f962f-c9b1-44aa-bdbe-fae2fb6b3f9d" alt="QR Code" width="300" height="300">

</details>


---

## 🚀 Features  

- **📷 QR Scanner:** Scan QR codes to get menus.  
- **🎭 Mood-Based Selection:** Choose your mood to get food recommendations that suit your emotions.  
- **🤖 AI-Powered Suggestions:** Get food recommendations selected by AI.
---

## 📂 Project Structure  

The project follows a modular architecture, organized as follows:  
 📦lib<br>
 ┣ 📂core<br>
 ┃ ┣ 📂extensions<br>
 ┃ ┣ 📂service<br>
 ┃ ┗ 📂utils<br>
 ┣ 📂features<br>
 ┃ ┣ 📂food_detail<br>
 ┃ ┃ ┣ 📂view<br>
 ┃ ┃ ┗ 📂widgets<br>
 ┃ ┣ 📂food_result<br>
 ┃ ┃ ┣ 📂view<br>
 ┃ ┃ ┗ 📂widgets<br>
 ┃ ┣ 📂home<br>
 ┃ ┃ ┣ 📂cubit<br>
 ┃ ┃ ┣ 📂view<br>
 ┃ ┃ ┃ ┣ 📂mixin<br>
 ┃ ┃ ┗ 📂widgets<br>
 ┃ ┗ 📂qr<br>
 ┃ ┃ ┗ 📂view<br>
 ┃ ┃ ┃ ┣ 📂mixin<br>
 ┣ 📂product<br>
 ┃ ┣ 📂initialize<br>
 ┃ ┃ ┣ 📂config<br>
 ┃ ┃ ┣ 📂enums<br>
 ┃ ┃ ┣ 📂main_app<br>
 ┃ ┃ ┗ 📂service<br>
 ┃ ┃ ┃ ┣ 📂models<br>
 ┃ ┣ 📂utils<br>
 ┃ ┃ ┗ 📂constants<br>
 ┃ ┗ 📂widgets<br>
 ┣ 📜locator.dart<br>
 ┗ 📜main.dart<br>
 
 ### 📌 **Folders & Their Purpose**  

- **`core/`** – Contains fundamental utilities, services, and extensions that are used across the project.  
- **`features/`** – Includes different modules of the app, each representing a specific feature.  
  - **`view/`** – Handles the UI components of the feature.  
  - **`cubit/`** – Manages state using the Cubit pattern.  
  - **`mixin/`** – Provides reusable logic to enhance the functionality of views.  
  - **`widgets/`** – Contains smaller, reusable UI components.  
- **`product/`** – Stores configuration files, enums, app initialization, and reusable product-level utilities.  
- **`locator.dart`** – Manages dependency injection using `get_it`.  
- **`main.dart`** – The entry point of the application.  

---

## 🛠️ Technologies & Libraries  

### 🤖 **AI Integration**  
- [`google_generative_ai`](https://pub.dev/packages/google_generative_ai) – Integrates Google's Gemini AI for food recommendations.  

### 🎯 **State Management**  
- [`flutter_bloc`](https://pub.dev/packages/flutter_bloc) – A powerful state management solution using the BLoC pattern.  

### 🔌 **Dependency Injection**  
- [`get_it`](https://pub.dev/packages/get_it) – A simple service locator for dependency injection.  

### 🌐 **Networking & API**  
- [`dio`](https://pub.dev/packages/dio) – A HTTP client for handling API requests.  

### 🔄 **Value Equality**  
- [`equatable`](https://pub.dev/packages/equatable) – Provides easy-to-use value equality comparison for Dart objects.  

### 📏 **Code Quality**  
- [`very_good_analysis`](https://pub.dev/packages/very_good_analysis) – Enforces strict linting rules for cleaner, maintainable code.  

### ⚙️ **Configuration Management**  
- [`envied`](https://pub.dev/packages/envied) – Manages environment variables securely.

### 📷 **QR Scanner**  
- [`mobile_scanner`](https://pub.dev/packages/mobile_scanner) – A QR code scanner.  
- [`qr_scanner_overlay`](https://pub.dev/packages/qr_scanner_overlay) – Provides an overlay for the QR scanner UI.  

### ⚡ **Build & Code Generation**  
- [`build_runner`](https://pub.dev/packages/build_runner) – A tool for generating boilerplate code.  
- [`envied_generator`](https://pub.dev/packages/envied_generator) – A tool for generating envied code.  



