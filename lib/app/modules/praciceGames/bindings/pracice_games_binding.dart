import 'package:get/get.dart';

import '../controllers/pracice_games_controller.dart';

class PraciceGamesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PraciceGamesController>(
      () => PraciceGamesController(),
    );
  }
}
