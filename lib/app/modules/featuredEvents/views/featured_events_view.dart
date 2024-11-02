import 'package:flutter/material.dart';
import 'package:gamaru/app/components/featured_game_card.dart';
import 'package:gamaru/app/constants/app_text_styles.dart';
import 'package:gamaru/app/services/responsive_ui_service.dart';

import 'package:get/get.dart';

import '../controllers/featured_events_controller.dart';

class FeaturedEventsView extends GetView<FeaturedEventsController> {
  const FeaturedEventsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Featured Events',
            style: AppTextStyles.monserrat600(),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.filter_list_sharp))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ...[1, 2, 3, 4, 5].map(
                  (e) => Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: FeaturedGameCard(
                      width: 100.w,
                      isHome: false,
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
