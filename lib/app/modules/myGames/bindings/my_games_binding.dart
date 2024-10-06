import 'package:get/get.dart';

import '../controllers/my_games_controller.dart';

class MyGamesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyGamesController>(
      () => MyGamesController(),
    );
  }
}
