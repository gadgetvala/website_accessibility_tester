import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:wat/global/shared_preferences.dart';
import 'package:wat/locator/locator.dart';

class FcmToken {
  final pref = locator<Preferences>();
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  String? fcmToken;
  Future getFcmToken() async {
    fcmToken ??= await _firebaseMessaging.getToken();
    print('Token:::: $fcmToken');
    pref.setFCMtoken(fcmToken!);
  }
}
