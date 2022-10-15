import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DialogComponent extends HookConsumerWidget {
  final String? id;
  final String? text;
  final String hintText;
  final String buttonText;
  final Function buttonFunc;

  const DialogComponent({
    Key? key,
    this.id,
    this.text,
    required this.hintText,
    required this.buttonText,
    required this.buttonFunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textController = useTextEditingController(text: text);

    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: textController,
              autofocus: true,
              decoration: InputDecoration(hintText: hintText),
            ),
            const SizedBox(
              height: 12.0,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor),
                onPressed: () {
                  id == null
                      ? buttonFunc(textController.text)
                      : buttonFunc(id, textController.text);
                  Navigator.of(context).pop();
                },
                child: Text(buttonText),
              ),
            )
          ],
        ),
      ),
    );
  }
}
