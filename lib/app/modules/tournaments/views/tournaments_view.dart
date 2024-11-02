import 'package:flutter/material.dart';
import 'package:gamaru/app/components/tournament_card.dart';
import 'package:gamaru/app/constants/app_text_styles.dart';

import 'package:get/get.dart';

import '../controllers/tournaments_controller.dart';

class TournamentsView extends GetView<TournamentsController> {
  const TournamentsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Tournaments',
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
                    child: TournamentCard(
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
