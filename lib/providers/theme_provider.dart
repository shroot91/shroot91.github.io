import 'package:jaspr/jaspr.dart';
import 'package:jaspr_riverpod/jaspr_riverpod.dart';
import 'package:universal_web/web.dart' as web;

enum ThemeMode { light, dark }

final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeMode>((ref) {
  return ThemeNotifier();
});

class ThemeNotifier extends StateNotifier<ThemeMode> {
  ThemeNotifier() : super(ThemeMode.light);

  void toggle() {
    state = state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    _updateTheme();
  }

  void _updateTheme() {
    // Only run on client
    if (!kIsWeb) return;

    final element = web.document.documentElement;
    if (state == ThemeMode.dark) {
      element?.classList.add('dark');
    } else {
      element?.classList.remove('dark');
    }
  }
}
