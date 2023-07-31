import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HeaderMenuBar extends HookConsumerWidget {
  const HeaderMenuBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ColoredBox(
      color: Colors.black87,
      child: Row(
        children: [
          ElevatedButton(
            child: const Text('あ'),
            onPressed: () {},
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
