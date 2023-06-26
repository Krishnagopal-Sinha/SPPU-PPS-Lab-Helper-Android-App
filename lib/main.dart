import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pps_practicals/provider/theme_provider.dart';
import 'package:pps_practicals/screens/homescreen.dart';
import 'package:pps_practicals/widgets/change_theme_button.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'PPS Practicals',
          themeMode: themeProvider.themeMode,
          theme: MyTheme.light,
          darkTheme: MyTheme.dark,
          home: SafeArea(
            child: Scaffold(
              appBar: AppBar(
                foregroundColor:
                    themeProvider.isDarkMode ? Colors.white : Colors.black,
                backgroundColor: themeProvider.isDarkMode
                    ? Colors.black
                    : Colors.grey.shade100,
                title: const Text(
                  'PPS Practicals',
                  style: TextStyle(fontFamily: 'Quicksand', letterSpacing: 0.5),
                ),
                actions: const [ChangeThemeButton()],
              ),
              body: const HomeScreen(),
            ),
          ),
        );
      },
    );
  }
}
