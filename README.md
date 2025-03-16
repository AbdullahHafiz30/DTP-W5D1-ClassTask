# MVVM SwiftUI Project

This project demonstrates how to build **Login** and **Sign-Up** screens using the **Model-View-ViewModel (MVVM)** architecture in SwiftUI, incorporating small animations, transitions, and custom styling. It includes:

1. **Clean SwiftUI Views**  
2. **ObservableObject-based ViewModels** for state management  
3. **Custom UI components** (buttons, text fields, etc.)  
4. **Social login buttons** with links to Google, Facebook, and Apple  

---

## Features

- **MVVM Structure**  
  - **ViewModels** own and publish state (`@Published` properties).  
  - **Views** bind to these `@Published` properties, ensuring real-time UI updates.
  
- **Login Screen**  
  - Fields for email and password, along with "Remember Me" toggle.  
  - Shows social login buttons that open external links.  
  - Success message on valid login (with sample validation logic).
  
- **Sign-Up Screen**  
  - Fields for full name, email, password, and confirm password.  
  - "Remember Me" toggle and social login buttons.  
  - Success message upon signing up (with sample validation logic).

- **Transitions & Animations**  
  - Basic animations on button presses (spring effect).  
  - `.transition(.slide)` for success messages.  

- **Custom UI Components**  
  - `CustomButton`: A reusable button with scale animation upon press.  
  - `CustomTF`: A reusable text field with label and styling.  
  - `CustomSF`: A reusable secure field.  
  - `SocialLoginButton`: Opens external links for social login.  

---

## Project Structure

A suggested structure (or similar) is:

MVVM ├── View 
     │ ├── ContentView.swift 
     │ ├── LoginView.swift 
     │ ├── SignUpView.swift 
     │ ├── CustomButton.swift 
     │ ├── CustomTF.swift 
     │ ├── CustomSF.swift 
     │ └── SocialLoginButton.swift 
     └── ViewModel 
     ├── LoginViewModel.swift 
     └── SignUpViewModel.swift


- **View** folder contains all the UI-related SwiftUI Views.
- **ViewModel** folder contains separate ViewModel classes for Login and Sign Up screens.

---

## Usage

1. **Clone or download** this repository.  
2. Open the `.xcodeproj` or `.xcworkspace` in **Xcode**.  
3. Make sure you have the **iOS Simulator** or a real device selected.  
4. **Run (⌘+R)** the project.  
5. **Explore** the Login and Sign Up flows by tapping each button on the main `ContentView`.

---

## How It Works

1. **ContentView**: The entry point. It presents two navigation links:
   - One to the **SignUpView**.
   - One to the **LogInView**.

2. **LogInView** & **SignUpView**:
   - Each is tied to its own `ViewModel`:
     - `LoginViewModel` for the login flow.
     - `SignUpViewModel` for the sign-up flow.
   - Text fields and secure fields are **bound** to the `@Published` properties in the ViewModel.
   - A custom button triggers the ViewModel’s **login** or **signUp** method, with simple sample validation.
   - An optional success text message is shown with a **slide transition** upon successful submission.

3. **Custom UI Components**:
   - **`CustomButton`**: Scales slightly when pressed (a small “spring” animation).  
   - **`CustomTF`** & **`CustomSF`**: Standard text fields and secure fields with labels, styling, and shadow.  
   - **`SocialLoginButton`**: Opens external URLs using `UIApplication.shared.open(_:)`.  

---

## Customization

- **UI Colors**: Colors are defined in your Assets catalog (e.g., `"BackGround"`, `"BackGround1"`, `"TextField"`, `"Color1"`, `"OtherColor"`).  
- **Images**: Replace `"Logo"`, `"Stretch"`, and `"Yoga"` with your own images if you wish.  
- **Validation**: In a real app, add more robust validation logic (e.g., checking password complexity, handling server errors, etc.).  
- **Navigation**: When login or sign-up is successful, you could navigate to the main app screen or show a different route.

---

## Contributing

1. **Fork** the repository.  
2. Create a **feature branch**: `git checkout -b feature/your-feature`.  
3. **Commit changes**: `git commit -m 'Add your feature'`.  
4. **Push** to the branch: `git push origin feature/your-feature`.  
5. Submit a **Pull Request**.

---

## License

This project is for learning purposes
---

Happy coding! If you have any questions or suggestions, feel free to open an issue or contact the project owner. Enjoy building your MVVM-powered SwiftUI login and sign-up flow!
