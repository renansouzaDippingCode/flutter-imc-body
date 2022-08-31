<!-- # imc-body

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference. -->

> # IMC BODY

> ## The Project:

This app calculates the user's BMI and provides a table of BMI measurements.<br>
Application developed to improve and study flutter.

* Result:

![imagens-do-app](https://user-images.githubusercontent.com/61015332/187606720-51c71e44-972c-46c0-ab95-e2e2a4d85808.png)

> ## Features:

* MVC architecture;
* modular;
* modular for reactivity;
* Numeric keyboard to type in the app;
* launch icon;
* launch name;
* Test on "PersonModel";

> ## Arch:

    root
    └─ lib
    ....├─ app
    ........├─ app_module.dart
    ........└─ app_widget.dart
    ....├─ modules
    ........└─ core
    ............├─ themes
    ............├─ widgets
    ............└─ models
    ................└─ person_models.dart
    ........└─ home
    ............├─ controllers
    ................└─ home_controller.dart
    ............├─ pages
    ................└─ home_page.dart
    ............└─ home_module.dart
    ........└─ splash
    ............├─ controllers
    ................└─ splash_controller.dart
    ............├─ pages
    ................└─ splash_page.dart
    ............└─ splash_module.dart
    ....└─ main.dart

> ## Dependencies:

Flutter version: 2.5.2;<br>
Packages:

    flutter_modular: ^5.0.2
    flutter_native_splash: ^2.2.3+1
    flutter_launcher_icons: ^0.9.3

> ## Framework and Tools:

* figma;
* vs code;
* flutter & dart;
* android emulator;

## Licença:

    MIT License

    Copyright (c) 2022 Matheus Ferreira

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
