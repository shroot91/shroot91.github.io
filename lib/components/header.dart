import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'package:jaspr_riverpod/jaspr_riverpod.dart';
import '../constants/theme.dart';
import '../providers/theme_provider.dart';

class Header extends StatelessComponent {
  const Header({super.key});

  @override
  Component build(BuildContext context) {
    var activePath = context.url;
    final isDark = context.watch(themeProvider) == ThemeMode.dark;

    return header([
      nav([
        for (var route in [
          (label: 'Home', path: '/'),
          (label: 'About', path: '/about'),
        ])
          div(classes: activePath == route.path ? 'active' : null, [
            Link(to: route.path, child: text(route.label)),
          ]),
        div(classes: 'theme-toggle', [
          button(
            events: {'click': (e) => context.read(themeProvider.notifier).toggle()},
            classes: isDark ? 'dark' : '',
            [text(isDark ? '☀' : '☾')],
          ),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('header', [
      css('&').styles(
        display: Display.flex,
        padding: Padding.all(1.em),
        justifyContent: JustifyContent.center,
      ),
      css('nav', [
        css('&').styles(
          display: Display.flex,
          height: 3.em,
          radius: BorderRadius.all(Radius.circular(10.px)),
          overflow: Overflow.clip,
          justifyContent: JustifyContent.spaceBetween,
          backgroundColor: primaryColor,
        ),
        css('a', [
          css('&').styles(
            display: Display.flex,
            height: 100.percent,
            padding: Padding.symmetric(horizontal: 2.em),
            alignItems: AlignItems.center,
            color: Colors.white,
            fontWeight: FontWeight.w700,
            textDecoration: const TextDecoration(line: TextDecorationLine.none),
          ),
          css('&:hover').styles(
            backgroundColor: const Color('#0005'),
          ),
        ]),
        css('div.active', [
          css('&').styles(position: const Position.relative()),
          css('&::before').styles(
            content: '',
            display: Display.block,
            position: Position.absolute(bottom: 0.5.em, left: 20.px, right: 20.px),
            height: 2.px,
            radius: BorderRadius.circular(1.px),
            backgroundColor: Colors.white,
          ),
        ]),
      ]),
      css('div.theme-toggle', [
        css('&').styles(
          display: Display.flex,
          alignItems: AlignItems.center,
          padding: Padding.symmetric(horizontal: 1.em),
        ),
        css('button', [
          css('&').styles(
            cursor: Cursor.pointer,
            backgroundColor: Colors.transparent,
            border: Border.unset,
            color: Colors.white,
            fontSize: 1.5.em,
            padding: Padding.all(0.2.em),
            transition: Transition('transform', duration: 300, curve: Curve.easeOut),
          ),
          css('&:hover').styles(
            transform: Transform.scale(1.1),
          ),
        ]),
      ]),
    ]),
  ];
}
