import 'package:material_ui/material_ui.dart';
import 'package:whatsapp/screens/chat_screens/widgets/message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:DecorationImage(
        image: AssetImage("assets/images/background.png"),
          fit:BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leadingWidth: 40,
          foregroundColor: Colors.white,
          centerTitle: false,
          titleSpacing: 0,
          leading:IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)) ,
          backgroundColor:  Color(0xFF202C33),
          title: Row(
            spacing: 8,
            children: [
              const CircleAvatar(
                radius: 18,
                backgroundImage:AssetImage("assets/images/user.jpg") ,
              ),
               const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'John Salter',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'online',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.call),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),

        body: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: const [
                  MessageBubble(
                    text: 'Hey! How are you?',
                    isMe: false,
                    imagepath:null ,
                  ),
                  MessageBubble(
                    text:
                    'Have you ever thought about how random moments can sometimes turn into the best memories?',
                    isMe: false,
                  ),
                  MessageBubble(
                    text: 'Yes! That is so true.',
                    isMe: true,
                  ),
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.all(10),
              color: const Color(0xFF181818),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.camera_alt),
                  ),

                  Expanded(
                    child: TextField(
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Type a Message...',
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                        ),
                        filled: true,
                        fillColor: const Color(0xFF202C33),
                        contentPadding:
                        const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Color(0xFF168C4B),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Color(0xFF168C4B),
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 8),

                  CircleAvatar(
                    backgroundColor: const Color(0xFF168C4B),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.mic,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  MessageBubble buildMessageBubble() {
    return MessageBubble(
                  text: "I'm fine, thank you!",
                  isMe: true,
                  imagepath:null ,
                );
  }
}


