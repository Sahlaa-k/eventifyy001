import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/bottom_navigation/blog/blog_page.dart';
import 'features/bottom_navigation/bottom_navigation_bar.dart';
import 'features/bottom_navigation/profile/profile_page.dart';
import 'features/login/login_page.dart';
import 'features/onboarding_screen/onboarding_page1.dart';
import 'features/onboarding_screen/splash_screen.dart';
late double height;
late double width;
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   runApp(DevicePreview(
//       enabled: kDebugMode,
//       tools: const [
//         ...DevicePreview.defaultTools,
//       ],
//       builder: (context) =>  EventAPP()));
// }
void main(){
  runApp(DevicePreview(
    enabled: kDebugMode,
      tools: const [
        ...DevicePreview.defaultTools,
      ],
      builder: (context) =>  EventAPP()));
}
class EventAPP extends StatelessWidget {
  const EventAPP({super.key});

  @override
  Widget build(BuildContext context) {
    height=MediaQuery.of(context).size.height;
    width=MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:SplashScreen() ,
theme:  ThemeData(
  textTheme: GoogleFonts.abhayaLibreTextTheme(),
),
      ),
    );
  }
}
