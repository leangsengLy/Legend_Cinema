import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:legend_cinema/Component/Provider/test_count.dart';
import 'package:legend_cinema/Screen/more/TestCount.dart';

class More extends ConsumerWidget {
  const More({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("easylevel"),
            const Testcount(),
            const Text("More"),
            Text(ref.watch(riverpodEasyLavel).toString()),
            TextButton(
              onPressed: () {
                ref.read(riverpodEasyLavel.notifier).state++;
              },
              child: const Text("+"),
            ),
            TextButton(
              onPressed: () {
                ref.read(riverpodEasyLavel.notifier).state--;
              },
              child: const Text("-"),
            ),
            const SizedBox(
              height: 100,
            ),
            const Text("Hard with Object"),
            Text(ref.watch(riverpodHardLevel).counter.toString()),
            TextButton(
              onPressed: () {
                ref.read(riverpodHardLevel).addCounter(20);
              },
              child: const Text("+"),
            ),
            TextButton(
              onPressed: () {
                ref.read(riverpodHardLevel).subCounter(20);
              },
              child: const Text("-"),
            )
          ],
        ),
      ),
    );
  }
}
