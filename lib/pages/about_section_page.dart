import 'package:jaspr/jaspr.dart';
import 'package:jaspr_lucide/jaspr_lucide.dart' hide Component;

class AboutSection extends StatelessComponent {
  const AboutSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(
      id: 'about',
      classes: "py-32 px-6 bg-gray-50",
      [
        div(
          classes: "max-w-6xl mx-auto",
          [
            div(
              classes: "grid grid-cols-1 lg:grid-cols-3 gap-16 items-start",
              [
                // Left side: Main content
                div(
                  classes: "lg:col-span-2 space-y-8",
                  [
                    div(
                      classes: "space-y-4",
                      [
                        h2(classes: "text-4xl md:text-5xl font-light text-gray-900", [text("About Me")]),
                        div(classes: "w-16 h-0.5 bg-gray-900", []),
                      ],
                    ),
                    p(
                      classes: "text-lg text-gray-600 leading-relaxed",
                      [
                        text(
                          "I'm a Dart and Java developer with over 3 years of experience building high-quality mobile applications. I focus on delivering efficient, reliable solutions that meet business goals and provide a solid user experience.",
                        ),
                      ],
                    ),
                    div(
                      classes: "space-y-4",
                      [
                        h3(classes: "text-2xl font-medium text-gray-800", [text("My Journey")]),
                        p(
                          classes: "text-lg text-gray-600 leading-relaxed",
                          [
                            text(
                              "I started my career developing JSF-based web applications and later specialized in Flutter for its efficiency and cross-platform capabilities.",
                            ),
                          ],
                        ),
                        p(
                          classes: "text-lg text-gray-600 leading-relaxed",
                          [
                            text(
                              "I’ve worked on a wide range of projects — from e-commerce platforms to productivity tools — for Android, iOS, Windows, and Web. My work emphasizes clean, maintainable code and consistent performance across platforms.",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),

                // Right side: Key Achievements
                div(
                  classes: "space-y-6 p-8 bg-white rounded-lg shadow-sm border border-gray-100",
                  [
                    h3(classes: "text-2xl font-medium text-gray-800", [text("Key Achievements")]),
                    ul(
                      classes: "space-y-3 text-gray-600",
                      [
                        li(classes: "flex items-start gap-3", [
                          BadgeCheck(
                            height: 20.px,
                            width: 20.px,
                            classes: "mt-1 flex-shrink-0",
                            styles: Styles(color: Color("#10B981")),
                          ),
                          span([text("Developed and deployed 7+ cross-platform applications")]),
                        ]),
                        li(classes: "flex items-start gap-3", [
                          BadgeCheck(
                            height: 20.px,
                            width: 20.px,
                            classes: "mt-1 flex-shrink-0",
                            styles: Styles(color: Color("#10B981")),
                          ),
                          span([text("Reached over 1K combined app downloads")]),
                        ]),
                        li(classes: "flex items-start gap-3", [
                          BadgeCheck(
                            height: 20.px,
                            width: 20.px,
                            classes: "mt-1 flex-shrink-0",
                            styles: Styles(color: Color("#10B981")),
                          ),
                          span([text("Proficient in state management (BLoC, Provider, setState)")]),
                        ]),
                        li(classes: "flex items-start gap-3", [
                          BadgeCheck(
                            height: 20.px,
                            width: 20.px,
                            classes: "mt-1 flex-shrink-0",
                            styles: Styles(color: Color("#10B981")),
                          ),
                          span([text("Experienced in backend and cloud services integration.")]),
                        ]),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            // Bottom section: Core principles
            div(
              classes: "mt-24 grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8 text-center",
              [
                _buildPrincipleCard(
                  icon: Code(height: 28.px, width: 28.px),
                  title: "Clean Code",
                  description: "Writing maintainable, scalable code following best practices and design patterns.",
                ),
                _buildPrincipleCard(
                  icon: Smartphone(height: 28.px, width: 28.px),
                  title: "Cross-Platform",
                  description: "Single codebase for both iOS and Android with native performance.",
                ),
                _buildPrincipleCard(
                  icon: Palette(height: 28.px, width: 28.px),
                  title: "Modern UI",
                  description: "Creating beautiful, responsive interfaces with Material Design and Cupertino.",
                ),
                _buildPrincipleCard(
                  icon: Zap(height: 28.px, width: 28.px),
                  title: "Performance",
                  description: "Optimizing apps for speed, efficiency, and excellent user experience.",
                ),
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
