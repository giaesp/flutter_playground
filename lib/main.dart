import 'package:flutter/material.dart';
import 'package:flutter_playground/ui/screens/responsive_grid_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MainApplication()));
}

class MainApplication extends ConsumerWidget {
  const MainApplication({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final String value = ref.watch(helloWorldProvider);
    return const MaterialApp(home: ResponsiveGridScreen());
  }
}
