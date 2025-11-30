import 'package:jaspr/jaspr.dart';
import 'package:jaspr_riverpod/jaspr_riverpod.dart';
import 'package:jaspr_router/jaspr_router.dart';
import 'package:my_website/pages/blogs.dart';
import 'package:my_website/pages/packages.dart';

import 'components/header.dart';
import 'pages/home.dart';

// The main component of your application.
class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    // This method is rerun every time the component is rebuilt.

    // Renders a <div class="main"> html element with children.
    return ProviderScope(
      child: div(classes: 'main', [
        Router(
          routes: [
            ShellRoute(
              builder: (context, state, child) => fragment([
                const Header(),
                child,
              ]),
              routes: [
                Route(
                  path: '/',
                  title: 'Home',
                  builder: (context, state) => const Home(),
                ),
              ],
            ),
            Route(
              path: '/blogs',
              title: 'Blogs',
              builder: (context, state) => Blogs(),
            ),
            Route(
              path: '/packages',
              title: 'Packages',
              builder: (context, state) => Packages(),
            ),
          ],
        ),
      ]),
    );
  }
}
