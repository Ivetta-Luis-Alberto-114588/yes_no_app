

import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{

  final ScrollController chatScrollController = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  List<Message> messageList = [
    Message(text: "hola", fromWho: FromWho.me),
    Message(text: "como estas", fromWho: FromWho.me)
  ];

  Future<void> sendMessage( String textEnviar) async {
    
    if(textEnviar.isEmpty) return;

    final newMessage = Message(text: textEnviar, fromWho: FromWho.me);

    messageList.add(newMessage);

    if(textEnviar.endsWith('?')){
      herReply();
    }

    notifyListeners();
    
    moveScrollToBotton();
  }

  Future<void> herReply() async {

    final herMessage = await getYesNoAnswer.getAnswer();

    messageList.add(herMessage);

    notifyListeners();

    moveScrollToBotton();

  }

  Future<void> moveScrollToBotton() async{

    await Future.delayed(const Duration(milliseconds: 200));

    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent + chatScrollController.position.maxScrollExtent*0.3,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut);
  }
}