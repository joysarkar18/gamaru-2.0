import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/videos_controller.dart';

class VideosView extends GetView<VideosController> {
  const VideosView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VideosView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'VideosView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
