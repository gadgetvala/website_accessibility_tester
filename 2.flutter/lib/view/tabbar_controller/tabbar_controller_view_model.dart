import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Tabs { first, second, third, four }
final tabControllerProvider = StateProvider<Tabs>((ref) => Tabs.first);
