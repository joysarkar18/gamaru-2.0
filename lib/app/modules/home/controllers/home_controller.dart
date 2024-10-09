import 'package:gamaru/app/models/offer_model.dart';
import 'package:gamaru/app/services/dialog_service.dart';
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
      print(response);
      offers.value = response
          .map(
            (e) => OfferModel.fromJson(e),
          )
          .toList();

      print(offers);
    } catch (e) {
      DialogHelper.showError(e.toString());
    }
  }
}
