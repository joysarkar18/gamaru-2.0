import 'package:flutter/material.dart';
import 'package:gamaru/app/components/common_image_view.dart';
import 'package:gamaru/app/constants/app_colors.dart';
import 'package:gamaru/app/constants/app_text_styles.dart';
import 'package:gamaru/app/constants/assets.dart';
import 'package:gamaru/app/services/responsive_ui_service.dart';

import 'package:get/get.dart';

import '../controllers/game_details_controller.dart';

class GameDetailsView extends GetView<GameDetailsController> {
  const GameDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Game Details',
            style: AppTextStyles.monserrat600(),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              10.kheightBox,
              CommonImageView(
                url:
                    "https://staticg.sportskeeda.com/editor/2024/09/ddf63-17260436951136-1920.jpg",
                width: 100.w,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  children: [
                    10.kheightBox,
                    Text(
                      "BGMI SQUAD MATCH",
                      style: AppTextStyles.monserrat800(fontSize: 20),
                    ),
                    2.kheightBox,
                    Text(
                      "Pro classic cup squad battle 🔫, full team required, only team leader will pay. Low lavel players not allowed.",
                      textAlign: TextAlign.center,
                      style: AppTextStyles.monserrat600(fontSize: 13),
                    ),
                    10.kheightBox,
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border:
                              Border.all(width: 1, color: AppColors.pinkSwan)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            size: 20,
                            Icons.calendar_month,
                            color: Colors.yellow,
                          ),
                          5.kwidthBox,
                          Text(
                            'Monday, 12th Nov, 11:30 pm',
                            style: AppTextStyles.monserrat700(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    8.kheightBox,
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                    width: 1, color: AppColors.pinkSwan)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CommonImageView(
                                  svgPath: Assets.assetsIconsCoinStatic,
                                  svgColor: Colors.yellow,
                                  height: 20,
                                ),
                                5.kwidthBox,
                                Text(
                                  '10 per kill',
                                  style:
                                      AppTextStyles.monserrat700(fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                        6.kwidthBox,
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                    width: 1, color: AppColors.pinkSwan)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CommonImageView(
                                  svgPath: Assets.assetsIconsMapIcon,
                                  svgColor: Colors.yellow,
                                  height: 20,
                                ),
                                5.kwidthBox,
                                Text(
                                  'Map: Erangle',
                                  style:
                                      AppTextStyles.monserrat700(fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    8.kheightBox,
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                    width: 1, color: AppColors.pinkSwan)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CommonImageView(
                                  svgPath: Assets.assetsIconsCoinStatic,
                                  svgColor: Colors.yellow,
                                  height: 20,
                                ),
                                5.kwidthBox,
                                Text(
                                  '580 Prize Pool',
                                  style:
                                      AppTextStyles.monserrat700(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),
                        6.kwidthBox,
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                    width: 1, color: AppColors.pinkSwan)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CommonImageView(
                                  svgPath: Assets.assetsIconsSlots,
                                  svgColor: Colors.yellow,
                                  height: 20,
                                ),
                                5.kwidthBox,
                                Text(
                                  '20/24 Slots',
                                  style:
                                      AppTextStyles.monserrat700(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    8.kheightBox,
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border:
                              Border.all(width: 1, color: AppColors.pinkSwan)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CommonImageView(
                            svgPath: Assets.assetsIconsCoinStatic,
                            svgColor: Colors.yellow,
                            height: 20,
                          ),
                          5.kwidthBox,
                          Text(
                            '30 Joining fee and Slot booking',
                            style: AppTextStyles.monserrat700(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    10.kheightBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildHeading('General Rules'),
                        buildListItem('Eligibility'),
                        buildText(
                            '• All participants must be residents of India and at least 16 years old. Players below 18 years must provide parental consent to participate.\n• Each player must have a valid and active BGMI account.'),
                        buildListItem('Registration'),
                        buildText(
                            '• Participants must register through the official platform provided by the organizer.\n• A team may consist of a maximum of 4 members for squad mode.'),
                        buildListItem('Game Mode'),
                        buildText(
                            '• The contest will be played in Classic Mode.\n• Matches will be held in Solo, Duo, or Squad mode, as per the format.'),
                        SizedBox(height: 20),
                        buildHeading('Gameplay Rules'),
                        buildListItem('No Exploits/Cheating'),
                        buildText(
                            '• Using any form of cheats, hacks, or exploits will result in disqualification.\n• Stream sniping or ghosting is prohibited.'),
                        buildListItem('Game Pauses/Disconnections'),
                        buildText(
                            '• No pauses or rematches will be allowed for player disconnections unless caused by server issues.'),
                        buildListItem('Fair Play'),
                        buildText(
                            '• Unsportsmanlike behavior, match-fixing, or teaming with opponents is strictly forbidden.'),
                        SizedBox(height: 20),
                        buildHeading('Point System'),
                        buildListItem('Scoring'),
                        buildText(
                            '• Points will be awarded based on eliminations and placement.\n• 1 point per kill.\n• Placement Points:\n   - 1st place: 15 points\n   - 2nd place: 12 points\n   - 3rd place: 10 points\n   - 4th place: 8 points\n   - and so on...'),
                        SizedBox(height: 20),
                        buildHeading('Tournament Structure'),
                        buildListItem('Match Format'),
                        buildText(
                            '• The contest will consist of multiple matches, with the overall winner determined by total points.'),
                        buildListItem('Tiebreakers'),
                        buildText(
                            '• In case of a tie in points, the tiebreaker will be based on total kills, highest individual match placement, and head-to-head result.'),
                        SizedBox(height: 20),
                        buildHeading('Prizes'),
                        buildListItem('Prize Distribution'),
                        buildText(
                            '• Prizes will be distributed based on the final leaderboard standings.\n• Players must provide valid identification for prize collection.'),
                        SizedBox(height: 20),
                        buildHeading('Disqualification'),
                        buildListItem('Reasons for Disqualification'),
                        buildText(
                            '• Cheating, violating rules, or disruptive behavior will lead to immediate disqualification.'),
                      ],
                    )
                  ],
                ),
              ),
              20.kheightBox,
            ],
          ),
        ));
  }
}

// Helper methods to format text and headings
Widget buildHeading(String heading) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0),
    child: Text(
      heading,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.blueAccent,
      ),
    ),
  );
}

Widget buildListItem(String item) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Text(item, style: AppTextStyles.monserrat700(fontSize: 18)),
  );
}

Widget buildText(String text) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 12.0),
    child: Text(text, style: AppTextStyles.monserrat500(fontSize: 14)),
  );
}
