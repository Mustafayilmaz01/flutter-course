import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  FocusNode focusNodeTextfieldOne = FocusNode();
  FocusNode focusNodeTextfieldTwo = FocusNode();

  @override
  void dispose() {
    focusNodeTextfieldOne.dispose();
    focusNodeTextfieldTwo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              maxLength: 30,
              buildCounter: (context, {int? currentLength, bool? isFocused, int? maxLength}) {
                return AnimatedContainer(
                  duration: Duration(milliseconds: 100),
                  color: Colors.grey[100 * ((currentLength ?? 0) ~/ 3)],
                  height: 40,
                  width: 40,
                  child: Text('E-posta'),
                );
              },
              keyboardType: TextInputType.emailAddress,
              autofillHints: [AutofillHints.email],
              focusNode: focusNodeTextfieldOne,
              inputFormatters: [
                TextInputFormatter.withFunction((oldValue, newValue) {
                  if (newValue.text == "a") {
                    return oldValue;
                  }
                  return newValue;
                }),
              ],
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.mail),
                border: OutlineInputBorder(),
                labelText: 'Mail',
              ),
            ),
            const SizedBox(height: 20),
            TextField(focusNode: focusNodeTextfieldTwo),
          ],
        ),
      ),
    );
  }
}
