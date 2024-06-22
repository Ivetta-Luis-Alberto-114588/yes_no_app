import 'package:flutter/material.dart';

class MessageFieldBoxl extends StatelessWidget {
  const MessageFieldBoxl({super.key});

  @override
  Widget build(BuildContext context) {

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color:  Colors.transparent),
      borderRadius: BorderRadius.circular(40)
    );


    final inputDecoration = InputDecoration(
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {
            print("text value");
          },
          )
       );

    return TextFormField(
      decoration: inputDecoration,
      
      onFieldSubmitted: (value) {
        print("subminted $value");
      },

      onChanged: (value) {
        print ("onChange $value");
      },

    );
  }
}