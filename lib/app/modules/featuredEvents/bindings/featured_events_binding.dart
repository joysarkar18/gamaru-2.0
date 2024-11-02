import 'package:get/get.dart';

import '../controllers/featured_events_controller.dart';

class FeaturedEventsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FeaturedEventsController>(
      () => FeaturedEventsController(),
    );
  }
}
