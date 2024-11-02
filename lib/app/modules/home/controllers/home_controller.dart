import 'package:gamaru/app/models/offer_model.dart';
import 'package:gamaru/app/routes/app_pages.dart';
import 'package:gamaru/app/services/dialog_service.dart';
import 'package:gamaru/app/services/logger_service.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class HomeController extends GetxController {
  final RxList<OfferModel> offers = <OfferModel>[].obs;

  @override
  void onReady() async {
    super.onReady();
    DialogHelper.showLoading();
    await fetchOffers();
    DialogHelper.hideDialog();
  }

  Future<void> fetchOffers() async {
    try {
      final response = await Supabase.instance.client.from('offers').select();
      LoggerService.logInfo(response.toString());
      offers.value = response
          .map(
            (e) => OfferModel.fromJson(e),
          )
          .toList();

      LoggerService.logInfo(offers.toString());
    } catch (e) {
      LoggerService.logError(e.toString());
      DialogHelper.showError(e.toString());
    }
  }

  void gotoFeaturedEvent() {
    Get.toNamed(Routes.FEATURED_EVENTS);
  }

  void gotoAllGames() {
    Get.toNamed(Routes.ALL_GAMES);
  }

  void gotoPracticeGames() {
    Get.toNamed(Routes.PRACICE_GAMES);
  }

  void gotoTournaments() {
    Get.toNamed(Routes.TOURNAMENTS);
  }
}
