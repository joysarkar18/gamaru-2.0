import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gamaru/app/constants/app_colors.dart';

import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'app/routes/app_pages.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: AppColors.myDark, // navigation bar color
    statusBarColor: Colors.transparent, // status bar color
  ));
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  await Supabase.initialize(
    url: 'https://nlmovwmjipcgerfwxhat.supabase.co',
    anonKey: dotenv.env['SUPABASE_KEY']!,
  );
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      theme: ThemeData(
          primaryColor: AppColors.java,
          scaffoldBackgroundColor: AppColors.myDark,
          appBarTheme: AppBarTheme(
            backgroundColor: AppColors.myDark,
            iconTheme: const IconThemeData(
              color: Colors.white,
            ),
          )),
      initialRoute: Supabase.instance.client.auth.currentUser != null
          ? Routes.NAV_BAR
          : AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
