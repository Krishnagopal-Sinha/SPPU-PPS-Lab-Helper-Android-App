import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  final int practNmbr;
  const ImageScreen({required this.practNmbr, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: InteractiveViewer(
              panEnabled: true,
              boundaryMargin: const EdgeInsets.all(10.0),
              minScale: 0.5,
              maxScale: 2.5,
              child: Image.asset(
                'assets/pract$practNmbr.jpg',
              ),
            ),
          )),
    );
  }
}
