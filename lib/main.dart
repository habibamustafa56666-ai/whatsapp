
import 'package:material_ui/material_ui.dart';
import 'package:whatsapp/screens/chat_screens/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp UI',
      theme: ThemeData.dark(),
      home: const ChatScreen(),
    );
  }
}


