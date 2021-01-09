import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ink_capsule/screens/home.screen.dart';
import 'package:ink_capsule/screens/login.screen.dart';
import 'package:ink_capsule/screens/note.screen.dart';
import 'package:ink_capsule/screens/signup.screen.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light
    )
  );

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

class MyApp extends StatelessWidget {
 static const TextTheme lightModeTextTheme = TextTheme(
    headline1: TextStyle(fontSize: 31, color: Colors.black),
    headline2: TextStyle(fontSize: 25, color: Colors.black),
    headline3: TextStyle(fontSize: 22.5, color: Colors.black),
    headline4: TextStyle(fontSize: 20, color: Colors.black),
  );
 
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: primaryBlack,
          fontFamily: 'Quicksand',
          appBarTheme: AppBarTheme(
            color: Colors.transparent,
            brightness: Brightness.light,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
            textTheme: TextTheme(headline6: TextStyle(color: Colors.black, fontSize: 25)),
            centerTitle: true,
          ),
          textTheme: lightModeTextTheme,
      ),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (_) => HomeScreen()
            );
            break;
          case '/login':
            return MaterialPageRoute(
              builder: (_) => LoginScreen()
            );
            break;
          case '/signup':
            return MaterialPageRoute(
              builder: (_) => SignupScreen()
            );
            break;
          case '/note':
            return MaterialPageRoute(
              builder: (_) => NoteScreen()
            );
            break;
          default:
          return MaterialPageRoute(
              builder: (_) => HomeScreen()
            );
        }
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

const MaterialColor primaryBlack = MaterialColor(
  _blackPrimaryValue,
  <int, Color>{
    50: Color(0xFF000000),
    100: Color(0xFF000000),
    200: Color(0xFF000000),
    300: Color(0xFF000000),
    400: Color(0xFF000000),
    500: Color(_blackPrimaryValue),
    600: Color(0xFF000000),
    700: Color(0xFF000000),
    800: Color(0xFF000000),
    900: Color(0xFF000000),
  },
);
const int _blackPrimaryValue = 0xFF000000;