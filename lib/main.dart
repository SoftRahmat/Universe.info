import 'package:explore_universe/components/audio_bg.dart';
import 'package:explore_universe/screens/certificate_page.dart';
import 'package:explore_universe/screens/earth_detailse.dart';
import 'package:explore_universe/screens/earth_page.dart';
import 'package:explore_universe/screens/home_page.dart';
import 'package:explore_universe/screens/jupi_detailse.dart';
import 'package:explore_universe/screens/jupiter_page.dart';
import 'package:explore_universe/screens/mars_detailse.dart';
import 'package:explore_universe/screens/mars_page.dart';
import 'package:explore_universe/screens/mercury_detailse.dart';
import 'package:explore_universe/screens/mercury_page.dart';
import 'package:explore_universe/screens/moon_detailse.dart';
import 'package:explore_universe/screens/moon_page.dart';
import 'package:explore_universe/screens/quiz_page.dart';
import 'package:explore_universe/screens/saturn_detailse.dart';
import 'package:explore_universe/screens/saturn_page.dart';
import 'package:explore_universe/screens/sun_detailse.dart';
import 'package:explore_universe/screens/sun_page.dart';
import 'package:explore_universe/screens/universe_page.dart';
import 'package:explore_universe/screens/uranus_detailse.dart';
import 'package:explore_universe/screens/uranus_page.dart';
import 'package:explore_universe/test/download_page.dart';
import 'package:explore_universe/test/quiz_main.dart';
import 'package:flutter/material.dart';
import 'package:explore_universe/screens/welcome_screen.dart';
import 'package:explore_universe/screens/login_screen.dart';
import 'package:explore_universe/screens/registration_screen.dart';
import 'package:explore_universe/screens/chat_screen.dart';

// Developer MD RAHMAT ALI ID: D20171079333, Faisal Hassan ID: D20171079412, Email:rahmatapon402@gmail.com
void main() => runApp(ExploreUniverse());

class ExploreUniverse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        HomePage.id: (context) => HomePage(),
        SunPage.id: (context) => SunPage(),
        SunDetailse.id: (context) => SunDetailse(),
        EarthPage.id: (context) => EarthPage(),
        EarthDetailse.id: (context) => EarthDetailse(),
        MoonPage.id: (context) => MoonPage(),
        MoonDetailse.id: (context) => MoonDetailse(),
        MarsPage.id: (context) => MarsPage(),
        MarsDetailse.id: (context) => MarsDetailse(),
        JupiterPage.id: (context) => JupiterPage(),
        JupiDetailse.id: (context) => JupiDetailse(),
        SaturnPage.id: (context) => SaturnPage(),
        SeturnDetailse.id: (context) => SeturnDetailse(),
        UranusPage.id: (context) => UranusPage(),
        UranusDetailse.id: (context) => UranusDetailse(),
        MercuryPage.id: (context) => MercuryPage(),
        MercuryDetailse.id: (context) => MercuryDetailse(),
        CertificatePage.id: (context) => CertificatePage(),
        QuizPage.id: (context) => QuizPage(),
        AudioBg.id: (context) => AudioBg(),
        PlanetsPage.id: (context) => PlanetsPage(),
        ChatScreen.id: (context) => ChatScreen(),
        QuizBar.id: (context) => QuizBar(),
        DownloadPage.id: (context) => DownloadPage(),
      },
    );
  }
}
