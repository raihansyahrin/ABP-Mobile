import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/highlights_controller.dart';

class HighlightsView extends GetView<HighlightsController> {
  const HighlightsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HighlightsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HighlightsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
