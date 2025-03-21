import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:legend_cinema/Component/Provider/test_count.dart';

class Testcount extends ConsumerWidget {
  const Testcount({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int count = ref.watch(riverpodEasyLavel);
    return Text("Count it $count");
  }
}
