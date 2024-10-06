import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/my_games_controller.dart';

class MyGamesView extends GetView<MyGamesController> {
  const MyGamesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyGamesView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MyGamesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
