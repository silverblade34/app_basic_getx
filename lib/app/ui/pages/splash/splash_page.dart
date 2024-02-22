import 'package:app_basic_getx/app/ui/pages/home/home_page.dart';
import 'package:app_basic_getx/app/ui/pages/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:introduction_slider/introduction_slider.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  static const type = 1;

  @override
  Widget build(BuildContext context) {
    return IntroductionSlider(
      items: [
        IntroductionSliderItem(
          logo: Image.asset(
            'assets/images/intro1.png',
            width: 300,
            height: 300,
          ),
          title: const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Agilizamos la gestión de tus procesos",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  fontFamily: 'Onest',
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
          backgroundColor: Color.fromARGB(255, 176, 184, 230),
        ),
        IntroductionSliderItem(
          logo: Image.asset(
            'assets/images/intro2.png',
            width: 350,
            height: 350,
          ),
          title: const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Solo escanee el codigo QR del estudiante",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  fontFamily: 'Onest',
                  color: Colors.white),
            ),
          ),
          backgroundColor: Color.fromARGB(255, 176, 184, 230),
        ),
        IntroductionSliderItem(
          logo: Image.asset(
            'assets/images/intro3.png',
            width: 350,
            height: 350,
          ),
          title: const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Lleve un registro de asistencias de manera rapida",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  fontFamily: 'Onest',
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
          backgroundColor: Color.fromARGB(255, 176, 184, 230),
        ),
      ],
      done: Done(
        child: Container(
          padding: const EdgeInsets.all(10), // Padding alrededor del icono
          decoration: const BoxDecoration(
            color: Colors.indigo, // Color de fondo del contenedor
            shape: BoxShape.circle, // Borde circular
          ),
          child: const Icon(
            Icons.done,
            color: Colors.white, // Color del icono
          ),
        ),
        home: LoginPage(),
      ),
      next: const Next(
        child: Icon(Icons.arrow_forward),
        style: ButtonStyle(
          iconColor: MaterialStatePropertyAll(Colors.white),
        ),
      ),
      back: const Back(
        child: Icon(Icons.arrow_back),
        style: ButtonStyle(
          iconColor: MaterialStatePropertyAll(Colors.white),
        ),
      ),
      dotIndicator: const DotIndicator(selectedColor: Colors.white),
    );
  }
}
