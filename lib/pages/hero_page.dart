import 'package:jaspr/jaspr.dart';
import 'package:jaspr_lucide/jaspr_lucide.dart' hide Component, Router, Target;
import 'package:jaspr_router/jaspr_router.dart';

import '../services/scroll_services.dart';

class Hero extends StatelessComponent {
  const Hero({super.key});

  @override
  Component build(BuildContext context) {
    return section(
      id: 'hero',
      classes: "min-h-screen flex items-center justify-center px-6 pt-20",
      [
        div(
          classes: "max-w-4xl mx-auto",
          [
            div(
              classes: "space-y-8 text-center md:text-left",
              [
                _HeroStatus(),
                _HeroHeadline(),
                _HeroActions(),
                _HeroMetaInfo(),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class _HeroStatus extends StatelessComponent {
  const _HeroStatus();

  @override
  Component build(BuildContext context) {
    return div(
      classes:
          "flex items-center justify-center md:justify-start space-x-2 text-sm text-gray-500 font-medium tracking-wider uppercase",
      [
        div(classes: "w-4 h-4 bg-green-500 rounded-full", []),
        span([text("Software Developer")]),
      ],
    );
  }
}

class _HeroHeadline extends StatelessComponent {
  const _HeroHeadline();

  @override
  Component build(BuildContext acontext) {
    return div(
      classes: "space-y-6",
      [
        h1(
          classes:
              "text-6xl md:text-8xl font-light text-gray-100 leading-none tracking-tight",
          [text("Luciano Mansilla")],
        ),
        p(
          classes:
              "text-xl md:text-2xl text-gray-600 max-w-3xl leading-relaxed font-light",
          [
            text(
              "Building performant, cross-platform applications with Flutter and Dart for Android, iOS, Windows, and Web.",
            ),
          ],
        ),
        p(
          classes: "text-lg text-gray-600 max-w-3xl leading-relaxed",
          [
            text(
              "Focused on delivering seamless user experiences through a single codebase. Experienced in modern UI/UX design, scalable architecture, and cross-platform optimization.",
            ),
          ],
        ),
      ],
    );
  }
}

class _HeroActions extends StatelessComponent {
  const _HeroActions();

  @override
  Component build(BuildContext context) {
    return div(
      classes: "flex flex-wrap gap-4 pt-8 justify-center md:justify-start",
      [
        button(
          events:
              events(onClick: () => ScrollService().scrollToSection('work')),
          classes:
              "group flex items-center justify-center gap-2 px-6 py-3 rounded-lg font-medium bg-blue-600 text-white transition-all duration-300 hover:bg-blue-700 border-2 border-transparent hover:border-blue-800",
          [
            Briefcase(height: 18.px, width: 18.px),
            span([text("View Work")]),
          ],
        ),
      ],
    );
  }
}

class _HeroMetaInfo extends StatelessComponent {
  const _HeroMetaInfo();

  @override
  Component build(BuildContext context) {
    return div(
      classes:
          "flex items-center justify-center md:justify-start space-x-6 pt-8",
      [
        div(classes: "flex items-center space-x-2 text-sm text-gray-600", [
          div(classes: "w-2 h-2 bg-green-500 rounded-full animate-pulse", []),
          span([text("Available for collaborations")]),
        ]),
        div(classes: "flex items-center space-x-2 text-sm text-gray-600", [
          MapPin(
            height: 14.px,
            width: 14.px,
          ),
          span([text("Santiago del Estero, Argentina")]),
        ]),
      ],
    );
  }
}
