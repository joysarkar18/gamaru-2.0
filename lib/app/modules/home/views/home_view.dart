import 'package:flutter/material.dart';
import 'package:gamaru/app/components/common_image_view.dart';
import 'package:gamaru/app/components/custom_button.dart';
import 'package:gamaru/app/components/featured_game_card.dart';
import 'package:gamaru/app/components/game_card.dart';
import 'package:gamaru/app/components/tournament_card.dart';
import 'package:gamaru/app/constants/app_text_styles.dart';
import 'package:gamaru/app/services/responsive_ui_service.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Obx(
          () => Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomElevatedButton(
                        buttonText: "Videos",
                        height: 40.kh,
                        width: 46.w,
                        onPressed: controller.gotoVideos),
                    CustomElevatedButton(
                        buttonText: "My Teams",
                        height: 40.kh,
                        width: 46.w,
                        onPressed: controller.gotoMyTeams)
                  ],
                ),
              ),
              10.kheightBox,
              CarouselSlider(
                options: CarouselOptions(
                  // Adjust the height of the carousel
                  autoPlay: true, // Enable auto-rotation
                  viewportFraction: 0.95,
                  enlargeCenterPage: true, // Enlarge the center image
                  aspectRatio: 18 / 3.4,
                  // Set the aspect ratio of the images
                  autoPlayCurve: Curves.easeIn,
                  autoPlayInterval:
                      const Duration(seconds: 3), // Interval between slides
                ),
                items: controller.offers.map((item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: CommonImageView(
                          width: 100.w,
                          url: item.banner,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              8.kheightBox,
              Row(
                children: [
                  20.kwidthBox,
                  Text(
                    "Featured Events",
                    style: AppTextStyles.monserrat800(fontSize: 20),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: controller.gotoFeaturedEvent,
                      child: const Text("View All"))
                ],
              ),
              10.kheightBox,
              SizedBox(
                height: 248,
                width: 100.w,
                child: ListView.builder(
                  itemCount: 8,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => FeaturedGameCard(
                    width: 300.kw,
                    isHome: true,
                  ),
                ),
              ),
              20.kheightBox,
              Row(
                children: [
                  20.kwidthBox,
                  Text(
                    "All Games",
                    style: AppTextStyles.monserrat800(fontSize: 20),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: controller.gotoAllGames,
                      child: const Text("View All"))
                ],
              ),
              10.kheightBox,
              SizedBox(
                height: 134,
                width: 100.w,
                child: ListView.builder(
                  itemCount: 8,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => const GameCard(
                    isHome: true,
                  ),
                ),
              ),
              10.kheightBox,
              Row(
                children: [
                  20.kwidthBox,
                  Text(
                    "Practice Games",
                    style: AppTextStyles.monserrat800(fontSize: 20),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: controller.gotoPracticeGames,
                      child: const Text("View All"))
                ],
              ),
              10.kheightBox,
              SizedBox(
                height: 248,
                width: 100.w,
                child: ListView.builder(
                  itemCount: 8,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => FeaturedGameCard(
                    width: 300.kw,
                    isHome: true,
                  ),
                ),
              ),
              10.kheightBox,
              Row(
                children: [
                  20.kwidthBox,
                  Text(
                    "Tournaments",
                    style: AppTextStyles.monserrat800(fontSize: 20),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: controller.gotoTournaments,
                      child: const Text("View All"))
                ],
              ),
              10.kheightBox,
              SizedBox(
                height: 214,
                width: 100.w,
                child: ListView.builder(
                  itemCount: 8,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => const TournamentCard(
                    isHome: true,
                  ),
                ),
              ),
              30.kheightBox,
            ],
          ),
        ),
      ),
    );
  }
}
