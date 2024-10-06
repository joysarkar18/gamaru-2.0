import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gamaru/app/constants/app_colors.dart';

import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'app/routes/app_pages.dart';

void main() async {
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
          appBarTheme: AppBarTheme(backgroundColor: AppColors.myDark)),
      initialRoute: Supabase.instance.client.auth.currentUser != null
          ? Routes.NAV_BAR
          : AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
