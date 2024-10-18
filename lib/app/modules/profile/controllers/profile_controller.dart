import 'package:get/get.dart';

class ProfileController extends GetxController {
  //TODO: Implement ProfileController

  final count = 0.obs;

  void increment() => count.value++;
  // Observables for level and tournaments
  var currentLevel = 1.obs;
  var tournamentsParticipated = 0.obs;
  var maxTournamentsForNextLevel = 5.obs;

  // Function to simulate participation in a tournament
  void participateInTournament() {
    tournamentsParticipated.value += 1;
    if (tournamentsParticipated.value >= maxTournamentsForNextLevel.value) {
      // Level up and reset tournament counter
      currentLevel.value += 1;
      tournamentsParticipated.value = 0;
      maxTournamentsForNextLevel.value +=
          5; // Increase threshold for next level
    }
  }

  // Calculate progress for progress bar
  double get progress {
    return tournamentsParticipated.value / maxTournamentsForNextLevel.value;
  }
}
