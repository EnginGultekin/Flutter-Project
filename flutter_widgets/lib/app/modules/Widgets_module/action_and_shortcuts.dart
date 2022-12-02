import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ActionAndShortcuts extends StatelessWidget {
  const ActionAndShortcuts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Action Widget and Shortcuts'),
        centerTitle: true,
      ),
      body: CallbackShortcuts(),
    );
  }
}


class CallbackShortcuts extends StatelessWidget {
  const CallbackShortcuts({
  super.key,
  required this.bindings,
  required this.child,
  });

  final Map<ShortcutActivator, VoidCallback> bindings;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Focus(
      onKey: (node, event) {
        KeyEventResult result = KeyEventResult.ignored;
        // Activates all key bindings that match, returns handled if any handle it.
        for (final ShortcutActivator activator in bindings.keys) {
          if (activator.accepts(event, RawKeyboard.instance)) {
            bindings[activator]!.call();
            result = KeyEventResult.handled;
          }
        }
        return result;
      },
      child: child,
    );
  }
}