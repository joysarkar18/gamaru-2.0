import 'package:flutter/material.dart';
import 'package:gamaru/app/components/common_image_view.dart';
import 'package:gamaru/app/services/responsive_ui_service.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Column(
          children: [
            10.kheightBox,
            CarouselSlider(
              options: CarouselOptions(
                // Adjust the height of the carousel
                autoPlay: true, // Enable auto-rotation
                enlargeCenterPage: true, // Enlarge the center image
                aspectRatio: 16 / 4,
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
          ],
        ),
      ),
    );
  }
}
