import 'package:flutter/material.dart';

class MessageFieldBoxl extends StatelessWidget {
  const MessageFieldBoxl({super.key});

  @override
  Widget build(BuildContext context) {

    final textControler = TextEditingController();

    final FocusNode focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color:  Colors.transparent),
      borderRadius: BorderRadius.circular(40)
    );


    final inputDecoration = InputDecoration(
        hintText: 'Terminaste de escribir "?"',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {
            
            final textValue = textControler.value.text;

            print("boton $textValue");

            textControler.clear();
          },
          )
       );

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },

      focusNode: focusNode,

      controller: textControler,

      decoration: inputDecoration,
      
      onFieldSubmitted: (value) {
        print("subminted $value");
        textControler.clear();
        focusNode.requestFocus();
      },

      

    );
  }
}