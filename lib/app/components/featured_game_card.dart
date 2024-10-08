import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gamaru/app/components/common_image_view.dart';
import 'package:gamaru/app/components/custom_button.dart';
import 'package:gamaru/app/constants/app_colors.dart';
import 'package:gamaru/app/constants/app_text_styles.dart';
import 'package:gamaru/app/constants/assets.dart';
import 'package:gamaru/app/services/responsive_ui_service.dart';

class FeaturedGameCard extends StatelessWidget {
  const FeaturedGameCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.kh,
      margin: const EdgeInsets.only(left: 18),
      padding: const EdgeInsets.all(8),
      width: 270.kw,
      decoration: BoxDecoration(
          color: AppColors.dune, borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CommonImageView(
              url:
                  "https://staticg.sportskeeda.com/editor/2024/09/ddf63-17260436951136-1920.jpg",
              height: 70.kh,
              width: 100.w,
              fit: BoxFit.cover,
            ),
          ),
          4.kheightBox,
          Text(
            "BGMI SQUAD MATCH",
            style: AppTextStyles.monserrat700(fontSize: 17),
          ),
          4.kheightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 6,
                ),
                height: 24,
                width: 122.kw,
                decoration: BoxDecoration(
                    color: AppColors.oxfordBlue,
                    borderRadius: BorderRadius.circular(4)),
                child: Row(
                  children: [
                    Text(
                      "Joining Fee : ",
                      style: AppTextStyles.monserrat800(
                        fontSize: 10,
                      ),
                    ),
                    SvgPicture.asset(
                      Assets.assetsIconsCoinStatic,
                      colorFilter:
                          ColorFilter.mode(AppColors.java, BlendMode.srcIn),
                      height: 15,
                    ),
                    2.kwidthBox,
                    Text(
                      "15",
                      style: AppTextStyles.monserrat800(
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 24,
                width: 122.kw,
                padding: const EdgeInsets.symmetric(
                  horizontal: 6,
                ),
                decoration: BoxDecoration(
                    color: AppColors.oxfordBlue,
                    borderRadius: BorderRadius.circular(4)),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      Assets.assetsIconsSlots,
                      colorFilter:
                          ColorFilter.mode(AppColors.java, BlendMode.srcIn),
                      height: 15,
                    ),
                    3.kwidthBox,
                    Text(
                      "25 slot available",
                      style: AppTextStyles.monserrat800(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          8.kheightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 6,
                ),
                height: 24,
                width: 122.kw,
                decoration: BoxDecoration(
                    color: AppColors.oxfordBlue,
                    borderRadius: BorderRadius.circular(4)),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      Assets.assetsIconsCalender,
                      colorFilter:
                          ColorFilter.mode(AppColors.java, BlendMode.srcIn),
                      height: 16,
                    ),
                    3.kwidthBox,
                    Text(
                      "10 Oct, 11:30am",
                      style: AppTextStyles.monserrat800(
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 6,
                ),
                height: 24,
                width: 122.kw,
                decoration: BoxDecoration(
                    color: AppColors.oxfordBlue,
                    borderRadius: BorderRadius.circular(4)),
                child: Row(
                  children: [
                    Text(
                      "Prize Pool : ",
                      style: AppTextStyles.monserrat800(
                        fontSize: 10,
                      ),
                    ),
                    SvgPicture.asset(
                      Assets.assetsIconsCoinStatic,
                      colorFilter:
                          ColorFilter.mode(AppColors.java, BlendMode.srcIn),
                      height: 15,
                    ),
                    2.kwidthBox,
                    Text(
                      "450",
                      style: AppTextStyles.monserrat800(
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 9),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.bottleGreen, width: 1),
                  borderRadius: BorderRadius.circular(10)),
              child: CustomElevatedButton(
                  buttonText: "Join Now",
                  height: 30,
                  width: 100.w,
                  onPressed: () {}),
            ),
          )
        ],
      ),
    );
  }
}
