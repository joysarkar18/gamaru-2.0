import 'package:get/get.dart';

import '../controllers/all_games_controller.dart';

class AllGamesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllGamesController>(
      () => AllGamesController(),
    );
  }
}
