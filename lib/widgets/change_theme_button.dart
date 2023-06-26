import 'package:flutter/material.dart';
import 'package:pps_practicals/provider/theme_provider.dart';
import 'package:pps_practicals/screens/infoscreen.dart';
import 'package:provider/provider.dart';

class ChangeThemeButton extends StatelessWidget {
  const ChangeThemeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            tooltip: 'View Index',
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const InfoScreen()));
            },
            splashRadius: 25,
            icon: const Icon(Icons.info_outline),
          ),
        ),
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.light
            ? const Icon(Icons.wb_sunny_outlined)
            : const Icon(Icons.dark_mode_outlined),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Switch.adaptive(
            value: themeProvider.isDarkMode,
            onChanged: (value) {
              final provider =
                  Provider.of<ThemeProvider>(context, listen: false);
              provider.toggleTheme(value);
            },
          ),
        ),
      ],
    );
  }
}
