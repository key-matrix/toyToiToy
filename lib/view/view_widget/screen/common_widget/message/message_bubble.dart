import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String sender;
  final String text;
  final DateTime timestamp;

  const MessageBubble({
    Key? key,
    required this.sender,
    required this.text,
    required this.timestamp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            sender,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          CustomPaint(
            painter: LineBubblePainter(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(text),
            ),
          ),
          Text(timestamp.toString()),
        ],
      ),
    );
  }
}

class LineBubblePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    path.moveTo(4, size.height);
    path.lineTo(size.width / 2, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width - 10, size.height);
    path.lineTo(size.width - 10, size.height - 10);
    path.lineTo(10, size.height - 10);
    path.lineTo(10, size.height);
    path.close();

    canvas.drawPath(path, Paint()..color = Colors.blue);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
