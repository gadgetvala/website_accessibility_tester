import 'package:flutter/material.dart';
import 'package:wat/res/res.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  static const String id = "/splashScreen";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      initializeResources(context: context);
      initialize();
    });
  }

  Future initialize() async {
    // final pref = locator<Preferences>();
    // if (pref.fcmToken == null) locator<FcmToken>().getFcmToken();
    await Future.delayed(
      const Duration(milliseconds: 5000),
      () {
        // Navigator.pushNamedAndRemoveUntil(
        //     context, DashboardScreen.id, (route) => false);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background_image.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Container()),
            Expanded(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Text("Hello!",
                      style: GoogleFonts.playfairDisplay(
                          fontWeight: FontWeight.w400, fontSize: 48)),
                  const SizedBox(height: 20),
                  Text(
                    "Welcome to Furballs Veterinary",
                    style: GoogleFonts.playfairDisplay(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "The Vet for your Pet",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
