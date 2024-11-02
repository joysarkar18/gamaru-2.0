import 'package:get/get.dart';

import '../modules/allGames/bindings/all_games_binding.dart';
import '../modules/allGames/views/all_games_view.dart';
import '../modules/featuredEvents/bindings/featured_events_binding.dart';
import '../modules/featuredEvents/views/featured_events_view.dart';
import '../modules/gameDetails/bindings/game_details_binding.dart';
import '../modules/gameDetails/views/game_details_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/myGames/bindings/my_games_binding.dart';
import '../modules/myGames/views/my_games_view.dart';
import '../modules/navBar/bindings/nav_bar_binding.dart';
import '../modules/navBar/views/nav_bar_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/praciceGames/bindings/pracice_games_binding.dart';
import '../modules/praciceGames/views/pracice_games_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/tournaments/bindings/tournaments_binding.dart';
import '../modules/tournaments/views/tournaments_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARDING;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.NAV_BAR,
      page: () => const NavBarView(),
      binding: NavBarBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.MY_GAMES,
      page: () => const MyGamesView(),
      binding: MyGamesBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.GAME_DETAILS,
      page: () => const GameDetailsView(),
      binding: GameDetailsBinding(),
    ),
    GetPage(
      name: _Paths.FEATURED_EVENTS,
      page: () => const FeaturedEventsView(),
      binding: FeaturedEventsBinding(),
    ),
    GetPage(
      name: _Paths.ALL_GAMES,
      page: () => const AllGamesView(),
      binding: AllGamesBinding(),
    ),
    GetPage(
      name: _Paths.PRACICE_GAMES,
      page: () => const PraciceGamesView(),
      binding: PraciceGamesBinding(),
    ),
    GetPage(
      name: _Paths.TOURNAMENTS,
      page: () => const TournamentsView(),
      binding: TournamentsBinding(),
    ),
  ];
}
