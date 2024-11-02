import 'package:flutter/material.dart';
import 'package:gamaru/app/components/custom_button.dart';
import 'package:gamaru/app/components/game_card.dart';
import 'package:gamaru/app/constants/app_text_styles.dart';
import 'package:gamaru/app/services/responsive_ui_service.dart';

import 'package:get/get.dart';

import '../controllers/all_games_controller.dart';

class AllGamesView extends GetView<AllGamesController> {
  const AllGamesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'All Games',
            style: AppTextStyles.monserrat600(),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 6, right: 6, top: 30),
              child: SizedBox(
                width: 100.w,
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  spacing: 1,
                  children: [
                    ...[1, 2, 3, 4, 5, 6, 6, 7, 7].map(
                      (e) => const Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: GameCard(
                          isHome: false,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
