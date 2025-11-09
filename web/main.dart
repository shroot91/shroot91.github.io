// The entrypoint for the **client** environment.
//
// This file is compiled to javascript and executed in the browser.

// Client-specific jaspr import.
import 'package:jaspr/browser.dart';
import 'package:my_website/app.dart';
// Imports the [App] component.

void main() {
  // Attaches the [App] component to the <body> of the page.
  runApp(App());
}
