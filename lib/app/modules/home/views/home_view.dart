import 'package:flutter/material.dart';
import 'package:gamaru/app/components/common_image_view.dart';
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
              10.kheightBox,
              CarouselSlider(
                options: CarouselOptions(
                  // Adjust the height of the carousel
                  autoPlay: true, // Enable auto-rotation
                  enlargeCenterPage: true, // Enlarge the center image
                  aspectRatio: 16 / 3,
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
              20.kheightBox,
              Row(
                children: [
                  20.kwidthBox,
                  Text(
                    "Featured Events",
                    style: AppTextStyles.monserrat800(fontSize: 20),
                  ),
                ],
              ),
              10.kheightBox,
              SizedBox(
                height: 210.kh,
                width: 100.w,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => const FeaturedGameCard(),
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
                ],
              ),
              10.kheightBox,
              SizedBox(
                height: 130.kh,
                width: 100.w,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => const GameCard(),
                ),
              ),
              20.kheightBox,
              Row(
                children: [
                  20.kwidthBox,
                  Text(
                    "Practice Games",
                    style: AppTextStyles.monserrat800(fontSize: 20),
                  ),
                ],
              ),
              10.kheightBox,
              SizedBox(
                height: 210.kh,
                width: 100.w,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => const FeaturedGameCard(),
                ),
              ),
              20.kheightBox,
              Row(
                children: [
                  20.kwidthBox,
                  Text(
                    "Tournament",
                    style: AppTextStyles.monserrat800(fontSize: 20),
                  ),
                ],
              ),
              10.kheightBox,
              SizedBox(
                height: 210.kh,
                width: 100.w,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => const TournamentCard(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
