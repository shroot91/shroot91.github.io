import 'package:jaspr/jaspr.dart';

class Footer extends StatelessComponent {
  const Footer({super.key});

  @override
  Component build(BuildContext context) {
    return footer(
      classes: "py-12 px-6 border-t border-gray-100",
      [
        div(
          classes: "max-w-6xl mx-auto",
          [
            div(
              classes: "flex flex-col md:flex-row justify-between items-center space-y-4 md:space-y-0",
              [
                div(classes: "text-gray-500 text-sm", [text("© 2025 Luciano Mansilla. All rights reserved.")]),
                div(
                  classes: "flex items-center space-x-6 text-sm text-gray-500",
                  [
                    span([text("Made with Jaspr")]),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
