import 'package:jaspr/jaspr.dart';
import 'package:jaspr_lucide/jaspr_lucide.dart' hide Component;

class AcademicHistory extends StatelessComponent {
  const AcademicHistory({super.key});

  @override
  Component build(BuildContext context) {
    return section(
      id: 'academic',
      classes: "py-32 px-6 bg-gray-50",
      [
        div(
          classes: "max-w-6xl mx-auto space-y-8",
          [
            div(
              classes: "text-center space-y-4",
              [
                h2(classes: "text-4xl md:text-5xl font-light text-gray-900", [text("Academic History")]),
                div(classes: "w-16 h-0.5 bg-gray-900 mx-auto", []),
              ],
            ),

            // Technical Assistant - UNSE
            div(
              classes: "space-y-2 pb-6",
              [
                h3(classes: "text-2xl font-semibold text-gray-800", [text("Technical Assistant")]),
                p(classes: "text-gray-600", [text("National University of Santiago del Estero · Self-employed")]),
                p(classes: "text-gray-500 text-sm", [text("Jul. 2021 – Present · 4 yrs 5 mos")]),
                p(classes: "text-gray-500 text-sm", [text("Santiago del Estero, Argentina")]),
                p(classes: "text-gray-700", [text("Technological Assistant – Moodle 3.0 Virtual Platform for EIE - UNSE")]),
              ],
            ),

            // Software Developer - Modularsoft
            div(
              classes: "space-y-2 pb-6",
              [
                h3(classes: "text-2xl font-semibold text-gray-800", [text("Software Developer")]),
                p(classes: "text-gray-600", [text("Modularsoft · Part-time")]),
                p(classes: "text-gray-500 text-sm", [text("Oct. 2020 – Present · 5 yrs 2 mos")]),
                p(classes: "text-gray-500 text-sm", [text("Santiago del Estero, Argentina")]),
                p(classes: "text-gray-700", [text("Jr Developer – Flutter & Dart · Spring Boot · JSF · Primefaces · Java")]),
              ],
            ),

            // Teaching Assistant - UNSE
            div(
              classes: "space-y-2 pb-6",
              [
                h3(classes: "text-2xl font-semibold text-gray-800", [text("Teaching Assistant (2nd Category)")]),
                p(classes: "text-gray-600", [text("National University of Santiago del Estero")]),
                p(classes: "text-gray-500 text-sm", [text("Apr. 2019 – Apr. 2021 · 2 yrs 1 mo")]),
                p(classes: "text-gray-500 text-sm", [text("Santiago del Estero, Argentina")]),
                p(
                  classes: "text-gray-700",
                  [
                    text("Assistant professor for Programming Fundamentals & Programming I courses in the Computer Science degree program."),
                  ],
                ),
              ],
            ),

            // User Support Technician - Modularsoft
            div(
              classes: "space-y-2 pb-6",
              [
                h3(classes: "text-2xl font-semibold text-gray-800", [text("User Support Technician")]),
                p(classes: "text-gray-600", [text("Modularsoft · Full-time")]),
                p(classes: "text-gray-500 text-sm", [text("Jun. 2019 – Jun. 2020 · 1 yr 1 mo")]),
                p(classes: "text-gray-500 text-sm", [text("Santiago del Estero, Argentina")]),
                p(classes: "text-gray-700", [text("Technical support for the eGestión Commercial System · MySQL")]),
              ],
            ),

            // Operations Assistant - Idearte
            div(
              classes: "space-y-2",
              [
                h3(classes: "text-2xl font-semibold text-gray-800", [text("Operations Assistant")]),
                p(classes: "text-gray-600", [text("Idearte")]),
                p(classes: "text-gray-500 text-sm", [text("Apr. 2015 – Mar. 2020 · 5 yrs")]),
                p(classes: "text-gray-500 text-sm", [text("Santiago del Estero, Argentina")]),
                p(classes: "text-gray-700", [text("Customer service and sales")]),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Component _buildPrincipleCard({required Component icon, required String title, required String description}) {
    return div(
      classes: "space-y-3 p-6",
      [
        div(
          classes: "flex items-center justify-center w-16 h-16 mx-auto bg-gray-100 rounded-full text-gray-700",
          [icon],
        ),
        h4(classes: "text-xl font-semibold text-gray-800", [text(title)]),
        p(classes: "text-gray-500", [text(description)]),
      ],
    );
  }
}
