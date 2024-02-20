import 'package:flutter/cupertino.dart';

class DemoFile extends StatefulWidget {
  const DemoFile({super.key});

  @override
  State<DemoFile> createState() => _DemoFileState();
}

class _DemoFileState extends State<DemoFile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: const Text("Demo File"));
  }
}
