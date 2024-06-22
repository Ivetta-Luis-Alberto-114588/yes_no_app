import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_buble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://imgs.search.brave.com/gRI3OuaZNieVIbB-FkbZF3Cg1Zy03WQsIREj_i0NwXQ/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/aXN0b2NrcGhvdG8u/Y29tL3Jlc291cmNl/cy9pbWFnZXMvUGhv/dG9GVExQL0pvYnND/YXJlZXJzLTkwMTU2/ODY2MC5qcGc'),
          ),
        ),
        title: const Text("mi chat"),
        centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [

            Expanded(child: ListView.builder
              (             
                itemCount: 100,
                itemBuilder: (context, index) 
                {
                  return (index % 2 == 0)
                    ? const HerMessageBubble()
                    : const MyMessageBubble();              
                },
              )
            ),
            
            // caja de mensajes
            const MessageFieldBoxl()
          ],
        ),
      ),
    );
  }
}