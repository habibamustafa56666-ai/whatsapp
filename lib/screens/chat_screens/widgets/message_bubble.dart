import 'package:material_ui/material_ui.dart';

class  MessageBubble extends StatelessWidget {
  final String text;
  final bool isMe;
  final String? imagepath;
  const MessageBubble({
    super.key,
    required this.text,
    required this.isMe,
     this.imagepath,
  });

  @override
  Widget build(BuildContext context) {
    var clipRect = ClipRect(
        child: imagepath !=null ?Image.asset(imagepath!) :const SizedBox.shrink(),
    );
    return Align(
      alignment:
      isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.all(12),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.75,
        ),
        decoration: BoxDecoration(
          color: isMe
              ? const Color(0xFF168C4B)
              : const Color(0xFF202C33),
          borderRadius: BorderRadius.circular(12),
        ),
        child:
            Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),

        ),
      );
  }
}
